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
using Trident.Bo;
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class Offenses : PageBase
    {
        #region Declaration

        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        Controls objControls = new Controls();

        #endregion

        #region Constructor
        public Offenses() : base(0)
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
            objResult = new OffensesBL().Offenses_SelectAll();
            if (objResult != null)
            {
                objEmployeeRoledt = objResult.resultDT;
                if (objEmployeeRoledt.Rows.Count > 0)
                {
                    gvOffenses.DataSource = objEmployeeRoledt;
                    gvOffenses.DataBind();
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
                    if (dataTable.Contains("Offenses") == false)
                    {
                        HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                    }
                }
                PanelVisibility(blDivGrid: true, blDivPanel: false);
                BindSection();
                BindGrid();
                ViewState["Mode"] = "Save";
                ViewState["OffenseId"] = -1;
            }
            catch (Exception ex)
            {
                log.Error("Page_Load", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }

        public void BindSection()
        {
            try
            {
                ApplicationResult objResults = new MVActBL().MVAct_Select_Section();
                if (objResults != null)
                {
                    DataTable dtEmpRole = objResults.resultDT;
                    if (dtEmpRole.Rows.Count > 0)
                    {
                        objControls.BindDropDown_ListBox(dtEmpRole, ddlSection, "Name", "Id");
                    }
                    ddlSection.Items.Insert(0, new ListItem("-Select-", "-1"));
                }
            }
            catch (Exception ex)
            {
                log.Error("BindEmployeeRole", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

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
            ViewState["OffenseId"] = -1;
            PanelVisibility(blDivGrid: false, blDivPanel: true);
        }

        protected void gvOffenses_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                ApplicationResult objResult = new ApplicationResult();
                ViewState["OffenseId"] = e.CommandArgument;
                if (e.CommandName == "Edit1")
                {
                    objResult = new OffensesBL().Offenses_Select(Convert.ToInt32(ViewState["OffenseId"].ToString()));
                    DataTable objEmployeeRoledt = new DataTable();
                    if (objResult != null)
                    {
                        objEmployeeRoledt = objResult.resultDT;
                        if (objEmployeeRoledt.Rows.Count > 0)
                        {
                            txtName.Text = objEmployeeRoledt.Rows[0][OffensesBO.OFFENSES_NAME].ToString();
                            ddlSection.Text = objEmployeeRoledt.Rows[0][OffensesBO.OFFENSES_APPLICABLESECTIONS].ToString();
                            txtFirstOffense.Text = objEmployeeRoledt.Rows[0]["FirstOffense"].ToString();
                            txtSubOffense.Text = objEmployeeRoledt.Rows[0]["SubsequentOffense"].ToString();
                            //txtDescription.Text = objEmployeeRoledt.Rows[0][MVActBO.MVACT_DESCRIPTION].ToString();
                            ViewState["Mode"] = "Edit";
                            PanelVisibility(blDivGrid: false, blDivPanel: true);
                        }
                    }
                }
                else if (e.CommandName == "Delete1")
                {
                    objResult = new OffensesBL().Offenses_Delete(Convert.ToInt32(ViewState["OffenseId"].ToString()));
                    if (objResult != null)
                    {
                        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", objResult.resultDT.Rows[0]["MSG"].ToString() == "1"
                        ? "<script>alert('Record Deleted Successfully.');</script>"
                        : "<script>alert('"+ objResult.resultDT.Rows[0]["MSG"].ToString() + "');</script>");
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

        protected void gvOffenses_PreRender(object sender, EventArgs e)
        {
            if (gvOffenses.Rows.Count <= 0) return;
            gvOffenses.UseAccessibleHeader = true;
            gvOffenses.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                ApplicationResult objResult = new ApplicationResult();
                OffensesBO objEmployeeRoleBo = new OffensesBO();
                objEmployeeRoleBo.Name = txtName.Text;
                objEmployeeRoleBo.IsDeleted = false;
                objEmployeeRoleBo.ApplicableSections = ddlSection.SelectedValue;
                if (ViewState["Mode"].ToString() == "Save")
                {
                    objEmployeeRoleBo.CreatedDate = DateTime.UtcNow.AddHours(5.5);
                    objEmployeeRoleBo.CreatedBy = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID].ToString());
                    objEmployeeRoleBo.LastModifiedBy = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID].ToString());
                    objEmployeeRoleBo.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);
                    objResult = new OffensesBL().Offenses_Insert(objEmployeeRoleBo, txtFirstOffense.Text, txtSubOffense.Text);
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
                    objEmployeeRoleBo.OffenseId = Convert.ToInt32(ViewState["OffenseId"].ToString());
                    objResult = new OffensesBL().Offenses_Update(objEmployeeRoleBo, txtFirstOffense.Text, txtSubOffense.Text);
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
    }
}