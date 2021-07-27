using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.Common;
using log4net;
using Trident.BL;
using Trident.Bo;
using System.Collections;
using System.Web;

namespace Trident.clientui
{
    public partial class Role : PageBase
    {

        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Constructor
        public Role() : base(0)
        {

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
                    if (dataTable.Contains("Role") == false)
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

        #region UserDefine Mthods
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
            objResult = new EmployeeRoleBL().EmployeeRole_SelectAll(Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID]));
            if (objResult != null)
            {
                objEmployeeRoledt = objResult.resultDT;
                if (objEmployeeRoledt.Rows.Count > 0)
                {
                    gvEmployeeRole.DataSource = objEmployeeRoledt;
                    gvEmployeeRole.DataBind();
                    PanelVisibility(blDivGrid: true, blDivPanel: false);
                }
                else
                {
                    PanelVisibility(blDivGrid: false, blDivPanel: true);
                }
            }
        }
        #endregion

        #region Clear All Control
        private void ClearAll()
        {
            Controls objcontrol = new Controls();
            objcontrol.ClearForm(Master.FindControl("MainBody"));
        }
        #endregion

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ClearAll();
            ViewState["Mode"] = "Save";
            ViewState["RoleID"] = -1;
            PanelVisibility(blDivGrid: false, blDivPanel: true);
        }
        #endregion

        protected void gvEmployeeRole_PreRender(object sender, EventArgs e)
        {
            if (gvEmployeeRole.Rows.Count <= 0) return;
            gvEmployeeRole.UseAccessibleHeader = true;
            gvEmployeeRole.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void gvEmployeeRole_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                ApplicationResult objResult = new ApplicationResult();
                ViewState["RoleID"] = e.CommandArgument;
                if (e.CommandName == "Edit1")
                {
                    objResult = new EmployeeRoleBL().EmployeeRole_Select(Convert.ToInt32(ViewState["RoleID"].ToString()));
                    DataTable objEmployeeRoledt = new DataTable();
                    if (objResult != null)
                    {
                        objEmployeeRoledt = objResult.resultDT;
                        if (objEmployeeRoledt.Rows.Count > 0)
                        {
                            txtName.Text = objEmployeeRoledt.Rows[0][EmployeeRoleBO.ROLES_NAME].ToString();
                            txtDescription.Text = objEmployeeRoledt.Rows[0][EmployeeRoleBO.ROLES_DESCRIPTION].ToString();
                            ViewState["Mode"] = "Edit";
                            PanelVisibility(blDivGrid: false, blDivPanel: true);
                        }
                    }
                }
                else if (e.CommandName == "Delete1")
                {
                    objResult = new EmployeeRoleBL().EmployeeRole_Delete(Convert.ToInt32(ViewState["RoleID"].ToString()), Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID].ToString()), DateTime.UtcNow.AddHours(5.5).ToString());
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
                EmployeeRoleBO objEmployeeRoleBo = new EmployeeRoleBO();
                objEmployeeRoleBo.Name = txtName.Text;
                objEmployeeRoleBo.IsDeleted = 0;
                objEmployeeRoleBo.Description = txtDescription.Text;
                objEmployeeRoleBo.HeadOfficeId = Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID].ToString());
                if (ViewState["Mode"].ToString() == "Save")
                {
                    objEmployeeRoleBo.CreatedDate = DateTime.UtcNow.AddHours(5.5);
                    objEmployeeRoleBo.CreatedBy = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID].ToString());
                    objEmployeeRoleBo.LastModifiedBy = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID].ToString());
                    objEmployeeRoleBo.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);
                    objResult = new EmployeeRoleBL().EmployeeRole_Insert(objEmployeeRoleBo);
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
                    objEmployeeRoleBo.Id = Convert.ToInt32(ViewState["RoleID"].ToString());
                    objResult = new EmployeeRoleBL().EmployeeRole_Update(objEmployeeRoleBo);
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