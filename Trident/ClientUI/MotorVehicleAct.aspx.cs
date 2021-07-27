using log4net;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.Bl;
using Trident.BL;
using Trident.Bo;
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class MotorVehicleAct : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Constructor
        public MotorVehicleAct() : base(0)
        {

        }
        #endregion

        #region Panel Visibility Method
        private void PanelVisibility(bool blDivGrid, bool blDivPanel)
        {
            divGrid.Visible = blDivGrid;
            divPanel.Visible = blDivPanel;
        }
        #endregion

        #region BindGrid
        private void BindGrid()
        {
            ApplicationResult objResult = new ApplicationResult();
            DataTable objEmployeeRoledt = new DataTable();
            objResult = new MVActBL().MVAct_SelectAll();
            if (objResult != null)
            {
                objEmployeeRoledt = objResult.resultDT;
                if (objEmployeeRoledt.Rows.Count > 0)
                {
                    gvMVAct.DataSource = objEmployeeRoledt;
                    gvMVAct.DataBind();
                    PanelVisibility(blDivGrid: true, blDivPanel: false);
                }
                else
                {
                    PanelVisibility(blDivGrid: false, blDivPanel: true);
                }
            }
        }
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            try
            {
                if (Session["ScreenRights"] != null)
                {
                    Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                    if (dataTable.Contains("MVAct") == false)
                    {
                        HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                    }
                }
                PanelVisibility(blDivGrid: true, blDivPanel: false);
                BindGrid();
                ViewState["Mode"] = "Save";
                ViewState["RoleID"] = -1;
            }
            catch (Exception ex)
            {
                log.Error("Page_Load", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }

        #region Clear All Control
        private void ClearAll()
        {
            Controls objcontrol = new Controls();
            objcontrol.ClearForm(Master.FindControl("MainBody"));
        }
        #endregion

        #region btnAddNew Click Event
        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ClearAll();
            ViewState["Mode"] = "Save";
            ViewState["MVActID"] = -1;
            PanelVisibility(blDivGrid: false, blDivPanel: true);
        }
        #endregion

        protected void gvMVAct_PreRender(object sender, EventArgs e)
        {
            if (gvMVAct.Rows.Count <= 0) return;
            gvMVAct.UseAccessibleHeader = true;
            gvMVAct.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void gvMVAct_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                ApplicationResult objResult = new ApplicationResult();
                ViewState["MVActId"] = e.CommandArgument;
                if (e.CommandName == "Edit1")
                {
                    objResult = new MVActBL().MVAct_Select(Convert.ToInt32(ViewState["MVActId"].ToString()));
                    DataTable objEmployeeRoledt = new DataTable();
                    if (objResult != null)
                    {
                        objEmployeeRoledt = objResult.resultDT;
                        if (objEmployeeRoledt.Rows.Count > 0)
                        {
                            txtSection.Text = objEmployeeRoledt.Rows[0][MVActBO.MVACT_SECTION].ToString();
                            txtTitle.Text = objEmployeeRoledt.Rows[0][MVActBO.MVACT_TITLE].ToString();
                            txtDescription.Text = objEmployeeRoledt.Rows[0][MVActBO.MVACT_DESCRIPTION].ToString();
                            ViewState["Mode"] = "Edit";
                            PanelVisibility(blDivGrid: false, blDivPanel: true);
                        }
                    }
                }
                else if (e.CommandName == "Delete1")
                {
                    objResult = new MVActBL().MVAct_Delete(Convert.ToInt32(ViewState["MVActId"].ToString()));
                    if (objResult != null)
                    {
                        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", objResult.status == ApplicationResult.CommonStatusType.SUCCESS
                        ? "<script>alert('Record Deleted Successfully.');</script>"
                        : "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
                        BindGrid();
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("GridView Command", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }

        protected void btnViewList_Click(object sender, EventArgs e)
        {
            try
            {
                BindGrid();
            }
            catch (Exception ex)
            {
                log.Error("ViewList Button", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                ApplicationResult objResult = new ApplicationResult();
                MVActBO objEmployeeRoleBo = new MVActBO();
                objEmployeeRoleBo.Section = txtSection.Text;
                objEmployeeRoleBo.IsDeleted = false;
                objEmployeeRoleBo.Description = txtDescription.Text;
                objEmployeeRoleBo.Title = txtTitle.Text;
                if (ViewState["Mode"].ToString() == "Save")
                {
                    objEmployeeRoleBo.CreatedDate = DateTime.UtcNow.AddHours(5.5);
                    objEmployeeRoleBo.CreatedBy = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID].ToString());
                    objEmployeeRoleBo.LastModifiedBy = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID].ToString());
                    objEmployeeRoleBo.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);
                    objResult = new MVActBL().MVAct_Insert(objEmployeeRoleBo);
                    if (objResult != null)
                    {
                        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", objResult.status == ApplicationResult.CommonStatusType.SUCCESS
                        ? "<script>alert('Record Saved Successfully.');</script>"
                        : "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
                        if (objResult.status == ApplicationResult.CommonStatusType.SUCCESS)
                        {
                            btnViewList_Click(sender, e);
                        }
                    }
                }
                else if (ViewState["Mode"].ToString() == "Edit")
                {
                    objEmployeeRoleBo.LastModifiedBy = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID].ToString());
                    objEmployeeRoleBo.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);
                    objEmployeeRoleBo.Id = Convert.ToInt32(ViewState["MVActId"].ToString());
                    objResult = new MVActBL().MVAct_Update(objEmployeeRoleBo);
                    if (objResult != null)
                    {
                        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", objResult.status == ApplicationResult.CommonStatusType.SUCCESS
                        ? "<script>alert('Record Updated Successfully.');</script>"
                        : "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
                        if (objResult.status == ApplicationResult.CommonStatusType.SUCCESS)
                        {
                            btnViewList_Click(sender, e);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Save Button", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }
    }
}