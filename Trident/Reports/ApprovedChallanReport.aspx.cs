using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using log4net;
using Trident.Common;
using System.Drawing;
using Trident.Bl;
using System.Globalization;
using System.IO;
using iTextSharp.text.pdf;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using System.Data;
using System.Collections;
using System.Text.RegularExpressions;

namespace Trident.Reports
{
    public partial class ApprovedChallanReport : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public ApprovedChallanReport() : base(0)
        {

        }
        #endregion

        #region Page Load
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //--------------- For Check Rights ----------------------
                if (Session["ScreenRights"] != null)
                {
                    Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                    if (dataTable.Contains("ApprovedChallanReport") == false)
                    {
                        HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                    }

                }
                if (IsPostBack) return;
                divId.Visible = false;
                divExport.Visible = false;
            }
            catch (Exception ex)
            {
                log.Error("Page_Load Approved Challan Report", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region Button Go Click Event
        public Regex MyRegex = new Regex("\\.\\.", RegexOptions.IgnoreCase | RegexOptions.CultureInvariant | RegexOptions.Compiled);
        protected void btnGo_Click(object sender, EventArgs e)
        {
            try
            {
                ReportBL objReportBl = new ReportBL();
                var objResult = new ApplicationResult();
                DateTime dtFromDateTime = DateTime.ParseExact(txtFromDate.Text + " " + txtFromTime.Text, "dd/MM/yyyy HH:mm:ss",
                    CultureInfo.InvariantCulture);
                DateTime dtToDateTime = DateTime.ParseExact(txtToDate.Text + " " + txtToTime.Text, "dd/MM/yyyy HH:mm:ss",
                    CultureInfo.InvariantCulture);
                if (dtFromDateTime <= dtToDateTime)
                {
                    //string UserName = Convert.ToString(Session[ApplicationSession.Username]);
                    objResult = new ReportBL().GetApprovedChallanReport(dtFromDateTime, dtToDateTime);

                    //objResult.ResultDt.Columns.AddRange(new DataColumn[1] { new DataColumn("UserName") });
                    //objResult.ResultDt.Columns["UserName"].DefaultValue = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());

                    if (objResult.resultDT != null && objResult.resultDT.Rows.Count > 0)
                    {
                        for (int b = 0; b < objResult.resultDT.Rows.Count; b++)
                        {
                            string rootLPImgPath = MyRegex.Replace(objResult.resultDT.Rows[b]["LPImage"].ToString(), "~");
                            string rootContextImgPath = MyRegex.Replace(objResult.resultDT.Rows[b]["ContextImagePath"].ToString(), "~");

                            objResult.resultDT.Rows[b]["LPImage"] = rootLPImgPath;
                            objResult.resultDT.Rows[b]["ContextImagePath"] = rootContextImgPath;
                        }
                    }

                    gvPendingChallanReport.DataSource = objResult.resultDT;
                    gvPendingChallanReport.DataBind();

                    if (gvPendingChallanReport.Rows.Count > 0)
                    {
                        gvPendingChallanReport.Visible = true;
                        imgPDFButton.Visible = divId.Visible = divExport.Visible = true; /*imgExcelButton.Visible =*/
                        divExport.Visible = true;
                        divId.Visible = false;
                    }
                    else
                    {
                        imgPDFButton.Visible = divId.Visible = false; /*imgExcelButton.Visible =*/
                        divExport.Visible = false;
                        divId.Visible = true;
                        gvPendingChallanReport.DataSource = null;
                        gvPendingChallanReport.DataBind();
                    }
                }
                else
                {
                    gvPendingChallanReport.Visible = false;
                    divExport.Visible = false;
                    divId.Visible = false;

                    ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                   "<script>alert('You are not select From Date greater than To Date.');</script>");
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                    "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }
        }
        #endregion

        #region Export to Excel Button Click
        protected void imgbtnExcel_OnClick(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = "application/vnd.ms-excel";
                Response.ContentEncoding = System.Text.Encoding.Unicode;
                Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());
                string filename = "ApprovedChallan_Report" + DateTime.Now.Date.ToString("dd-MM-yyyy") + ".xls";
                Response.AddHeader("content-disposition", "attachment;filename=" + filename);
                Response.Cache.SetCacheability(HttpCacheability.NoCache);

                using (StringWriter sw = new StringWriter())
                {
                    HtmlTextWriter hw = new HtmlTextWriter(sw);

                    StringWriter sw1 = new StringWriter();
                    HtmlTextWriter hw1 = new HtmlTextWriter(sw1);
                    if (gvPendingChallanReport != null && gvPendingChallanReport.Rows.Count > 0)
                    {
                        //To Export all pages
                        gvPendingChallanReport.AllowPaging = false;
                        //gvTotalQty.AllowPaging = false;
                        //   this.MilkStorageGrid();

                        gvPendingChallanReport.HeaderRow.BackColor = Color.White;
                        //gvTotalQty.HeaderRow.BackColor = Color.White;
                        foreach (TableCell cell in gvPendingChallanReport.HeaderRow.Cells)
                        {
                            cell.BackColor = gvPendingChallanReport.HeaderStyle.BackColor;
                        }
                        foreach (GridViewRow row in gvPendingChallanReport.Rows)
                        {
                            row.BackColor = Color.White;
                            foreach (TableCell cell in row.Cells)
                            {
                                if (row.RowIndex % 2 == 0)
                                {
                                    cell.BackColor = gvPendingChallanReport.AlternatingRowStyle.BackColor;
                                }
                                else
                                {
                                    cell.BackColor = gvPendingChallanReport.RowStyle.BackColor;
                                }
                                cell.CssClass = "textmode";
                                List<Control> controls = new List<Control>();

                                //Add controls to be removed to Generic List
                                foreach (Control control in cell.Controls)
                                {
                                    controls.Add(control);
                                }

                                //Loop through the controls to be removed and replace then with Literal
                                foreach (Control control in controls)
                                {
                                    switch (control.GetType().Name)
                                    {
                                        case "HyperLink":
                                            cell.Controls.Add(new Literal { Text = (control as HyperLink).Text });
                                            break;
                                        case "TextBox":
                                            cell.Controls.Add(new Literal { Text = (control as TextBox).Text });
                                            break;
                                        case "LinkButton":
                                            cell.Controls.Add(new Literal { Text = (control as LinkButton).Text });
                                            break;
                                        case "CheckBox":
                                            cell.Controls.Add(new Literal { Text = (control as CheckBox).Text });
                                            break;
                                        case "RadioButton":
                                            cell.Controls.Add(new Literal { Text = (control as RadioButton).Text });
                                            break;
                                    }
                                    cell.Controls.Remove(control);
                                }
                            }
                        }

                        gvPendingChallanReport.RenderControl(hw);

                        string strSubTitle = "APPROVED CHALLAN REPORT";
                        string strPath = Request.Url.GetLeftPart(UriPartial.Authority) + "/images/Logo1.gif";
                        string content = "<div align='center' style='font-family:verdana;font-size:16px'><img src='" + strPath + "'/><span style='font-size:16px;font-weight:bold;color:Black;'>" + Session[ApplicationSession.ORGANISATIONNAME] +
                            "</span><br/><span style='font-size:13px;font-weight:bold;color:Black;'>" + Session[ApplicationSession.ADDRESS] + "</span><br/>" +
                               "<span align='center' style='font-family:verdana;font-size:13px'><strong>" + strSubTitle + "</strong></span><br/>" +
                               "<div align='center' style='font-family:verdana;font-size:12px'><strong>From Date :</strong>" +
                           DateTime.ParseExact(txtFromDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture) +
                            "&nbsp;&nbsp;&nbsp;&nbsp;<strong> To Date :</strong>" +
                            DateTime.ParseExact(txtToDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture) +
                            "</div><br/> "
                            + sw.ToString() + "<br/> <br/> <br/>" + sw1.ToString() + "<br/></div>";
                        string style = @"<!--mce:2-->";
                        Response.Write(style);
                        Response.Output.Write(content);
                        gvPendingChallanReport.GridLines = GridLines.None;
                        //gvTotalQty.GridLines = GridLines.None;
                        Response.Flush();
                        Response.Clear();
                        Response.End();
                    }
                }
            }
            catch (Exception ex)
            {
            }


            //try
            //{
            //    Response.AddHeader("content-disposition", "attachment;filename=Transfer Report.xls");
            //    Response.Charset = "";
            //    Response.ContentType = "application/vnd.ms-excel";
            //    StringWriter sw = new StringWriter();
            //    HtmlTextWriter hw = new HtmlTextWriter(sw);
            //    gvTransfer.AllowPaging = false;
            //    gvTransfer.RenderControl(hw);
            //    string strTitle = "Verka Amritsar Dairy, Amritsar";

            //    string Date = DateTime.UtcNow.AddHours(5.5).ToString();
            //    string strSubTitle = "Transfer Report </br> as on " + Date;
            //    //string strPath = Request.Url.GetLeftPart(UriPartial.Authority) + "/images/GCMMF-297x300.jpg";
            //    string content =
            //        "<div align='center'>" +
            //        "<div>" +
            //        "<div style='align:left;font-size:20px;font-weight:bold;color:Maroon'></td>" + strTitle +
            //        "</div><br/><span style='font-size:20px;'>" + strSubTitle + "</span><br/>" +
            //        "<div><div align='left' style='font-family:verdana;font-size:13px;border-style: solid; border-width: thin;'>" +
            //        sw.ToString() + "</div> </div>";
            //    Response.Output.Write(content);
            //    Response.Flush();
            //    Response.End();
            //}
            //catch (Exception)
            //{
            //}



        }
        #endregion

        #region Export to PDF Button Click
        protected void imgbtnPDF_OnClick(object sender, EventArgs e)
        {
            try
            {
                string text = Session[ApplicationSession.ORGANISATIONNAME].ToString();
                string text1 = Session[ApplicationSession.ADDRESS].ToString();
                string text2 = "APPROVED CHALLAN REPORT";

                using (StringWriter sw = new StringWriter())
                {
                    using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                    {
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<div align='center' style='font-size:20px;font-weight:bold;color:Black;'>");
                        sb.Append(text);
                        sb.Append("</div>");
                        sb.Append("<br/>");
                        sb.Append("<div align='center' style='font-size:18px;font-weight:bold;color:Black;'>");
                        sb.Append(text1);
                        sb.Append("</div>");
                        sb.Append("<br/>");
                        sb.Append("<div align='center' style='font-size:26px;color:Maroon;'><b>");
                        sb.Append(text2);
                        sb.Append("</b></div>");
                        sb.Append("<br/>");
                        //string content = "<table style='display: table;width: 900px; clear:both;'> <tr> <th colspan='10' style='float: left;padding-left: 180px;'><div align='left'><strong>From Date: </strong>" + txtFromDate.Text + "</div></th>";

                        //content += "<th style='float:left; padding-left:-680px;'><strong>Transfer Wise:</strong>" + ddlTransfer.SelectedItem.Text + "</th>";

                        //content += "<th style='float:left; padding-left:-310px;'><strong>Shift:</strong> " + ddlShift.SelectedItem.Text + "</th>";

                        //content += "<th colspan='1' align='left' style=' float: left; padding-left:-200px;'><strong> To Date: </strong>" + //colspan='4' 
                        //txtToDate.Text + "</th>" +
                        //"</tr></table>";

                        //string content = "<table style='display: table;width: 600px; clear:both;'> <tr> <th colspan='10' style='float: center;'><div align='center'><strong>From Date: </strong>" + txtFromDate.Text + "<strong> To Date: </strong>" + txtToDate.Text + "</div></th> </tr></table>";
                        //sb.Append(content);
                        sb.Append("<br/>");

                        //------------------------------ For Generating Second Table in PDF Start ----------------------------------------------------

                        PdfPTable headerTable = new PdfPTable(4);
                        //TableCell headerCell = new TableCell();
                        PdfPCell headerCell01 = new PdfPCell(new Phrase("From Date and Time"));
                        headerCell01.Padding = 5;
                        headerCell01.BorderWidth = 1.5f;
                        headerCell01.HorizontalAlignment = Element.ALIGN_CENTER;
                        headerCell01.VerticalAlignment = Element.ALIGN_MIDDLE;
                        headerTable.AddCell(headerCell01);

                        PdfPCell headerCell02 = new PdfPCell(new Phrase("To Date and Time"));
                        headerCell02.Padding = 5;
                        headerCell02.BorderWidth = 1.5f;
                        headerCell02.HorizontalAlignment = Element.ALIGN_CENTER;
                        headerCell02.VerticalAlignment = Element.ALIGN_MIDDLE;
                        headerTable.AddCell(headerCell02);

                        PdfPCell headerCell03 = new PdfPCell(new Phrase("Total Approved Challans"));
                        headerCell03.Padding = 5;
                        headerCell03.BorderWidth = 1.5f;
                        headerCell03.HorizontalAlignment = Element.ALIGN_CENTER;
                        headerCell03.VerticalAlignment = Element.ALIGN_MIDDLE;
                        headerTable.AddCell(headerCell03);

                        PdfPCell headerCell04 = new PdfPCell(new Phrase("Report Generated By"));
                        headerCell04.Padding = 5;
                        headerCell04.BorderWidth = 1.5f;
                        headerCell04.HorizontalAlignment = Element.ALIGN_CENTER;
                        headerCell04.VerticalAlignment = Element.ALIGN_MIDDLE;
                        headerTable.AddCell(headerCell04);


                        string fDate = txtFromDate.Text + ' ' + txtFromTime.Text;
                        PdfPCell Cell1Hdr = new PdfPCell(new Phrase(fDate));
                        Cell1Hdr.HorizontalAlignment = Element.ALIGN_CENTER;
                        Cell1Hdr.VerticalAlignment = Element.ALIGN_MIDDLE;
                        Cell1Hdr.Padding = 5;
                        headerTable.AddCell(Cell1Hdr);

                        string tDate = txtToDate.Text + ' ' + txtToTime.Text;
                        PdfPCell Cell2Hdr = new PdfPCell(new Phrase(tDate));
                        Cell2Hdr.HorizontalAlignment = Element.ALIGN_CENTER;
                        Cell2Hdr.VerticalAlignment = Element.ALIGN_MIDDLE;
                        Cell2Hdr.Padding = 5;
                        headerTable.AddCell(Cell2Hdr);

                        string totalCount = gvPendingChallanReport.Rows.Count.ToString();
                        PdfPCell Cell3Hdr = new PdfPCell(new Phrase(totalCount));
                        Cell3Hdr.HorizontalAlignment = Element.ALIGN_CENTER;
                        Cell3Hdr.VerticalAlignment = Element.ALIGN_MIDDLE;
                        Cell3Hdr.Padding = 5;
                        headerTable.AddCell(Cell3Hdr);

                        string userName = Session[ApplicationSession.USERNAME].ToString();
                        PdfPCell Cell4Hdr = new PdfPCell(new Phrase(userName));
                        Cell4Hdr.HorizontalAlignment = Element.ALIGN_CENTER;
                        Cell4Hdr.VerticalAlignment = Element.ALIGN_MIDDLE;
                        Cell4Hdr.Padding = 5;
                        headerTable.AddCell(Cell4Hdr);



                        //------------------------------ For Generating Second Table in PDF Start ----------------------------------------------------

                        //TableCell headerCell = new TableCell();
                        if (gvPendingChallanReport != null && gvPendingChallanReport.Rows.Count > 0)
                        {
                            PdfPTable pdfPTable = new PdfPTable(gvPendingChallanReport.HeaderRow.Cells.Count);
                            //TableCell headerCell = new TableCell();
                            PdfPCell headerCell = new PdfPCell(new Phrase("Sr.No."));
                            headerCell.Padding = 5;
                            headerCell.BorderWidth = 1.5f;
                            headerCell.HorizontalAlignment = Element.ALIGN_CENTER;
                            headerCell.VerticalAlignment = Element.ALIGN_MIDDLE;
                            pdfPTable.AddCell(headerCell);

                            PdfPCell headerCell1 = new PdfPCell(new Phrase("Challan Date & Time"));
                            headerCell1.Padding = 5;
                            headerCell1.BorderWidth = 1.5f;
                            headerCell1.HorizontalAlignment = Element.ALIGN_CENTER;
                            headerCell.VerticalAlignment = Element.ALIGN_MIDDLE;
                            pdfPTable.AddCell(headerCell1);

                            PdfPCell headerCell2 = new PdfPCell(new Phrase("Challan ID"));
                            headerCell2.Padding = 5;
                            headerCell2.BorderWidth = 1.5f;
                            headerCell2.HorizontalAlignment = Element.ALIGN_CENTER;
                            headerCell.VerticalAlignment = Element.ALIGN_MIDDLE;
                            pdfPTable.AddCell(headerCell2);

                            PdfPCell headerCell3 = new PdfPCell(new Phrase("Challan Amount (Rs)"));
                            headerCell3.Padding = 5;
                            headerCell3.BorderWidth = 1.5f;
                            headerCell3.HorizontalAlignment = Element.ALIGN_CENTER;
                            headerCell.VerticalAlignment = Element.ALIGN_MIDDLE;
                            pdfPTable.AddCell(headerCell3);

                            PdfPCell headerCell4 = new PdfPCell(new Phrase("Vehicle Number"));
                            headerCell4.Padding = 5;
                            headerCell4.BorderWidth = 1.5f;
                            headerCell4.HorizontalAlignment = Element.ALIGN_CENTER;
                            headerCell.VerticalAlignment = Element.ALIGN_MIDDLE;
                            pdfPTable.AddCell(headerCell4);

                            PdfPCell headerCell5 = new PdfPCell(new Phrase("Junction Name"));
                            headerCell5.Padding = 5;
                            headerCell5.BorderWidth = 1.5f;
                            headerCell5.HorizontalAlignment = Element.ALIGN_CENTER;
                            headerCell.VerticalAlignment = Element.ALIGN_MIDDLE;
                            pdfPTable.AddCell(headerCell5);

                            PdfPCell headerCell6 = new PdfPCell(new Phrase("Approved By"));
                            headerCell6.Padding = 5;
                            headerCell6.BorderWidth = 1.5f;
                            headerCell6.HorizontalAlignment = Element.ALIGN_CENTER;
                            headerCell.VerticalAlignment = Element.ALIGN_MIDDLE;
                            pdfPTable.AddCell(headerCell6);

                            PdfPCell headerCell7 = new PdfPCell(new Phrase("License Plate"));
                            headerCell7.Padding = 5;
                            headerCell7.BorderWidth = 1.5f;
                            headerCell7.HorizontalAlignment = Element.ALIGN_CENTER;
                            headerCell7.VerticalAlignment = Element.ALIGN_MIDDLE;
                            pdfPTable.AddCell(headerCell7);

                            PdfPCell headerCell8 = new PdfPCell(new Phrase("Context Image"));
                            headerCell8.Padding = 5;
                            headerCell8.BorderWidth = 1.5f;
                            headerCell8.HorizontalAlignment = Element.ALIGN_CENTER;
                            headerCell8.VerticalAlignment = Element.ALIGN_MIDDLE;
                            pdfPTable.AddCell(headerCell8);

                            //float[] widthsTAS = { 150f, 220f, 150f,
                            //                      150f, 200f, 105f,
                            //                      85f, 85f, 175f,
                            //                      175f, 175f,150f,
                            //                        150f,150f
                            //};
                            //pdfPTable.SetWidths(widthsTAS);

                            for (int i = 0; i < gvPendingChallanReport.Rows.Count; i++)
                            {
                                if (gvPendingChallanReport.Rows[i].RowType == DataControlRowType.DataRow)
                                {
                                    for (int j = 0; j < gvPendingChallanReport.Columns.Count; j++)
                                    {
                                        string cellText = "";
                                        if (j == 7 || j == 8)
                                        {
                                            System.Web.UI.WebControls.Image img = gvPendingChallanReport.Rows[i].Cells[j].Controls[0] as System.Web.UI.WebControls.Image;
                                            var imageURL1 = Request.Url.GetLeftPart(UriPartial.Authority) + img.ImageUrl.Replace("~", string.Empty);
                                            imageURL1 = imageURL1.Replace(@"\", "/");
                                            iTextSharp.text.Image myImage = iTextSharp.text.Image.GetInstance(imageURL1);
                                            PdfPCell cell = new PdfPCell(myImage, true);
                                            cell.HorizontalAlignment = Element.ALIGN_CENTER;
                                            cell.VerticalAlignment = Element.ALIGN_MIDDLE;
                                            cell.Padding = 5;
                                            cell.FixedHeight = 80f;
                                            //cell.Width = 100f;
                                            pdfPTable.AddCell(cell);
                                        }
                                        else
                                        {
                                            //if (j == 14)
                                            //{
                                            //    cellText = (((TextBox)gvPendingChallanReport.Rows[i].FindControl("Remarks")).Text).ToString();
                                            //}
                                            //else
                                            //{
                                            cellText = Server.HtmlDecode(gvPendingChallanReport.Rows[i].Cells[j].Text);
                                            //}
                                            DateTime dDate;
                                            double dbvalue;
                                            int intvalue;

                                            if (DateTime.TryParse(cellText, out dDate))
                                            {
                                                PdfPCell CellTwoHdr = new PdfPCell(new Phrase(cellText));
                                                CellTwoHdr.HorizontalAlignment = Element.ALIGN_CENTER;
                                                CellTwoHdr.VerticalAlignment = Element.ALIGN_MIDDLE;
                                                CellTwoHdr.Padding = 5;
                                                pdfPTable.AddCell(CellTwoHdr);
                                            }
                                            else if (double.TryParse(cellText, out dbvalue) || Int32.TryParse(cellText, out intvalue))
                                            {
                                                PdfPCell CellTwoHdr = new PdfPCell(new Phrase(cellText));
                                                CellTwoHdr.HorizontalAlignment = Element.ALIGN_CENTER;
                                                CellTwoHdr.VerticalAlignment = Element.ALIGN_MIDDLE;
                                                CellTwoHdr.Padding = 5;
                                                pdfPTable.AddCell(CellTwoHdr);
                                            }
                                            else
                                            {
                                                PdfPCell CellTwoHdr = new PdfPCell(new Phrase(cellText));
                                                CellTwoHdr.HorizontalAlignment = Element.ALIGN_CENTER;
                                                CellTwoHdr.VerticalAlignment = Element.ALIGN_MIDDLE;
                                                CellTwoHdr.Padding = 5;
                                                pdfPTable.AddCell(CellTwoHdr);
                                            }
                                        }
                                    }
                                    pdfPTable.HeaderRows = 1;
                                }
                            }

                            var imageURL = Request.Url.GetLeftPart(UriPartial.Authority) + "/images/BerhampurPolice_100.jpg";
                            iTextSharp.text.Image jpg = iTextSharp.text.Image.GetInstance(imageURL);

                            jpg.Alignment = Element.ALIGN_CENTER;
                            jpg.SetAbsolutePosition(130, 1050);

                            StringReader sr = new StringReader(sb.ToString());
                            //StringReader sr1 = new StringReader(sb1.ToString());
                            Document pdfDoc = new Document(iTextSharp.text.PageSize.A2.Rotate(), -50f, -50f, 40f, 30f);

                            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                            PDFBackgroundHelper pageEventHelper = new PDFBackgroundHelper();
                            writer.PageEvent = pageEventHelper;
                            pdfDoc.Open();
                            htmlparser.Parse(sr);
                            pdfDoc.Add(jpg);
                            //---- For Add Header table -----
                            pdfDoc.Add(headerTable);
                            System.Text.StringBuilder sb1 = new System.Text.StringBuilder();
                            sb1.Append("<br/><br/>");
                            StringReader sr1 = new StringReader(sb1.ToString());
                            htmlparser.Parse(sr1);


                            pdfDoc.Add(pdfPTable);
                            //htmlparser.Parse(sr1);

                            //----------- FOOTER -----------
                            PdfPTable footer = new PdfPTable(2);
                            PdfPTable footer2 = new PdfPTable(2);

                            float[] cols = new float[] { 100, 300 };

                            footer.SetWidthPercentage(cols, iTextSharp.text.PageSize.A2);
                            footer2.SetWidthPercentage(cols, iTextSharp.text.PageSize.A2);
                            footer.WriteSelectedRows(0, -1, pdfDoc.LeftMargin + 200, 90, writer.DirectContent);
                            footer2.WriteSelectedRows(0, -1, pdfDoc.LeftMargin + 200, 70, writer.DirectContent);
                            //----------- /FOOTER -----------

                            pdfDoc.Close();
                            Response.ContentType = "application/pdf";

                            Response.AddHeader("content-disposition", "attachment;" + "filename=ApprovedChallanReport" + DateTime.Now.Date.ToString("dd-MM-yyyy") + ".pdf");
                            Response.Cache.SetCacheability(HttpCacheability.NoCache);
                            Response.Write(pdfDoc);
                            Response.Flush();
                            Response.Clear();
                            Response.End();
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                    "<script>alert('Oops! There is some technical Problem. Contact to your Administrator.');</script>");
            }



        }
        #endregion

        #region PDFBackgroundHelper Event
        class PDFBackgroundHelper : PdfPageEventHelper
        {

            private PdfContentByte cb;
            private List<PdfTemplate> templates;
            iTextSharp.text.Font FONT = new iTextSharp.text.Font(iTextSharp.text.Font.FontFamily.HELVETICA, 12, iTextSharp.text.Font.BOLD);
            int iCount = 0;
            //constructor
            public PDFBackgroundHelper()
            {
                this.templates = new List<PdfTemplate>();

            }

            public override void OnEndPage(PdfWriter writer, Document document)
            {
                base.OnEndPage(writer, document);

                cb = writer.DirectContentUnder;
                PdfTemplate templateM = cb.CreateTemplate(500, 500);
                templates.Add(templateM);

                int pageN = writer.CurrentPageNumber;
                String pageText = "Page No : " + (writer.PageNumber);
                DateTime dtTime = DateTime.Now;
                BaseFont bf = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);

                if (this.iCount != 0)
                {
                    ColumnText.ShowTextAligned(cb, Element.ALIGN_LEFT, new Phrase("Pending Challan REPORT", FONT), 790, 1165, 0);
                    // ColumnText.ShowTextAligned(cb, Element.ALIGN_LEFT, new Phrase("Verka Amritsar Dairy", FONT), 790, 1180, 0);
                }
                iCount = iCount + 1;

                float len = bf.GetWidthPoint(pageText, 15);
                float len1 = bf.GetWidthPoint(dtTime.ToString(), 12);
                cb.BeginText();
                cb.SetFontAndSize(bf, 15);
                cb.SetTextMatrix(document.LeftMargin + 93, document.PageSize.GetBottom(document.BottomMargin) - 13);
                cb.ShowText(dtTime.ToString());
                cb.SetTextMatrix(document.LeftMargin + 1550, document.PageSize.GetBottom(document.BottomMargin) - 13);
                cb.ShowText(pageText);
                cb.EndText();
                cb.AddTemplate(templateM, document.LeftMargin + 797 + len, document.PageSize.GetBottom(document.BottomMargin) - 13);
            }
        }
        #endregion

        #region btnBack and btnCancel Click Event
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ClientUI/CRODashboard.aspx", false);
        }

        #endregion
    }
}