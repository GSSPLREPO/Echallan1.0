using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;
using log4net;
using Trident.Common;
using Trident.Bl;
using System.Data;
using System.Web.Services;
using Trident.Bo;
using Newtonsoft.Json;

namespace Trident.ClientUI
{
    public partial class ChallanListReport : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public ChallanListReport() : base(0)
        {

        }
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack) return;
                BindChallanListStatus();
                BindLocationSelectAll();
            }
            catch (Exception ex)
            {
                log.Error("Page_Load", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }


        #region BindChallanListStatus Method
        public void BindChallanListStatus()
        {
            try
            {
                ReportBL objReportBL = new ReportBL();
                ApplicationResult objResult = new ApplicationResult();
                Controls objControl = new Controls();
                objResult = objReportBL.ChallanStatus_SelectAll();
                if (objResult != null)
                {
                    if (objResult.resultDT.Rows.Count > 0)
                    {
                        objControl.BindDropDown_ListBox(objResult.resultDT, ddlStatus, "Status", "Id");
                    }
                    ddlStatus.Items.Insert(0, new ListItem("--Select--", "-1"));
                }
            }
            catch (Exception ex)
            {
                log.Error("BindChallanListStatus", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region BindLocationSelectAll Method
        public void BindLocationSelectAll()
        {
            try
            {
                LocationBL objLocationBLL = new LocationBL();
                ApplicationResult objResult = new ApplicationResult();
                Controls objControl = new Controls();
                objResult = objLocationBLL.Location_SelectAll();
                if (objResult != null)
                {
                    if (objResult.resultDT.Rows.Count > 0)
                    {
                        objControl.BindDropDown_ListBox(objResult.resultDT, ddlLocation, "Location", "Location");
                    }
                    ddlLocation.Items.Insert(0, new ListItem("--Select All--", "-1"));
                }
            }
            catch (Exception ex)
            {
                log.Error("BindLocationSelectAll", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region Go Button Click Event
        protected void btnGo_Click(object sender, EventArgs e)
        {
            try
            {
                //LogBl objLogBl = new LogBl();
                //DateTime dtFromDateTime = DateTime.ParseExact(txtFromDate.Text, "dd/MM/yyyy",
                //        CultureInfo.InvariantCulture);
                //DateTime dtToDateTime = DateTime.ParseExact(txtToDate.Text, "dd/MM/yyyy",
                //    CultureInfo.InvariantCulture);
                //if (dtFromDateTime <= dtToDateTime)
                //{
                //    //ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                //    //    "<script>alert('"+ dtToDateTime +"');</script>");
                //    var objResult = objLogBl.DailyMassBalanceReport(dtFromDateTime, dtToDateTime);
                //    gvDailyMassBalance.DataSource = objResult.ResultDt;
                //    gvDailyMassBalance.DataBind();

                //    if (gvDailyMassBalance.Rows.Count > 0)
                //    {
                //        gvDailyMassBalance.Visible = true;
                //        divExport.Visible = true;
                //        disableTextbox();
                //        //divChemical.Visible = true;
                //    }
                //    else
                //    {
                //        divExport.Visible = false;
                //        //divChemical.Visible = true;
                //        gvDailyMassBalance.DataSource = null;
                //        gvDailyMassBalance.DataBind();

                //    }
                //}
                //else
                //{
                //    gvDailyMassBalance.Visible = false;

                //    ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                //   "<script>alert('You are not select From Date greater than To Date.');</script>");
                //}
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                    "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }
        #endregion

        #region VerifyRenderingInServerForm
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
        #endregion

        //#region Export To PDF
        //protected void imgbtnPDF_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        Response.Clear();
        //        Response.Buffer = true;
        //        Response.ContentType = "application/pdf";
        //        Response.ContentEncoding = System.Text.Encoding.Unicode;
        //        Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());
        //        string filename = "DailyMassBalance_" + DateTime.Now.Date.ToString("dd-MM-yyyy") + ".pdf";
        //        Response.AddHeader("content-disposition", "attachment;filename=" + filename);
        //        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //        StringWriter sw = new StringWriter();
        //        HtmlTextWriter hw = new HtmlTextWriter(sw);
        //        gvDailyMassBalance.AllowPaging = false;
        //        gvDailyMassBalance.GridLines = GridLines.Both;
        //        gvDailyMassBalance.RenderControl(hw);
        //        string Date = DateTime.UtcNow.AddHours(5.5).ToString();
        //        string strSubTitle = "Daily Mass Balance Report</br> as on " + Date;

        //        string strPath = Request.Url.GetLeftPart(UriPartial.Authority) + "/images/Logo1.gif";
        //        string content = "<div align='left' style='font-family:verdana;font-size:16px'><img src='" + strPath + "'/></div><div align='center' style='font-family:verdana;font-size:16px'><span style='font-size:16px;font-weight:bold;color:Black;'>" + Session[ApplicationSession.OrganisationName] +
        //              "</span><br/><span style='font-size:13px;font-weight:bold;color:Black;'>" + Session[ApplicationSession.OrganisationAddress] + "</span><br/>" +
        //                 "<span align='center' style='font-family:verdana;font-size:13px'><strong>" + strSubTitle + "</strong></span><br/>" +
        //                 "<div align='center' style='font-family:verdana;font-size:12px'><strong>From Date :</strong>" +
        //             DateTime.ParseExact(txtFromDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture) +
        //              "&nbsp;&nbsp;&nbsp;&nbsp;<strong> To Date :</strong>" +
        //              DateTime.ParseExact(txtToDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture) +
        //              "</div><br/> "
        //              + sw.ToString() + "<br/></div>";
        //        StringReader sr = new StringReader(content);
        //        Document pdfDoc = new Document(iTextSharp.text.PageSize.A4, 10f, 10f, 10f, 0f);
        //        pdfDoc.SetPageSize(iTextSharp.text.PageSize.A4.Rotate());
        //        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        //        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        //        pdfDoc.Open();
        //        htmlparser.Parse(sr);
        //        pdfDoc.Close();
        //        Response.Write(pdfDoc);
        //        gvDailyMassBalance.GridLines = GridLines.None;
        //        Response.End();
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Error("Button PDF", ex);
        //        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Oops! There is some technical issue. Please Contact to your administrator.');", true);
        //    }
        //}
        //#endregion

        //#region Export To Excel
        //protected void imgbtnExcel_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        //DataTable dt = new DataTable();
        //        //  dt = ViewState["DataTableMilkStorage"].ToString();
        //        Response.Clear();
        //        Response.Buffer = true;
        //        Response.ContentType = "application/vnd.ms-excel";
        //        Response.ContentEncoding = System.Text.Encoding.Unicode;
        //        Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());
        //        string filename = "DailyMassBalance_Report" + DateTime.Now.Date.ToString("dd-MM-yyyy") + ".xls";
        //        Response.AddHeader("content-disposition", "attachment;filename=" + filename);
        //        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        //        using (StringWriter sw = new StringWriter())
        //        {
        //            HtmlTextWriter hw = new HtmlTextWriter(sw);

        //            //To Export all pages
        //            gvDailyMassBalance.AllowPaging = false;
        //            //   this.MilkStorageGrid();

        //            gvDailyMassBalance.HeaderRow.BackColor = Color.White;
        //            foreach (TableCell cell in gvDailyMassBalance.HeaderRow.Cells)
        //            {
        //                cell.BackColor = gvDailyMassBalance.HeaderStyle.BackColor;
        //            }
        //            foreach (GridViewRow row in gvDailyMassBalance.Rows)
        //            {
        //                row.BackColor = Color.White;
        //                foreach (TableCell cell in row.Cells)
        //                {
        //                    if (row.RowIndex % 2 == 0)
        //                    {
        //                        cell.BackColor = gvDailyMassBalance.AlternatingRowStyle.BackColor;
        //                    }
        //                    else
        //                    {
        //                        cell.BackColor = gvDailyMassBalance.RowStyle.BackColor;
        //                    }
        //                    cell.CssClass = "textmode";
        //                    List<Control> controls = new List<Control>();

        //                    //Add controls to be removed to Generic List
        //                    foreach (Control control in cell.Controls)
        //                    {
        //                        controls.Add(control);
        //                    }

        //                    //Loop through the controls to be removed and replace then with Literal
        //                    foreach (Control control in controls)
        //                    {
        //                        switch (control.GetType().Name)
        //                        {
        //                            case "HyperLink":
        //                                cell.Controls.Add(new Literal { Text = (control as HyperLink).Text });
        //                                break;
        //                            case "TextBox":
        //                                cell.Controls.Add(new Literal { Text = (control as TextBox).Text });
        //                                break;
        //                            case "LinkButton":
        //                                cell.Controls.Add(new Literal { Text = (control as LinkButton).Text });
        //                                break;
        //                            case "CheckBox":
        //                                cell.Controls.Add(new Literal { Text = (control as CheckBox).Text });
        //                                break;
        //                            case "RadioButton":
        //                                cell.Controls.Add(new Literal { Text = (control as RadioButton).Text });
        //                                break;
        //                        }
        //                        cell.Controls.Remove(control);
        //                    }
        //                }
        //            }
        //            gvDailyMassBalance.Columns[0].Visible = false;
        //            gvDailyMassBalance.RenderControl(hw);

        //            string strTitle = "Nandani Dairy, UDUPI";

        //            string Date = DateTime.UtcNow.AddHours(5.5).ToString();
        //            string strSubTitle = "DailyMassBalance Report </br> as on " + Date;
        //            //string strPath = Request.Url.GetLeftPart(UriPartial.Authority) + "/images/GCMMF-297x300.jpg";
        //            //string content =
        //            //    "<div align='center'>" +
        //            //    "<div>" +
        //            //    "<div style='align:left;font-size:20px;font-weight:bold;color:Maroon'></td>" + strTitle +
        //            //    "</div><br/><span style='font-size:20px;'>" + strSubTitle + "</span><br/>" +
        //            //    "<div><div align='left' style='font-family:verdana;font-size:13px;border-style: solid; border-width: thin;'>" +
        //            //    sw.ToString() + "</div> </div>";
        //            string content = "<div align='center' style='font-family:verdana;font-size:16px;box-sizing: border-box; width:800px;'>" +
        //          "<table style='display: table; width: 800px; clear:both;'>" +
        //          "<tr><th style='width: 200px; float: left;'><img align='left' style='height: 55px; width: 109px;' src='" + Session[ApplicationSession.Logo1] + "'/></th>" +
        //          "<th colspan='14' style='width: 600px; float: left; font-weight:bold;'>" + Session[ApplicationSession.OrganisationName] +
        //             "<br/><span style='font-size:13px;font-weight:bold;color:Black;'>" + Session[ApplicationSession.OrganisationAddress] + "</span><br />" +
        //             "<span style='font-size:26px;color:Black;'>" + strSubTitle + "</ span></th>" +
        //             "<th align='right' style='width: 200px; float: right;'><img align='right' style='height: 55px; width: 109px' src='" + Session[ApplicationSession.CombinedLogo] + "'/></th><br /><br /><br />" + //
        //            "<th align='right' style='width: 200px; float: right;'><img align='right' style='height: 55px; width: 109px' src='" + Session[ApplicationSession.Logo] + "'/></th>" +
        //             "</tr>" +
        //             "<tr> <th colspan='7' style='float: left;'><div align='left'><strong>From Date: </strong>" +
        //    (DateTime.ParseExact(txtFromDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToShortDateString() + "</th>" +
        //             //"<th style='float:left;'><strong>Product Name: </strong></th>" +
        //             //"<th colspan='2' style='float:left; text-align: left;'>" + ddlProductName.SelectedItem + "</th>" +
        //             //"<th style='float:left; text-align: left;'><strong>Supplier Name: </strong></th>" +
        //             //"<th style='float:left; text-align: left;'>" + ddlSupplierName.SelectedItem + "</th>" +
        //             "<th colspan='10' align='right' style='width: 200px; float: right;'><strong> To Date: </strong>" +
        //     (DateTime.ParseExact(txtToDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToShortDateString() + "</th>" +
        //             "</tr></table>" +
        //              //                         "<br/><div align='center' style='font-family:verdana;font-size:11px'><strong>From Date :</strong>" +
        //              //(DateTime.ParseExact(txtFromDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToShortDateString() +
        //              // "&nbsp;&nbsp;&nbsp;&nbsp;<strong> To Date :</strong>" +
        //              // (DateTime.ParseExact(txtToDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture)).ToShortDateString() +
        //              //"</div><br/><div align='center' style='font-family:verdana;font-size:30px'><span style='font-size:30px;color:Maroon;'>" + strSubTitle + "</ span><br/>" +
        //              "<br/>" + sw.ToString() + "<br/></div>";
        //            Response.Output.Write(content);
        //            Response.Flush();
        //            Response.End();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Error("Error", ex);
        //        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
        //            "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
        //    }
        //}
        //#endregion

        //#region Export To Word
        //protected void imgbtnWord_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        string filename = "DailyMassBalance_Report" + DateTime.Now.Date.ToString("dd-MM-yyyy") + ".doc";
        //        Response.AddHeader("content-disposition", "attachment;filename=" + filename);
        //        Response.Charset = "";
        //        Response.ContentType = "application/msword ";

        //        using (StringWriter sw = new StringWriter())
        //        {
        //            HtmlTextWriter hw = new HtmlTextWriter(sw);

        //            //To Export all pages
        //            gvDailyMassBalance.AllowPaging = false;
        //            //   this.MilkStorageGrid();

        //            gvDailyMassBalance.HeaderRow.BackColor = Color.White;
        //            foreach (TableCell cell in gvDailyMassBalance.HeaderRow.Cells)
        //            {
        //                cell.BackColor = gvDailyMassBalance.HeaderStyle.BackColor;
        //            }
        //            foreach (GridViewRow row in gvDailyMassBalance.Rows)
        //            {
        //                row.BackColor = Color.White;
        //                foreach (TableCell cell in row.Cells)
        //                {
        //                    if (row.RowIndex % 2 == 0)
        //                    {
        //                        cell.BackColor = gvDailyMassBalance.AlternatingRowStyle.BackColor;
        //                    }
        //                    else
        //                    {
        //                        cell.BackColor = gvDailyMassBalance.RowStyle.BackColor;
        //                    }
        //                    cell.CssClass = "textmode";
        //                    List<Control> controls = new List<Control>();

        //                    //Add controls to be removed to Generic List
        //                    foreach (Control control in cell.Controls)
        //                    {
        //                        controls.Add(control);
        //                    }

        //                    //Loop through the controls to be removed and replace then with Literal
        //                    foreach (Control control in controls)
        //                    {
        //                        switch (control.GetType().Name)
        //                        {
        //                            case "HyperLink":
        //                                cell.Controls.Add(new Literal { Text = (control as HyperLink).Text });
        //                                break;
        //                            case "TextBox":
        //                                cell.Controls.Add(new Literal { Text = (control as TextBox).Text });
        //                                break;
        //                            case "LinkButton":
        //                                cell.Controls.Add(new Literal { Text = (control as LinkButton).Text });
        //                                break;
        //                            case "CheckBox":
        //                                cell.Controls.Add(new Literal { Text = (control as CheckBox).Text });
        //                                break;
        //                            case "RadioButton":
        //                                cell.Controls.Add(new Literal { Text = (control as RadioButton).Text });
        //                                break;
        //                        }
        //                        cell.Controls.Remove(control);
        //                    }
        //                }
        //            }
        //            //gvDailyMassBalance.Columns[0].Visible = false;
        //            gvDailyMassBalance.RenderControl(hw);

        //            string strSubTitle = "DailyMassBalance REPORT";
        //            string strPath = Request.Url.GetLeftPart(UriPartial.Authority) + "/images/Logo1.gif";
        //            //string content = "<div align='center' style='font-family:verdana;font-size:16px'><img src='" + strPath + "'/><span style='font-size:16px;font-weight:bold;color:Black;'>" + Session[ApplicationSession.OrganisationName] +
        //            string content = "<div align='center' style='font-family:verdana;font-size:16px'><span style='font-size:16px;font-weight:bold;color:Black;'>" + Session[ApplicationSession.OrganisationName] +
        //            "</span><br/><span style='font-size:13px;font-weight:bold;color:Black;'>" + Session[ApplicationSession.OrganisationAddress] + "</span><br/>" +
        //               "<span align='center' style='font-family:verdana;font-size:13px'><strong>" + strSubTitle + "</strong></span><br/>" +
        //               "<div align='center' style='font-family:verdana;font-size:12px'><strong>From Date :</strong>" +
        //           DateTime.ParseExact(txtFromDate.Text, "dd/MM/yyyy ", CultureInfo.InvariantCulture) +
        //            "&nbsp;&nbsp;&nbsp;&nbsp;<strong> To Date :</strong>" +
        //            DateTime.ParseExact(txtToDate.Text, "dd/MM/yyyy ", CultureInfo.InvariantCulture) +
        //            "</div><br/> "
        //            + sw.ToString() + "<br/></div>";
        //            // string style = @"<!--mce:2-->";
        //            // Response.Write(style);
        //            Response.Output.Write(content);
        //            gvDailyMassBalance.GridLines = GridLines.None;
        //            Response.Flush();
        //            Response.Clear();
        //            Response.End();
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        log.Error("Button WORD", ex);
        //        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Oops! There is some technical issue. Please Contact to your administrator.');", true);
        //    }
        //}
        //#endregion
    }
}