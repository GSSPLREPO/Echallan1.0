using Trident.BL;
using Trident.Bo;
using Trident.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.DataAccess;
using log4net;
using System.Web.Services;
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using Newtonsoft.Json;
using Trident.Bo;
using System.Collections;

namespace Trident
{
    public partial class Default : System.Web.UI.Page
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        //private IOrganisationServices _organisationServices;
        //private IBranchServices _branchServices;
        //private readonly UnitOfWork _unitOfWork;
        #endregion

        #region Page Load Event
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Request.QueryString["SessionMode"] == "Logout")
            {
                lblMsg.Text = "Session Out!! Please login again.";
                Session.Abandon();
                Session.Clear();
                FormsAuthentication.SignOut();
            }
            if (Request.QueryString["Logout"] == "Success")
            {
                lblMsg.Text = "You are Successfully Logout";
                PageBase.intRoleID = 0;
                Session.Abandon();
                Session.Clear();
                FormsAuthentication.SignOut();
            }
        }
        #endregion

        #region Button Login
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                //_organisationServices = new OrganisationServices();
                //_organisationServices.GetAllOrganisations();
                //_branchServices=new BranchServices();
                //var a = _branchServices.GetAllBranches();
                //_organisationServices.GetAllOrganisations();
                //OrganisationServices objServices = new OrganisationServices(_unitOfWork);
                //objServices.GetAllOrganisations();

                ApplicationResult objResult = new ApplicationResult();

                objResult = new EmployeeBL().Employee_M_CheckForLogin(txtUserName.Text.Trim(), txtPassword.Text.Trim());
                if (objResult != null)
                {
                    if (objResult.resultDS.Tables[0].Rows.Count > 0)
                    {
                        Session[ApplicationSession.EMPLOYEEID] = objResult.resultDS.Tables[0].Rows[0][UserBO.USER_ID].ToString();
                        Session[ApplicationSession.USERID] = objResult.resultDS.Tables[0].Rows[0][UserBO.USER_ID].ToString();
                        Session[ApplicationSession.OTHEROFFICEID] = objResult.resultDS.Tables[0].Rows[0][UserBO.USER_OTHEROFFICESID].ToString();
                        //if (objResult.resultDT.Rows[0][EmployeeBO.EMPLOYEE_EMPLOYEEID].ToString() == "1")
                        //{
                        //    Session[ApplicationSession.ORGANISATIONID] = 1;
                        //    Session[ApplicationSession.ORGANISATIONNAME] = "Charotar Gas Sahakari Mandali Ltd.";

                        //}
                        //else
                        //{
                        //    Session[ApplicationSession.ORGANISATIONID] = objResult.resultDT.Rows[0][EmployeeBO.EMPLOYEE_ORGANISATIONID].ToString();
                        //    Session[ApplicationSession.ORGANISATIONNAME] = objResult.resultDT.Rows[0][OrganisationBO.ORGANISATION_NAME].ToString();
                        //}
                        Session[ApplicationSession.HEADOFFICEID] = objResult.resultDS.Tables[0].Rows[0][UserBO.USER_ORGANISATIONID].ToString();
                        Session[ApplicationSession.USERNAME] = objResult.resultDS.Tables[0].Rows[0][UserBO.USER_NAME].ToString();
                        Session[ApplicationSession.USERROLEID] = objResult.resultDS.Tables[0].Rows[0][UserBO.USER_ROLEID].ToString();
                        Session["DueDays"] = objResult.resultDS.Tables[0].Rows[0]["DueDays"].ToString();
                        //-------------- Static ----------------------------------------
                        Session[ApplicationSession.ORGANISATIONNAME] = "Berhampur Police";
                        Session[ApplicationSession.ADDRESS] = "Odisha";
                        if (objResult.resultDS.Tables[1].Rows.Count > 0)
                        {
                            Hashtable hsRights = new Hashtable();
                            Hashtable hsScreenRights = new Hashtable();
                            for (int i = 0; i < objResult.resultDS.Tables[1].Rows.Count; i++)
                            {
                                var vrDisplayName = objResult.resultDS.Tables[1].Rows[i]["DisplayName"].ToString() + ", " + objResult.resultDS.Tables[1].Rows[i]["Menu"].ToString();
                                hsRights.Add(i, vrDisplayName);
                                hsScreenRights.Add(objResult.resultDS.Tables[1].Rows[i]["DisplayName"].ToString(), objResult.resultDS.Tables[1].Rows[i]["DisplayName"].ToString());
                            }
                            Session["rights"] = hsRights;
                            Session["ScreenRights"] = hsScreenRights;
                        }
                        //Response.Redirect("clientui/CRODashboard.aspx", false);
                        Response.Redirect("clientui/HomePage.aspx", false);
                    }
                    else
                    {
                        lblMsg.Text = "Invalid Username or Password";
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Login", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }
        #endregion
    }
}