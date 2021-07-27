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
    public partial class CRVODashboard : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public CRVODashboard() : base(0)
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
                    //--------------- For Check Rights ----------------------
                    if (Session["ScreenRights"] != null)
                    {
                        Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                        if (dataTable.Contains("CRVODashboard") == false)
                        {
                            HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                        }
                    }
                    hdnHeadOfficeId.Value = Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID]).ToString();
                    hdnEmployeeId.Value = Convert.ToInt32(Session[ApplicationSession.USERID]).ToString();
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
        #endregion

        #region GetCRODashboard webmethod for bind Grid
        [WebMethod]
        public static string[] GetCRVODashboard(int HeadOfficeId)
        {
            try
            {
                List<string> strCRODashboard = new List<string>();

                strCRODashboard.Add(JsonConvert.SerializeObject(BindCRVODashboard(HeadOfficeId)));
                return strCRODashboard.ToArray();
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                return null;
            }
        }
        #endregion

        #region Update Approve Status of Challan
        [WebMethod]
        public static string UpdateApprove(int challanId, string challanNo, string selectedImgSource)
        {
            try
            {
                CROChallanBL objItemBL = new CROChallanBL();
                ApplicationResult objResult = new ApplicationResult();

                var LastModifiedBy = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                var LastModifiedDate = DateTime.UtcNow.AddHours(5.5);

                objResult = objItemBL.CROChallan_CRVODashboard_UpdateApprove(challanId, LastModifiedBy, LastModifiedDate, selectedImgSource);
                if (objResult.status == ApplicationResult.CommonStatusType.SUCCESS)
                {
                    return challanNo + " approved successfully";
                }
                else
                {
                    return "Opps!Something went Wrong.Contact Your Administrator.";
                }
                
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                return null;
            }
        }
        #endregion

        #region Update Approve Status of Challan
        [WebMethod]
        public static string UpdateApproveMultiple(string challanId, string selectedImgSource)
        {
            try
            {
                CROChallanBL objItemBL = new CROChallanBL();
                ApplicationResult objResult = new ApplicationResult();

                var LastModifiedBy = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                var LastModifiedDate = DateTime.UtcNow.AddHours(5.5);

                objResult = objItemBL.CROChallan_CRVODashboard_UpdateApprove_Multiple(challanId, LastModifiedBy, LastModifiedDate, selectedImgSource);
                if (objResult.status == ApplicationResult.CommonStatusType.SUCCESS)
                {
                    return "Challans approved successfully";
                }
                else
                {
                    return "Opps!Something went Wrong.Contact Your Administrator.";
                }

            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                return null;
            }
        }
        #endregion

        #region Update Cancel Status of Challan
        [WebMethod]
        public static string UpdateCancel(int challanId, string challanNo, string Comment)
        {
            try
            {
                CROChallanBL objItemBL = new CROChallanBL();
                ApplicationResult objResult = new ApplicationResult();

                var LastModifiedBy = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                var LastModifiedDate = DateTime.UtcNow.AddHours(5.5);

                objResult = objItemBL.CROChallan_CRVODashboard_UpdateCancel(challanId, Comment, LastModifiedBy, LastModifiedDate);
                if (objResult.status == ApplicationResult.CommonStatusType.SUCCESS)
                {
                    return challanNo + " cancelled successfully";
                }
                else
                {
                    return "Opps!Something went Wrong.Contact Your Administrator.";
                }

            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                return null;
            }
        }
        #endregion

        #region Update Cancel Status of Challan
        [WebMethod]
        public static string Update(int challanId, string challanNo, string Comment, string selectedImgSource)
        {
            try
            {
                CROChallanBL objItemBL = new CROChallanBL();
                ApplicationResult objResult = new ApplicationResult();

                var LastModifiedBy = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                var LastModifiedDate = DateTime.UtcNow.AddHours(5.5);

                objResult = objItemBL.CROChallan_CRVODashboard_Update(challanId, Comment, LastModifiedBy, LastModifiedDate, selectedImgSource);
                if (objResult.status == ApplicationResult.CommonStatusType.SUCCESS)
                {
                    return challanNo + " send for updation.";
                }
                else
                {
                    return "Opps!Something went Wrong.Contact Your Administrator.";
                }

            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                return null;
            }
        }
        #endregion

        #region Bind CRO Grid
        public static DataTable BindCRVODashboard(int intHeadOfficeId)
        {
            DataTable dtResult = new DataTable();
            try
            {
                CROChallanBL objItemBL = new CROChallanBL();
                ApplicationResult objResult = new ApplicationResult();
                objResult = objItemBL.CROChallan_CRVODashboard(intHeadOfficeId);
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