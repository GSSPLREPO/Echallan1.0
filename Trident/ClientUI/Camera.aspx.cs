using log4net;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.BL;
using Trident.Bo;
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class Camera : PageBase
    {
        #region Declaration

        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        Controls objControls = new Controls();

        #endregion

        #region Page Base
        public Camera() : base(0)
        {

        }
        #endregion

        #region Page Load Event

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    if (Session["ScreenRights"] != null)
                    {
                        Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                        if (dataTable.Contains("Camera") == false)
                        {
                            HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                        }
                    }
                    ViewState["Mode"] = "Save";
                    BindGrid();
                    BindUnits();
                }
            }
            catch (Exception ex)
            {
                log.Error("Page_Load", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion

        #region BindEmployeeRole Method
        public void BindUnits()
        {
            try
            {
                ApplicationResult objResults = new CameraBL().Units_SelectAll();
                if (objResults != null)
                {
                    DataTable dtUnits = objResults.resultDT;
                    if (dtUnits.Rows.Count > 0)
                    {
                        objControls.BindDropDown_ListBox(dtUnits, ddlUnit, "UnitCode", "UnitID");
                    }
                    ddlUnit.Items.Insert(0, new ListItem("-Select-", "-1"));
                }
            }
            catch (Exception ex)
            {
                log.Error("BindEmployeeRole", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region Bind Police Station Method
        public void BindPoliceStation(int unitId)
        {
            try
            {
                ApplicationResult objResults = new CameraBL().PoliceStation_SelectByUnitId(unitId);
                if (objResults != null)
                {
                    DataTable dtUnits = objResults.resultDT;
                    if (dtUnits.Rows.Count > 0)
                    {
                        objControls.BindDropDown_ListBox(dtUnits, ddlPs, "PoliceStationCode", "PolicestationID");
                    }
                    ddlPs.Items.Insert(0, new ListItem("-Select-", "-1"));
                }
            }
            catch (Exception ex)
            {
                log.Error("BindEmployeeRole", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion


        public void BindPoints(int psId)
        {
            try
            {
                ApplicationResult objResults = new CameraBL().Points_SelectByPoliceStationId(psId);
                if (objResults != null)
                {
                    DataTable dtUnits = objResults.resultDT;
                    if (dtUnits.Rows.Count > 0)
                    {
                        objControls.BindDropDown_ListBox(dtUnits, ddlPoints, "PointCode", "PointID");
                    }
                    ddlPoints.Items.Insert(0, new ListItem("-Select-", "-1"));
                }
            }
            catch (Exception ex)
            {
                log.Error("BindEmployeeRole", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #region Add New Button Click Event

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            try
            {
                ClearAll();
                lblMsg.Visible = false;
                ControlVisibility(false, true);
            }
            catch (Exception ex)
            {
                log.Error("btnAddNew_Click", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion

        #region Save Button Click Event

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                CameraBO objCameraBo = new CameraBO();
                objCameraBo.PointId = Convert.ToInt32(ddlPoints.SelectedValue);
                objCameraBo.Name = txtName.Text;
                objCameraBo.Make = txtMake.Text;
                objCameraBo.IpAddress = txtIp.Text;
                objCameraBo.Latitude = Convert.ToDouble(txtLatitude.Text);
                objCameraBo.Longitude = Convert.ToDouble(txtLongitude.Text);

                int intCameraId = 0;
                if (ViewState["Mode"].ToString() == "Save")
                {
                    intCameraId = -1;
                }
                else if (ViewState["Mode"].ToString() == "Edit")
                {
                    intCameraId = Convert.ToInt32(ViewState["CameraId"].ToString());
                }

                string strMessage = string.Empty;

                // Staging URL
                var isStaging = System.Configuration.ConfigurationSettings.AppSettings["IsStagingURL"];
                dynamic client;
                if(isStaging == "true")
                {
                   client = new Staging.TMSeChallanImplClient();
                }
                else
                {
                    client = new ITMSeChallanImplService.TMSeChallanImplClient();
                }
               

                if (ViewState["Mode"].ToString() == "Save")
                {
                    ApplicationResult objResultInsertion = new ApplicationResult();
                    objCameraBo.CreatedDate = DateTime.UtcNow.AddHours(5.5);
                    objCameraBo.CreatedBy = Convert.ToInt32(Session[ApplicationSession.USERID]);

                    //generateCameraPID


                    objResultInsertion = new CameraBL().Camera_Insert(objCameraBo);
                    if (objResultInsertion != null)
                    {
                        if (objResultInsertion.resultDT.Rows.Count > 0)
                        {

                            int camId = Convert.ToInt32(objResultInsertion.resultDT.Rows[0][0]);
                            lblMsg.Visible = true;
                            if (camId > 0)
                            {
                                var res = client.generateCameraPID(camId.ToString(), txtIp.Text, ddlUnit.SelectedValue.ToString(), ddlPs.SelectedValue.ToString(),
                                     ddlPoints.SelectedValue.ToString(), ddlPoints.SelectedValue.ToString(), "", "", "", "", "");
                                lblMsg.Text = "Record saved successfully.";
                                ClearAll();
                                BindGrid();
                                ViewState["Mode"] = "Save";
                            }
                            else
                            {
                                lblMsg.Text = strMessage;
                            }
                        }
                    }
                }
                else if (ViewState["Mode"].ToString() == "Edit")
                {
                    objCameraBo.Id = Convert.ToInt32(ViewState["CameraId"].ToString());
                    objCameraBo.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);
                    objCameraBo.LastModifiedBy = Convert.ToInt32(Session[ApplicationSession.USERID]);

                    ApplicationResult objResultUpdation = new ApplicationResult();
                    objResultUpdation = new CameraBL().Camera_Update(objCameraBo);
                    if (objResultUpdation != null)
                    {
                        if (objResultUpdation.resultDT.Rows.Count > 0)
                        {
                            strMessage = objResultUpdation.resultDT.Rows[0][0].ToString();
                            lblMsg.Visible = true;
                            if (strMessage == "Record updated successfully.")
                            {
                               
                                var res = client.generateCameraPID(ViewState["CameraId"].ToString(), txtIp.Text, ddlUnit.SelectedValue.ToString(), ddlPs.SelectedValue.ToString(),
                                     ddlPoints.SelectedValue.ToString(), ddlPoints.SelectedValue.ToString(), "", "", "", "", "");
                                lblMsg.Text = strMessage;
                                ClearAll();
                                BindGrid();
                                ViewState["Mode"] = "Save";
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion

        #region View List Button Click Event

        protected void btnViewList_Click(object sender, EventArgs e)
        {
            try
            {
                ClearAll();
                lblMsg.Visible = false;
                ViewState["CameraId"] = null;
                gvCamera.SelectedIndex = -1;
                ViewState["Mode"] = "Save";
                ControlVisibility(true, false);
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion

        #region BindGrid
        public void BindGrid()
        {
            try
            {
                ApplicationResult objResult = new CameraBL().Camera_SelectAll();

                if (objResult != null)
                {
                    DataTable dtCamera = objResult.resultDT;
                    if (dtCamera.Rows.Count > 0)
                    {
                        gvCamera.DataSource = dtCamera;
                        gvCamera.DataBind();
                        ControlVisibility(true, false);
                    }
                    else
                    {
                        ControlVisibility(false, true);
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region Row Command Event

        protected void gvCamera_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                ViewState["CameraId"] = Convert.ToInt32(e.CommandArgument.ToString());
                lblMsg.Visible = false;
                ClearAll();
                lblMsg.Visible = false;
                if (e.CommandName.ToString() == "Edit1")
                {
                    ViewState["Mode"] = "Edit";
                    ApplicationResult objResult = new CameraBL().Camera_SelectById(Convert.ToInt32(ViewState["CameraId"].ToString()));
                    if (objResult != null)
                    {
                        DataTable dtResult = objResult.resultDT;
                        if (dtResult.Rows.Count > 0)
                        {
                            txtName.Text = dtResult.Rows[0][CameraBO.CAMERA_Name].ToString();
                            txtMake.Text = dtResult.Rows[0][CameraBO.CAMERA_Make].ToString();
                            txtIp.Text = dtResult.Rows[0][CameraBO.CAMERA_IpAddress].ToString();
                            txtLatitude.Text= dtResult.Rows[0][CameraBO.CAMERA_Latitude].ToString();
                            txtLongitude.Text = dtResult.Rows[0][CameraBO.CAMERA_Logitude].ToString();

                            BindUnits();
                            ddlUnit.SelectedValue = dtResult.Rows[0]["UnitID"].ToString();
                            BindPoliceStation(Convert.ToInt32(dtResult.Rows[0]["UnitID"].ToString()));
                            ddlPs.SelectedValue= dtResult.Rows[0]["PoliceStationID"].ToString();
                            BindPoints(Convert.ToInt32(dtResult.Rows[0]["PoliceStationID"].ToString()));
                            ddlPoints.SelectedValue = (dtResult.Rows[0]["PointId"].ToString());

                            ControlVisibility(false, true);
                        }
                    }
                }
                else if (e.CommandName.ToString() == "Delete1")
                {
                    ApplicationResult objResultDelete = new CameraBL().Camera_Delete(Convert.ToInt32(e.CommandArgument.ToString()));
                    if (objResultDelete.status == ApplicationResult.CommonStatusType.SUCCESS)
                    {
                        lblMsg.Visible = true;
                        lblMsg.Text = "Record deleted successfully.";
                        ClearAll();
                        BindGrid();
                        ViewState["Mode"] = "Save";
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion

        #region Pre Render Event

        protected void gvCamera_PreRender(object sender, EventArgs e)
        {
            try
            {
                if (gvCamera.Rows.Count <= 0) return;
                gvCamera.UseAccessibleHeader = true;
                gvCamera.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion



        #region ControlVisible

        private void ControlVisibility(bool Isgridvisible, bool Ispanelvisible)
        {
            try
            {
                divGrid.Visible = Isgridvisible;
                divPanel.Visible = Ispanelvisible;
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion

        #region Clear all

        private void ClearAll()
        {
            try
            {
                ddlPs.Items.Clear();
                ddlPoints.Items.Clear();
                objControls.ClearForm(Master.FindControl("MainBody"));
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion

        protected void ddlUnit_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlUnit.SelectedValue != "-1")
            {
                BindPoliceStation(Convert.ToInt32(ddlUnit.SelectedValue));
            }
        }

        protected void ddlPs_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlPs.SelectedValue != "-1")
            {
                BindPoints(Convert.ToInt32(ddlPs.SelectedValue));
            }
        }
    }
}