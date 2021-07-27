using log4net;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.Bl;
using Trident.Bo;
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class CollectionOfficerDashboard : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public CollectionOfficerDashboard() : base(0)
        {

        }
        #endregion

        #region Page Load Event
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //--------------- For Check Rights ----------------------
                if (Session["ScreenRights"] != null)
                {
                    Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                    //if (Session["ScreenRights"].ToString().Contains("CODashboard") == false)
                    if (dataTable.Contains("CODashboard") == false)
                    {
                        HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                    }

                }
                if (Request.QueryString["RC"] != null && Request.QueryString["RC"] != "")
                {
                    var vrReceiptId = Request.QueryString["RC"].ToString();
                    BindReceiptData(Convert.ToInt32(vrReceiptId));
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "getPrint('divReceipt');", true);
                }
            }
            catch (Exception ex)
            {
                log.Error("PageLoad", ex);
            }
        }
        #endregion

        public void BindReceiptData(int intReceiptId)
        {
            try
            {
                ApplicationResult objResult = new CODashboardBL().Receipt_Print(intReceiptId);
                if (objResult != null)
                {
                    if (objResult.resultDT.Rows.Count > 0)
                    {
                        ViewState["dt"] = objResult.resultDT;
                        dlPrintChallan.Visible = true;
                    }
                    else
                    {
                        ViewState["dt"] = null;
                        dlPrintChallan.Visible = false;
                    }
                    DataTable dtnew = new DataTable(); //from dtl in objResult.resultDT.AsEnumerable().Select(dtl => dtl.Table).FirstOrDefault().Select();
                    dtnew.Columns.Add("Id", typeof(int));
                    dtnew.Columns.Add("ReceiptNo", typeof(string));
                    dtnew.Columns.Add("PaidAmount", typeof(string));
                    dtnew.Columns.Add("PaymentDate", typeof(string));
                    dtnew.Columns.Add("TotalAmount", typeof(string));
                    dtnew.Columns.Add("ChallanDate", typeof(string));
                    dtnew.Columns.Add("ChallanNo", typeof(string));
                    dtnew.Columns.Add("Location", typeof(string));
                    dtnew.Columns.Add("VehicleMake", typeof(string));
                    dtnew.Columns.Add("VehicleModel", typeof(string));
                    dtnew.Columns.Add("VehiclePlateNo", typeof(string));
                    dtnew.Columns.Add("VehicleType", typeof(string));

                    dtnew.Rows.Add(Convert.ToInt32(objResult.resultDT.Rows[0]["Id"].ToString()), objResult.resultDT.Rows[0]["ReceiptNo"], objResult.resultDT.Rows[0]["PaidAmount"],
                        objResult.resultDT.Rows[0]["PaymentDate"], objResult.resultDT.Rows[0]["TotalAmount"], objResult.resultDT.Rows[0]["ChallanDate"], objResult.resultDT.Rows[0]["ChallanNo"],
                        objResult.resultDT.Rows[0]["Location"], objResult.resultDT.Rows[0]["VehicleMake"], objResult.resultDT.Rows[0]["VehicleModel"], objResult.resultDT.Rows[0]["VehiclePlateNo"], objResult.resultDT.Rows[0]["VehicleType"]);
                    dlPrintChallan.DataSource = dtnew;
                    dlPrintChallan.DataBind();

                }
            }
            catch (Exception ex)
            {
                log.Error("BindReceiptData", ex);
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        #region Search Material Name
        [WebMethod]
        public static string[] SearchData(string strType, string strData)
        {
            List<string> result = new List<string>();
            try
            {
                ApplicationResult objResult = new ApplicationResult();

                objResult = new CODashboardBL().CROChallan_SelectAll(strType, strData);
                if (objResult != null)
                {
                    for (int i = 0; i < objResult.resultDT.Rows.Count; i++)
                    {
                        if (strType == "EChallanNo")
                        {
                            string strChallanNo = objResult.resultDT.Rows[i]["ChallanNo"].ToString();
                            string Id = objResult.resultDT.Rows[i]["Id"].ToString();
                            result.Add(string.Format("{0} - {1} ", strChallanNo, Id));
                        }
                        else
                        {
                            string strChallanNo = objResult.resultDT.Rows[i]["OffenderName"].ToString();
                            string Id = objResult.resultDT.Rows[i]["Id"].ToString();
                            result.Add(string.Format("{0} - {1} ", strChallanNo, Id));
                        }
                    }
                }
                return result.ToArray();
            }
            catch (Exception ex)
            {
                log.Error("SaveReceipt", ex);
            }
            return result.ToArray();

        }
        #endregion


        #region Search Material Name
        [WebMethod]
        public static String BindData(int ChallanId)
        {
            try
            {
                ApplicationResult objResult = new ApplicationResult();
                List<string> result = new List<string>();

                objResult = new CODashboardBL().CROChallan_Edit(ChallanId);
                string Data = JsonConvert.SerializeObject(objResult.resultDS, Formatting.Indented);
                return Data;
            }
            catch (Exception ex)
            {
                log.Error("BindData", ex);
            }
            return "";
        }
        #endregion

        protected void ddlSearchBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }

        protected void ddlSearchBy_TextChanged(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }

        #region Base64String to Image Convertion Method
        public static System.Drawing.Image Base64ToImage(string arr)
        {
            try
            {
                byte[] imageBytes = Convert.FromBase64String(arr);
                MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);
                ms.Write(imageBytes, 0, imageBytes.Length);
                System.Drawing.Image image = System.Drawing.Image.FromStream(ms, true);
                return image;
            }
            catch (Exception ex)
            {
                log.Error("Base64ToImage : " + arr + " " + ex.Message.ToString(), ex);
                return null;
            }
        }
        #endregion

        [WebMethod]
        public static string SaveReceipt(ReceiptBO objReceiptBO)
        {
            try
            {
                objReceiptBO.IsDeleted = false;
                objReceiptBO.CreatedBy = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                objReceiptBO.CreatedDate = DateTime.UtcNow.AddHours(5.5);

                ApplicationResult objResult = new ReceiptBL().Receipt_Insert(objReceiptBO);
                if (objResult != null)
                {
                    if (objResult.resultDT.Rows.Count == 0)
                    {
                        return null;
                    }

                    return JsonConvert.SerializeObject(objResult.resultDT);
                }
            }
            catch (Exception ex)
            {
                log.Error("SaveReceipt", ex);
            }
            return "";
        }

        protected void dlPrintChallan_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item)
                {
                    DataTable dt = new DataTable();
                    dt = (DataTable)ViewState["dt"];
                    GridView gv = (GridView)e.Item.FindControl("gvChallanPrint");
                    GridView gv1 = (GridView)e.Item.FindControl("gvChallanPrint1");
                    if (ViewState["dt"] != null)
                    {
                        gv.DataSource = dt;
                        gv.DataBind();
                        gv1.DataSource = dt;
                        gv1.DataBind();
                    }
                    else
                    {
                        gv.DataSource = null;
                        gv.DataBind();
                        gv1.DataSource = null;
                        gv1.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("dlPrintChallan_ItemDataBound", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
    }
}