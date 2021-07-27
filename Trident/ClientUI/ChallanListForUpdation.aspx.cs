using log4net;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.Bl;
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class ChallanListForUpdation : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public ChallanListForUpdation() : base(0)
        {

        }
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    //--------------- For Check Rights ----------------------
                    if (Session["ScreenRights"] != null)
                    {
                        Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                        if (dataTable.Contains("ChallanForUpdation") == false)
                        {
                            HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                        }
                    }
                    hfOrganisationId.Value = Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID]).ToString();
                    hfEmployeeId.Value = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID]).ToString();
                    // BindCRODashboard();
                    //ViewState["Mode"] = "Save";
                }
            }
            catch (Exception ex)
            {
                log.Error("Page_Load", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }

        #region GetCRODashboard webmethod for bind Grid
        [WebMethod]
        public static string[] GetListForUpdation(int OrganisationId)
        {
            try
            {
                List<string> strCRODashboard = new List<string>();
                strCRODashboard.Add(JsonConvert.SerializeObject(BindChallanListForUpdation(OrganisationId)));

                return strCRODashboard.ToArray();
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                return null;
            }
        }
        #endregion

        #region Bind CRO Grid
        public static DataTable BindChallanListForUpdation(int intHeadOfficeId)
        {
            DataTable dtResult = new DataTable();
            try
            {
                CROChallanBL objItemBL = new CROChallanBL();
                ApplicationResult objResult = new ApplicationResult();
                objResult = objItemBL.CROChallan_ListForUpdation(intHeadOfficeId);
                if (objResult != null)
                {
                    dtResult = objResult.resultDT;
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
            }
            return dtResult;
        }
        #endregion
    }
}