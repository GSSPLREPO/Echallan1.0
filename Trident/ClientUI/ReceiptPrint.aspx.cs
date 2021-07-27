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
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class ReceiptPrint : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public ReceiptPrint() : base(0)
        {

        }
        #endregion

        #region Page Load Event
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Session["ScreenRights"] != null)
                    {
                        Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                        if (dataTable.Contains("ReceiptPrint") == false)
                        {
                            HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                        }
                    }
                    BindGrid();
                }
            }
            catch (Exception ex)
            {
                log.Error("Page_Load", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region BindGrid Method
        public void BindGrid()
        {
            try
            {
                ReceiptBL objItemBL = new ReceiptBL();
                ApplicationResult objResult = new ApplicationResult();
                objResult = objItemBL.Receipt_Print_SelectAll();
                if (objResult != null)
                {
                    gvReceipt.DataSource = objResult.resultDT;
                    gvReceipt.DataBind();
                    gvReceipt.Visible = true;
                }
            }
            catch (Exception ex)
            {
                log.Error("BindGrid", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
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

        protected void gvReceipt_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                
                if (e.CommandName.ToString() == "Print1")
                {
                    BindReceiptData(Convert.ToInt32(e.CommandArgument.ToString()));
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "getPrint('divReceipt');", true);
                }
                else if (e.CommandName.ToString() == "Delete1")
                {
                    ApplicationResult objResultDelete = new ReceiptBL().Receipt_Delete(Convert.ToInt32(e.CommandArgument.ToString()), DateTime.UtcNow.AddHours(5.5), Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID].ToString()));
                    if (objResultDelete.status == ApplicationResult.CommonStatusType.SUCCESS)
                    {
                        BindGrid();
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("gvChallan_RowCommand", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
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