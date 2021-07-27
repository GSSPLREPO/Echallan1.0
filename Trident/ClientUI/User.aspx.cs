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
    public partial class User : PageBase
    {
        #region Declaration

        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        Controls objControls = new Controls();

        #endregion

        #region Page Base
        public User() : base(0)
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
                        if (dataTable.Contains("Users") == false)
                        {
                            HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                        }
                    }
                    ViewState["Mode"] = "Save";
                    BindGrid();
                    BindEmployeeRole();
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
        public void BindEmployeeRole()
        {
            try
            {
                ApplicationResult objResults = new EmployeeRoleBL().EmployeeRole_SelectAll(Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID].ToString()));
                if (objResults != null)
                {
                    DataTable dtEmpRole = objResults.resultDT;
                    if (dtEmpRole.Rows.Count > 0)
                    {
                        objControls.BindDropDown_ListBox(dtEmpRole, ddlEmpRole, "Name", "Id");
                    }
                    ddlEmpRole.Items.Insert(0, new ListItem("-Select-", "-1"));
                }
            }
            catch (Exception ex)
            {
                log.Error("BindEmployeeRole", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

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
                UserBO objUserBO = new UserBO();

                objUserBO.RoleId = Convert.ToInt32(ddlEmpRole.SelectedValue);
                objUserBO.HeadOfficeId = Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID].ToString());
                objUserBO.OtherOfficesId = Convert.ToInt32(Session[ApplicationSession.OTHEROFFICEID].ToString());
                objUserBO.Name = txtUserName.Text.Trim();
                objUserBO.Password = txtPwd.Text.Trim();
                int intEmployeeID = 0;
                if (ViewState["Mode"].ToString() == "Save")
                {
                    intEmployeeID = -1;
                }
                else if (ViewState["Mode"].ToString() == "Edit")
                {
                    intEmployeeID = Convert.ToInt32(ViewState["EmployeeID"].ToString());
                }

                string strMessage = string.Empty;

                if (ViewState["Mode"].ToString() == "Save")
                {
                    ApplicationResult objResultInsertion = new ApplicationResult();
                    objUserBO.CreatedDate = DateTime.UtcNow.AddHours(5.5);
                    objUserBO.CreatedBy = Convert.ToInt32(Session[ApplicationSession.USERID]);

                    objResultInsertion = new UserBL().User_Insert(objUserBO);
                    if (objResultInsertion != null)
                    {
                        if (objResultInsertion.resultDT.Rows.Count > 0)
                        {
                            strMessage = objResultInsertion.resultDT.Rows[0][0].ToString();
                            lblMsg.Visible = true;
                            if (strMessage == "Record saved successfully.")
                            {
                                lblMsg.Text = strMessage;
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

                    objUserBO.Id = Convert.ToInt32(ViewState["EmployeeID"].ToString());
                    objUserBO.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);
                    objUserBO.LastModifiedBy = Convert.ToInt32(Session[ApplicationSession.USERID]);

                    ApplicationResult objResultUpdation = new ApplicationResult();
                    objResultUpdation = new UserBL().User_Update(objUserBO);
                    if (objResultUpdation != null)
                    {
                        if (objResultUpdation.resultDT.Rows.Count > 0)
                        {
                            strMessage = objResultUpdation.resultDT.Rows[0][0].ToString();
                            lblMsg.Visible = true;
                            if (strMessage == "Record updated successfully.")
                            {
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
                ViewState["EmployeeID"] = null;
                gvEmployee.SelectedIndex = -1;
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
                ApplicationResult objResult = new UserBL().User_SelectAll(Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID].ToString()), Convert.ToInt32(Session[ApplicationSession.OTHEROFFICEID].ToString()));
                if (objResult != null)
                {
                    DataTable dtEmployee = objResult.resultDT;
                    if (dtEmployee.Rows.Count > 0)
                    {
                        gvEmployee.DataSource = dtEmployee;
                        gvEmployee.DataBind();
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

        protected void gvEmployee_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                ViewState["EmployeeID"] = Convert.ToInt32(e.CommandArgument.ToString());
                lblMsg.Visible = false;
                ClearAll();
                lblMsg.Visible = false;
                if (e.CommandName.ToString() == "Edit1")
                {
                    ViewState["Mode"] = "Edit";
                    ApplicationResult objResult = new UserBL().User_Select(Convert.ToInt32(ViewState["EmployeeID"].ToString()));
                    if (objResult != null)
                    {
                        DataTable dtResult = objResult.resultDT;
                        if (dtResult.Rows.Count > 0)
                        {
                            ddlEmpRole.SelectedValue = dtResult.Rows[0][UserBO.USER_ROLEID].ToString();

                            txtConfPwd.Attributes.Add("value", dtResult.Rows[0][UserBO.USER_PASSWORD].ToString());
                            txtPwd.Attributes.Add("value", dtResult.Rows[0][UserBO.USER_PASSWORD].ToString());
                            txtUserName.Text = dtResult.Rows[0][UserBO.USER_NAME].ToString();
                            ControlVisibility(false, true);
                        }
                    }
                }
                else if (e.CommandName.ToString() == "Delete1")
                {
                    ApplicationResult objResultDelete = new UserBL().User_Delete(Convert.ToInt32(e.CommandArgument.ToString()));
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

        protected void gvEmployee_PreRender(object sender, EventArgs e)
        {
            try
            {
                if (gvEmployee.Rows.Count <= 0) return;
                gvEmployee.UseAccessibleHeader = true;
                gvEmployee.HeaderRow.TableSection = TableRowSection.TableHeader;
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
                objControls.ClearForm(Master.FindControl("MainBody"));
                txtConfPwd.Attributes.Add("value", "");
                txtPwd.Attributes.Add("value", "");
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion
    }
}