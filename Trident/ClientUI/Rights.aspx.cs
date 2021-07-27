using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.Bo;
using Trident.Common;
using log4net;
using Trident.BL;
using System.Collections;
using System.Web;

namespace Trident.clientui
{
    public partial class Rights : PageBase
    {
        #region Declaration
        private static readonly ILog log =  LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Constructor
        public Rights() : base(0)
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
                    if (dataTable.Contains("Rights") == false)
                    {
                        HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                    }
                }
                RoleBind();
                BindGrid();
                ControlEnabilityMode(false, false);
            }
            catch (Exception ex)
            {
                log.Error("Page_Laod", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            } 
        }

        #region User Define Functions

        #region Role Bind in DropdownList
        private void RoleBind()
        {
            ApplicationResult objResult = new ApplicationResult();
            DataTable dtRole = new DataTable();
            objResult = new EmployeeRoleBL().EmployeeRole_SelectAll(Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID]));
            if (objResult != null)
            {
                dtRole = objResult.resultDT;
                if (dtRole.Rows.Count > 0)
                {
                    Controls objControls = new Controls();
                    objControls.BindDropDown_ListBox(dtRole, ddlRole, "Name", "ID");
                    ddlRole.Items.Insert(0, new ListItem("- Select Role Type -", "-1"));
                }
            }
        }
        #endregion

        #region Bind Grid
        public void BindGrid()
        {
            RoleRights_T_BL objRightsBl = new RoleRights_T_BL();
            ApplicationResult objResultRights = new ApplicationResult();

            objResultRights = objRightsBl.Rights_SelectAll();
            if (objResultRights != null)
            {
                if (objResultRights.resultDT.Rows.Count > 0)
                {
                    gvRights.DataSource = objResultRights.resultDT;
                    gvRights.DataBind();
                }
            }
        }
        #endregion

        #region Control Enable/Disable Mode
        private void ControlEnabilityMode(bool blRights, bool blSave)
        {
            gvRights.Enabled = blRights;
            btnSave.Enabled = blSave;
        }
        #endregion

        #endregion

        protected void gvRights_PreRender(object sender, EventArgs e)
        {
            if (gvRights.Rows.Count <= 0) return;
            gvRights.UseAccessibleHeader = true;
            gvRights.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                ApplicationResult objRightsResult = new ApplicationResult();
                RoleRights_T_BO objRightsBo = new RoleRights_T_BO();
                RoleRights_T_BL objRightsBl = new RoleRights_T_BL();
                objRightsBo.EmployeeRoleID = Convert.ToInt32(ddlRole.SelectedValue);
                objRightsBo.CreatedUserID = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID]);
                objRightsBo.CreatedDate = DateTime.UtcNow.AddHours(5.5);
                objRightsBo.LastModifiedUserID = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID]);
                objRightsBo.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);
                objRightsBo.IsDeleted = 0;
                ApplicationResult objResult = new ApplicationResult();
                objResult = new RoleRights_T_BL().Rights_Delete(Convert.ToInt32(ddlRole.SelectedValue), Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID]), DateTime.UtcNow.AddHours(5.5));
                if (objResult != null)
                {
                    foreach (GridViewRow gvRow in gvRights.Rows)
                    {
                        CheckBox cbAllow = (CheckBox)gvRow.FindControl("cbAllow");
                        if (cbAllow != null && cbAllow.Checked)
                        {
                            objRightsBo.RoleScreenID = Convert.ToInt32(gvRow.Cells[0].Text);
                            objRightsResult = objRightsBl.Rights_Insert(objRightsBo);
                            if (objRightsResult != null)
                            {
                                if (objRightsResult.status != ApplicationResult.CommonStatusType.SUCCESS)
                                {
                                    ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
                                }
                            }
                            else
                                throw new NullReferenceException();
                        }
                    }
                    if (objRightsResult != null)
                    {
                        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", objRightsResult.status == ApplicationResult.CommonStatusType.SUCCESS
                                ? "<script>alert('Record Saved Successfully.');</script>"
                                : "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Save Button", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }

        protected void ddlRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                foreach (GridViewRow gvrRights in gvRights.Rows)
                {
                    CheckBox cbAllow = (CheckBox)gvrRights.FindControl("cbAllow");
                    cbAllow.Checked = false;
                }
                if (ddlRole.SelectedValue == "-1")
                {
                    ControlEnabilityMode(false, false);
                }
                else
                {
                    ApplicationResult objRightsResult = new ApplicationResult();
                    RoleRights_T_BL objRightsBl = new RoleRights_T_BL();
                    objRightsResult = objRightsBl.Rights_Select(Convert.ToInt32(ddlRole.SelectedValue));
                    if (objRightsResult != null)
                    {
                        DataTable objRightsDt = objRightsResult.resultDT;
                        if (objRightsDt.Rows.Count > 0)
                        {
                            foreach (DataRow objRightsDr in objRightsDt.Rows)
                            {
                                foreach (GridViewRow gvrRights in gvRights.Rows)
                                {
                                    if (objRightsDr[RoleRights_T_BO.ROLERIGHTS_T_ROLESCREENID].ToString() == gvrRights.Cells[0].Text)
                                    {
                                        CheckBox cbAllow = (CheckBox)gvrRights.FindControl("cbAllow");
                                        cbAllow.Checked = true;
                                    }
                                }
                            }
                        }
                        ControlEnabilityMode(true, true);
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Role Select Event Change", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }
    }
}