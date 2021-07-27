using log4net;
using System;
using System.Web.UI;
using Trident.BL;
using Trident.Bo;
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class UserProfile : PageBase
    {
        #region Declaration

        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        Controls objControls = new Controls();

        #endregion

        #region Page Base
        public UserProfile() : base(0)
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
                    ViewState["Mode"] = "Edit";
                    txtUserName.Text = Session[ApplicationSession.USERNAME].ToString();
                    ViewState["EmployeeID"] = Session[ApplicationSession.USERID].ToString();
                }
            }
            catch (Exception ex)
            {
                log.Error("User Profile Page_Load", ex);
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

                if (ViewState["Mode"].ToString() == "Edit")
                {

                    objUserBO.Id = Convert.ToInt32(ViewState["EmployeeID"].ToString());
                    objUserBO.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);
                    objUserBO.LastModifiedBy = Convert.ToInt32(Session[ApplicationSession.USERID]);

                    ApplicationResult objResultUpdation = new ApplicationResult();
                    objResultUpdation = new UserBL().User_Credentials_Update(objUserBO);
                    if (objResultUpdation != null)
                    {
                        if (objResultUpdation.resultDT.Rows.Count > 0)
                        {
                            strMessage = objResultUpdation.resultDT.Rows[0][0].ToString();
                            lblMsg.Visible = true;
                            if (strMessage == "Record updated successfully.")
                            {
                                lblMsg.Text = strMessage;
                                ViewState["Mode"] = "Edit";
                                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Record updated successfully.');</script>");
                                Response.Redirect("HomePage.aspx", false);
                            }
                            else
                            {
                                lblMsg.Text = strMessage;
                                ViewState["Mode"] = "Edit";
                                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('"+ strMessage + "');</script>");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Error IN User Profile", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #endregion
    }
}