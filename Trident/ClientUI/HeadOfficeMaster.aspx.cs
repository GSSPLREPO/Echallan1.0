using log4net;
using System;
using System.Collections;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.BL;
using Trident.Bo;
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class HeadOfficeMaster : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public HeadOfficeMaster()
            : base(0)
        {

        }
        #endregion

        #region page load
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack) return;

            if (!Page.IsPostBack)
            {
                if (Session["ScreenRights"] != null)
                {
                    Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                    if (dataTable.Contains("HeadOffice") == false)
                    {
                        HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                    }
                }
                BindHeadOfficeGrid();
            }

        }
        #endregion

        #region bind grid
        public void BindHeadOfficeGrid()
        {
            try
            {
                ApplicationResult objResult = new HeadOfficeBL().HeadOffice_SelectAll();
                if (objResult != null)
                {
                    if (objResult.resultDT.Rows.Count > 0)
                    {
                        gvHeadOffice.DataSource = objResult.resultDT;
                        gvHeadOffice.DataBind();
                        ControlVisibility(true, false);
                    }
                    else
                    {
                        ControlVisibility(true, false);
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

        #region row command event
        protected void gvHeadOffice_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.ToString() == "Edit1")
                {
                    ViewState["Id"] = Convert.ToInt32(e.CommandArgument.ToString());
                    ApplicationResult objResult = new HeadOfficeBL().HeadOffice_Select(Convert.ToInt32(ViewState["Id"].ToString()));

                    if (objResult != null)
                    {
                        if (objResult.resultDT.Rows.Count > 0)
                        {
                            txtName.Text = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_NAME].ToString();
                            txtAddress.Text = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_ADDRESS].ToString();
                            txtState.Text = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_STATE].ToString();
                            txtCity.Text = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_CITY].ToString();
                            txtEmail.Text = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_EMAIL].ToString();
                            txtMobileNo.Text = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_MOBILENO].ToString();
                            txtFaxNo.Text = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_FAXNO].ToString();
                            ViewState["Logo"] = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_LOGO].ToString();
                            txtDueDays.Text = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_DUEDAYS].ToString();
                            txtChallanAbbreviation.Text = objResult.resultDT.Rows[0][HeadOfficeBO.HEAD_OFFICE_CHALLANABBREVIATION].ToString();

                            if (ViewState["Logo"] != null)
                            {
                                imgCLogo.ImageUrl = "../images/" + ViewState["Logo"].ToString();
                            }
                            else
                            {
                                imgCLogo.ImageUrl = "~/Images/NoImage.jpg";
                            }
                            ControlVisibility(false, true);
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

        #region Save Button Click Event
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {

                if (ViewState["Id"] != null)
                {
                    HeadOfficeBO objHeadOfficeBO = new HeadOfficeBO();
                    objHeadOfficeBO.Name = txtName.Text;
                    objHeadOfficeBO.Address = txtAddress.Text;
                    objHeadOfficeBO.State = txtState.Text;
                    objHeadOfficeBO.City = txtCity.Text;
                    objHeadOfficeBO.Email = txtEmail.Text;
                    objHeadOfficeBO.MobileNo = txtMobileNo.Text;
                    objHeadOfficeBO.FaxNo = txtFaxNo.Text;
                    objHeadOfficeBO.DueDays = Convert.ToInt32(txtDueDays.Text);
                    objHeadOfficeBO.ChallanAbbreviation = txtChallanAbbreviation.Text;
                    objHeadOfficeBO.LastModifiedBy = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID]);
                    objHeadOfficeBO.Id = Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID]);

                    if (FULogo.HasFile)
                    {
                        #region document upload

                        string Extension;
                        Extension = Path.GetExtension(FULogo.FileName.ToLower());
                        string strFileName = FULogo.FileName.Replace(' ', '_');
                        if (Extension == ".jpg" || Extension == ".jpeg" || Extension == ".gif" || Extension == ".png")
                        {
                            string filePath = Server.MapPath("../images/") + DateTime.UtcNow.AddHours(5.5).ToString("ddMMyy_") + DateTime.UtcNow.AddHours(5.5).ToString("HH") + "_" + DateTime.Now.ToString("mm") + "_" + strFileName;
                            FULogo.PostedFile.SaveAs(filePath);
                            objHeadOfficeBO.Logo = DateTime.UtcNow.AddHours(5.5).ToString("ddMMyy_") + DateTime.UtcNow.AddHours(5.5).ToString("HH") + "_" + DateTime.Now.ToString("mm") + "_" + strFileName;
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('File format not supported.');</script>");
                        }

                        #endregion
                    }
                    else
                    {
                        objHeadOfficeBO.Logo = ViewState["Logo"].ToString();
                    }

                    ApplicationResult objResult = new HeadOfficeBL().HeadOffice_Update(objHeadOfficeBO);
                    if (objResult != null)
                    {
                        BindHeadOfficeGrid();
                        objControls.ClearForm(Master.FindControl("MainBody"));
                        ViewState["Id"] = null;
                        ViewState["Logo"] = null;
                        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Record Updated Successfully.');</script>");
                    }
                    ControlVisibility(true, false);
                }
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
