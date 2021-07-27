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
    public partial class CROChallanPrint : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public CROChallanPrint() : base(0)
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
                    //--------------- For Check Rights ----------------------
                    if (Session["ScreenRights"] != null)
                    {
                        Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                        if (dataTable.Contains("ChallanForPrint") == false)
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
                CROChallanBL objItemBL = new CROChallanBL();
                ApplicationResult objResult = new ApplicationResult();
                objResult = objItemBL.CROChallan_PrintDashboard(Convert.ToInt32(Session[ApplicationSession.HEADOFFICEID]));
                if (objResult != null)
                {
                    gvChallan.DataSource = objResult.resultDT;
                    gvChallan.DataBind();
                    gvChallan.Visible = true;
                }
            }
            catch (Exception ex)
            {
                log.Error("BindGrid", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region gvChallan RowCommand Event
        protected void gvChallan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                DataSet dsResult = BindData(Convert.ToInt32(e.CommandArgument.ToString()), Convert.ToInt32(Session[ApplicationSession.USERID]));
                if (e.CommandName.ToString() == "Print1")
                {

                    if (dsResult.Tables[1].Rows.Count > 0)
                    {
                        ViewState["dt"] = dsResult.Tables[1];
                    }
                    else
                    {
                        ViewState["dt"] = null;
                    }

                    if (dsResult.Tables[0].Rows.Count > 0)
                    {
                        dlPrintChallan.Visible = true;
                        dlPrintBarcode.Visible = true;
                    }
                    else
                    {
                        dlPrintChallan.Visible = false;
                        dlPrintBarcode.Visible = false;
                    }
                    dlPrintChallan.DataSource = dsResult.Tables[0];
                    dlPrintChallan.DataBind();
                    //dlPrintBarcode.DataSource = dsResult.Tables[0];
                    //dlPrintBarcode.DataBind();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "getPrint('divChallan');", true);
                }
                else if (e.CommandName.ToString() == "PrintBarcode1")
                {

                    //if (dsResult.Tables[1].Rows.Count > 0)
                    //{
                    //    ViewState["dt"] = dsResult.Tables[1];
                    //}
                    //else
                    //{
                    //    ViewState["dt"] = null;
                    //}

                    if (dsResult.Tables[0].Rows.Count > 0)
                    {
                        dlPrintChallan.Visible = false;
                        dlPrintBarcode.Visible = true;
                    }
                    else
                    {
                        dlPrintChallan.Visible = false;
                        dlPrintBarcode.Visible = false;
                    }
                    //dlPrintChallan.DataSource = dsResult.Tables[0];
                    //dlPrintChallan.DataBind();
                    dlPrintBarcode.DataSource = dsResult.Tables[0];
                    dlPrintBarcode.DataBind();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "getBarCodePrint('divChallanBarcode');", true);
                }
            }
            catch (Exception ex)
            {
                log.Error("gvChallan_RowCommand", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region BindData Dataset for datalist and grid inside datalist
        public DataSet BindData(int intid, int userId)
        {
            try
            {
                ApplicationResult objResult = new CROChallanBL().CROChallan_Print(intid, userId);
                if (objResult != null)
                {
                    return objResult.resultDS;
                }
            }
            catch (Exception ex)
            {
                log.Error("BindData", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
            return null;
        }
        #endregion

        #region datalist dlPrintChallan ItemData Bound Event
        protected void dlPrintChallan_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item)
                {
                    DataTable dt = new DataTable();
                    dt = (DataTable)ViewState["dt"];
                    GridView gv = (GridView)e.Item.FindControl("gvChallanPrint");
                    if (ViewState["dt"] != null)
                    {
                        gv.DataSource = dt;
                        gv.DataBind();
                    }
                    else
                    {
                        gv.DataSource = dt;
                        gv.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("dlPrintChallan_ItemDataBound", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        protected void gvChallan_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvChallan.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void chkHeader_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                CheckBox chkHeader = new CheckBox();
                chkHeader = (CheckBox)gvChallan.HeaderRow.FindControl("chkHeader");
                if (chkHeader.Checked == true)
                {
                    CheckBox chk = new CheckBox();
                    foreach (GridViewRow rowItem in gvChallan.Rows)
                    {
                        chk = (CheckBox)(rowItem.Cells[0].FindControl("chkChild"));
                        chk.Checked = true;

                    }
                }
                else
                {
                    CheckBox chk = new CheckBox();
                    foreach (GridViewRow rowItem in gvChallan.Rows)
                    {
                        chk = (CheckBox)(rowItem.Cells[0].FindControl("chkChild"));
                        chk.Checked = false;

                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Oops! There is some technical issue. Please Contact to your administrator.');", true);
            }
        }

        protected void chkChild_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                CheckBox chkHeader = new CheckBox();
                chkHeader = (CheckBox)gvChallan.HeaderRow.FindControl("chkHeader");
                int intCount = 0, intCheckedCount = 0;
                CheckBox chk = new CheckBox();
                foreach (GridViewRow rowItem in gvChallan.Rows)
                {
                    intCount++;
                    chk = (CheckBox)(rowItem.Cells[0].FindControl("chkChild"));
                    if (chk.Checked == true)
                    {
                        intCheckedCount++;
                    }
                }
                if (intCount == intCheckedCount)
                {
                    chkHeader.Checked = true;
                }
                else
                {
                    chkHeader.Checked = false;
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Oops! There is some technical issue. Please Contact to your administrator.');", true);
            }
        }

        protected void btnPrintSelected_Click(object sender, EventArgs e)
        {
            try
            {
                CheckBox chk = new CheckBox();
                string strFinal = string.Empty;
                foreach (GridViewRow rowItem in gvChallan.Rows)
                {
                    chk = (CheckBox)(rowItem.Cells[0].FindControl("chkChild"));
                    if (chk.Checked == true)
                    {
                        string strMainTable = string.Empty, strRem = string.Empty;
                        DataSet dsResult = BindData(Convert.ToInt32(rowItem.Cells[1].Text), Convert.ToInt32(Session[ApplicationSession.USERID]));

                        strMainTable = "<table id='MainBody_dlPrintChallan' cellspacing='0' style='width:800px; padding-top: 50px; border-collapse: collapse;'>" +
                                        "<tbody>" +
                                        "<tr>" +
                                        "<td width='100%'>" +
                                        "<table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>" +
                                        "<tbody>" +
                                        "<tr>" +
                                        "<td width='100%'>" +
                                        "<table width='100%' >" +
                                        "<tbody>" +
                                        "<tr>" +
                                        "<td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width:10%;'>" +
                                        "<img src='../images/Berhampur_Police.png' width='100px' height='100px' >" +
                                        "</td>" +
                                        "<td style='font-size: 17px; border-bottom: solid 1px black;' align='center'>" +
                                        "<b>Berhampur City Police</b>" + "</td >" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td align='center' style='font-size: 17px; color: crimson;'><b> E-Challan for Violation of Traffic Rules </b>" +
                                        "</td>" +
                                        "</tr>" +
                                        "</tbody>" +
                                        "</table>" +
                                        "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td></td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td width='100%'>" +
                                        "<table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>" +
                                        "<tbody>" +
                                        "<tr>" +
                                        "<td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'> Challan No. : <b>" + dsResult.Tables[0].Rows[0]["ChallanNo"].ToString() + "</b>" +
                                        "</td>" +
                                        "<td colspan='2' style='border: 1px solid black; padding: 3px;'> Challan Date &  Time: " + dsResult.Tables[0].Rows[0]["ChallanDateTime"].ToString() +
                                        "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td colspan='4' style='border: 1px solid black; padding: 3px;'><b> Challan Details </b>" +
                                        "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'> Name</td>" +
                                        "<td colspan='3' style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["Name"].ToString() + "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td colspan='1' style='border: 1px solid black; padding: 3px;'> Address</td>" +
                                        "<td colspan='3' style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["OffenderAddress"].ToString().Replace("\n", " ") +
                                        "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td style='border: 1px solid black; width: 20%; padding: 3px;'> City</td>" +
                                        "<td style='border: 1px solid black; width: 30%; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["City"].ToString() + "</td>" +
                                        "<td style='border: 1px solid black; width: 20%; padding: 3px;'> Postal Code</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["PostalCode"].ToString() + "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td style='border: 1px solid black; padding: 3px;'> Province</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["Province"].ToString() + "</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'> Mobile No.</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["MobileNo"].ToString() + "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td style='border: 1px solid black; padding: 3px;'> Vehicle Type</td>" +
                                        "<td colspan='3' style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["VehicleType"].ToString() + "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td style='border: 1px solid black; padding: 3px;'> Due Date</td>" +
                                        "<td colspan='3' style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["DueDate"].ToString() + "</td>" +
                                        "</tr>" +
                                        "</tbody>" +
                                        "</table>" +
                                        "<br>" +
                                        "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td width='100%'>" +
                                        "<table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>" +
                                        "<tbody>" +
                                        "<tr>" +
                                        "<td colspan='4' style='border: 1px solid black; padding: 3px;'><b> Traffic Violation Details</b></td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td style='border: 1px solid black; width: 20%; padding: 3px;'> Vehicle Reg.No.</td>" +
                                        "<td style='border: 1px solid black; width: 30%; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["VehiclePlateNo"].ToString() + "</td>" +
                                        "<td style='border: 1px solid black; width: 20%; padding: 3px;'> Vehicle Make</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["VehicleMake"].ToString() + "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td style='border: 1px solid black; padding: 3px;'> Vehicle Model</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["VehicleModel"].ToString() + "</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'> Violation Date &  Time" +
                                        "</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["ViolationDateTime"].ToString() + "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td style='border: 1px solid black; padding: 3px;'> Violation Place</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["Location"].ToString() + "</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'> Police Station</td>" +
                                        "<td style='border: 1px solid black; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["PoliceStation"].ToString() + "</td>" +
                                        "</tr>" +
                                        "</tbody>" +
                                        "</table>" +
                                        "<br>" +
                                        "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td width='100%'>" +
                                        "<table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>" +
                                        "<tbody>" +
                                        "<tr>" +
                                        "<td colspan='4' style='border: 1px solid black; padding: 3px;'><b> Offense Details </b>" +
                                        "</td>" +
                                        "</tr>" +
                                        "<tr>" +
                                        "<td colspan='4' style='border: 1px solid black; padding: 3px;'>" +
                                        "<tr>" +
                                        "<th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>" +
                                        "<th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>" +
                                        "<th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>" +
                                        "<th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>" +
                                        "</tr>";

                        var strOffense = string.Empty;

                        for (int i = 0; i < dsResult.Tables[1].Rows.Count; i++)
                        {


                            strOffense += "<tr>" +
                                          "<td align='right' valign='top' style='width: 50px;'>" + dsResult.Tables[1].Rows[i]["SrNo"].ToString() + "</td>" +
                                          "<td align='left' valign='top' style='width: 150px;'>" + dsResult.Tables[1].Rows[i]["Name"].ToString() + "</td>" +
                                          "<td align='left' valign='top' style='width: 250px;'>" + dsResult.Tables[1].Rows[i]["MVSection"].ToString() + "</td>" +
                                          "<td align='right' valign='top' style='width: 100px;'>" + dsResult.Tables[1].Rows[i]["Amount"].ToString() + "</td>" +
                                          "</tr>";
                        }

                        strRem = "</table>" +
                                   "</td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td width='100%'>" +
                                        "<table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>" +
                                        "<tbody>" +
                                        "<tr>" +
                                   "<td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td style='border: 1px solid black; width: 20%; padding: 3px;'> No.of Prev.unpaid Challans</td>" +
                                   "<td style='border: 1px solid black; width: 30%; padding: 3px;'>" + dsResult.Tables[0].Rows[0]["NoOfUnpaidChallan"].ToString() + "</td>" +
                                   "<td style='border: 1px solid black; width: 20%; padding: 3px;'> Amount</td>" +
                                   "<td style='border: 1px solid black; padding: 3px; text-align: right;'>" + dsResult.Tables[0].Rows[0]["Amount"].ToString() + "</td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td colspan='2' style='border: 1px solid black; padding: 3px;'><b> Total Compounding Amount (Rs.)</b></td>" +
                                   "<td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>" + dsResult.Tables[0].Rows[0]["CompoundingAmount"].ToString() + "</b></td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>" +
                                   "<td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>" + dsResult.Tables[0].Rows[0]["AmountInWord"].ToString() + "</b></td>" +
                                   "</tr>" +
                                   "</tbody>" +
                                   "</table>" +
                                   "</td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td width='100%'>" +
                                   "<table width='100%'>" +
                                   "<tbody>" +
                                   "<tr>" +
                                   "<td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>" +
                                   "<img src='" + dsResult.Tables[0].Rows[0]["LPImage"].ToString() + "' width='175px' height='150px'></td>" +
                                   "<td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>" +
                                   "<img src='" + dsResult.Tables[0].Rows[0]["ContextImage"].ToString() + "' width='175px' height='150px'></td>" +
                                   "<td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>" +
                                   "<img src='" + dsResult.Tables[0].Rows[0]["ViolationScreenShot"].ToString() + "' width='175px' height='150px'></td>" +
                                   "</tr>" +
                                   "</tbody>" +
                                   "</table>" +
                                   "<br><br>" +
                                   "</td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td width='100%'>" +
                                   "<table width='100%'>" +
                                   "<tbody>" +
                                   "<tr>" +
                                   "<td valign='top' width='80%'></td>" +
                                   "<td valign='top' align='center' height='15%'><b> Generated By</b>" +
                                   "</td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td valign='top' width='80%'></td>" +
                                   "<td valign='top' align='center' height='15%'>" + dsResult.Tables[0].Rows[0]["UserName"].ToString() +
                                   "</td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td valign='top' width='70%'></td>" +
                                   "<td valign='top' align='center' height='20%'> &nbsp;" +
                                   "</td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td valign='top' width='70%'></td>" +
                                   "<td valign='top' align='center' height='20%'>&nbsp;" +
                                   "</td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td valign='top' width='80%'></td>" +
                                   "<td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b>" +
                                   "</td>" +
                                   "</tr>" +
                                   "<tr>" +
                                   "<td valign='top' width='80%'></td>" +
                                   "<td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b>" +
                                   "<br /><br /><br /></td>" +
                                   "</tr>" +
                                   "</tbody>" +
                                   "</table>" +
                                   "</td>" +
                                   "</tr>" +
                                   "</tbody>" +
                                   "</table>" +
                                   "</td>" +
                                   "</tr>" +
                                   "</tbody>" +
                                   "</table>";

                        strFinal += strMainTable + strOffense + strRem;
                    }

                }

                hdnChallanString.Value = strFinal;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "getPrintAll()", true);

                //if (e.CommandName.ToString() == "Print1")
                //{

                //    if (dsResult.Tables[1].Rows.Count > 0)
                //    {
                //        ViewState["dt"] = dsResult.Tables[1];
                //    }
                //    else
                //    {
                //        ViewState["dt"] = null;
                //    }

                //    if (dsResult.Tables[0].Rows.Count > 0)
                //    {
                //        dlPrintChallan.Visible = true;
                //        dlPrintBarcode.Visible = true;
                //    }
                //    else
                //    {
                //        dlPrintChallan.Visible = false;
                //        dlPrintBarcode.Visible = false;
                //    }
                //    dlPrintChallan.DataSource = dsResult.Tables[0];
                //    dlPrintChallan.DataBind();
                //    //dlPrintBarcode.DataSource = dsResult.Tables[0];
                //    //dlPrintBarcode.DataBind();
                //    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "getPrint('divChallan');", true);
                //}
                //else if (e.CommandName.ToString() == "PrintBarcode1")
                //{

                //    //if (dsResult.Tables[1].Rows.Count > 0)
                //    //{
                //    //    ViewState["dt"] = dsResult.Tables[1];
                //    //}
                //    //else
                //    //{
                //    //    ViewState["dt"] = null;
                //    //}

                //    if (dsResult.Tables[0].Rows.Count > 0)
                //    {
                //        dlPrintChallan.Visible = false;
                //        dlPrintBarcode.Visible = true;
                //    }
                //    else
                //    {
                //        dlPrintChallan.Visible = false;
                //        dlPrintBarcode.Visible = false;
                //    }
                //    //dlPrintChallan.DataSource = dsResult.Tables[0];
                //    //dlPrintChallan.DataBind();
                //    dlPrintBarcode.DataSource = dsResult.Tables[0];
                //    dlPrintBarcode.DataBind();
                //    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "getBarCodePrint('divChallanBarcode');", true);
                //}
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Oops! There is some technical issue. Please Contact to your administrator.');", true);
            }
        }
    }
}