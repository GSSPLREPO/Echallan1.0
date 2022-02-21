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
using System.Security.AccessControl;
using System.Security.Principal;
using System.Collections;
using Trident.BL;

namespace Trident.ClientUI
{
    public partial class CROChallan : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        static string jsonFilePath="";
        static string violationPath = "";
        static DateTime ViolationDateTime;
        static string camera = "";
        static string screenShot = "";
        static string contextImg = "";
        private static string userName = "";
        #endregion

        #region Page Base
        public CROChallan() : base(0)
        {

        }
        #endregion

        #region Page Load Event
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack) return;
                //--------------- For Check Rights ----------------------
                if (Session["ScreenRights"] != null)
                {
                    Hashtable dataTable = (Hashtable)Session["ScreenRights"];
                    if (dataTable.Contains("CROChallan") == false)
                    {
                        HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                    }
                }
                //BindVehicleType();
                var strFinalString = Request.QueryString["FinalString"] != null && Request.QueryString["FinalString"] != "" ? Request.QueryString["FinalString"] : "";
                if (strFinalString != "")
                {
                    var stringarr = strFinalString.Split('$');
                    var PlateImages = stringarr[1];
                    violationPath = PlateImages;
                    var Plate = stringarr[2];
                    DateTime ViolationDate =Convert.ToDateTime(stringarr[3]);
                    ViolationDateTime = ViolationDate;
                    camera = stringarr[4];
                    txtVehicleNo.Text = Plate;
                    userName = Session[ApplicationSession.USERNAME].ToString();

                    var PoliceStation = stringarr[5];
                    var JsonFilePath = stringarr[6];
                    hdnJsonFilePath.Value = JsonFilePath;
                    jsonFilePath = JsonFilePath;
                    var ScreenShots = stringarr[7].Split('^').Count();
                    screenShot = stringarr[7].Split('^')[0];
                    var ContextImage = stringarr[8];
                    contextImg = ContextImage;
                    hdnScreenShots.Value = stringarr[7];
                    imgPlate.ImageUrl = PlateImages;
                    imgContextImage.ImageUrl = ContextImage;
                    //txtSearchVehicleNo.Text = Plate;
                    txtDateTimeOfViolation.Text = ViolationDate.ToString();
                    //txtPoliceStation.Text = PoliceStation;
                    //txtLocation.Text = Camera;
                    //txtDueDate.Text = DateTime.Now.AddDays(Convert.ToInt32(Session["DueDays"])).ToShortDateString();
                    hdnCount.Value = ScreenShots.ToString();
                    hdnSc.Value = stringarr[7].ToString().Replace(@"\", "&");
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "addImages('" +  + "', " + ScreenShots + ")", true);
                    //BindPendingChallanGrid();
                    txtDateTimeOfViolation.Attributes.Add("readonly", "readonly");
                    //txtDueDate.Attributes.Add("readonly", "readonly");
                    hdnHeadOfficeId.Value = Session["HEADOFFICEID"].ToString();
                    //txtNoOfViolations.Attributes.Add("readonly", "readonly");
                    //txtLocation.Attributes.Add("readonly", "readonly");
                }
            }
            catch (Exception ex)
            {
                log.Error("Page_Load", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        public System.Drawing.Image Base64ToImage(string arr)
        {
            byte[] imageBytes = Convert.FromBase64String(arr);
            MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);
            ms.Write(imageBytes, 0, imageBytes.Length);
            System.Drawing.Image image = System.Drawing.Image.FromStream(ms, true);
            return image;
        }

        [WebMethod]
        public static string SaveChallan(string vehNumber)
        {
            try
            {

                string message = "";

                //int index = data.LPImage.ToString().IndexOf(".jpg");
                //string violationPath = data.LPImage.ToString().Substring(10, index - 6);

                var jsonFileName = jsonFilePath.Split('\\').Where(k => k.Contains(".json")).FirstOrDefault();

                var destPath = System.Configuration.ConfigurationSettings.AppSettings["DestinationPath"];
                string strDestFilePath = destPath;
                string camId = camera.Split('-')[0];
                string camName = camera.Split('-')[1];

                ApplicationResult objResult = new CameraBL().ChallanBridge_Insert(camId, ViolationDateTime,
                        vehNumber, violationPath, jsonFileName);
                if (objResult != null)
                {
                    if (objResult.resultDT.Rows.Count > 0)
                    {
                        var isStaging = System.Configuration.ConfigurationSettings.AppSettings["IsStagingURL"];
                        dynamic client;
                        if (isStaging == "true")
                        {
                            client = new Staging.TMSeChallanImplClient();
                        }
                        else
                        {
                            client = new ITMSeChallanImplService.TMSeChallanImplClient();
                        }

                        // call the Echallan API
                        //var res = new Staging.TMSeChallanImplClient();
                        var currentImg = CombineImage(HttpContext.Current.Server.MapPath(violationPath), HttpContext.Current.Server.MapPath(screenShot), vehNumber, HttpContext.Current.Server.MapPath(contextImg));
                        string res = client.generateChallan(camId, objResult.resultDT.Rows[0][2].ToString(), camId, "10.10.10.10", "", camId, userName, ViolationDateTime.ToString("yyyy-MM-dd hh:mm:ss"), "", vehNumber, "", "04", "", "",
                                "", "", "", "", "", "", ImageToBase64(currentImg));
                        if (res.Contains("eCh-000"))
                        {
                            SetAccessRights(jsonFilePath);
                            SetAccessRights(strDestFilePath);
                            strDestFilePath = strDestFilePath + jsonFileName;
                            System.IO.File.Move(jsonFilePath, strDestFilePath);
                            new CameraBL().ChalanBridge_Update(Convert.ToInt32(objResult.resultDT.Rows[0][0]), res.Split('|')[1]);
                            message = "success";
                        }
                        else
                        {
                            // pop up message
                            ApplicationResult objAPIResponse = new ApplicationResult();
                            objAPIResponse = new CameraBL().APIResponseMessage("generateChallan");
                            for (int i = 0; i < objAPIResponse.resultDT.Rows.Count; i++)
                            {
                                if (objAPIResponse.resultDT.Rows[i][2].ToString().Contains(res.Split('|')[0]))
                                {
                                    if (objAPIResponse.resultDT.Rows[i][3].ToString().Contains("Success"))
                                    {
                                        message = "success";
                                    }
                                    else
                                    {
                                        message = vehNumber + " : " + objAPIResponse.resultDT.Rows[i][3].ToString();
                                        return JsonConvert.SerializeObject(message);
                                    }
                                }
                            }
                        }
                    }
                }
                return JsonConvert.SerializeObject(message);
            }
            catch (Exception ex)
            {
                log.Error("SaveChallan", ex);
                //ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
            return "";
        }

        #region SetAccessRights Method
        private static void SetAccessRights(string file)
        {
            FileSecurity fileSecurity = File.GetAccessControl(file);
            AuthorizationRuleCollection rules = fileSecurity.GetAccessRules(true, true, typeof(NTAccount));

            foreach (FileSystemAccessRule rule in rules)
            {
                string name = rule.IdentityReference.Value;

                if (rule.FileSystemRights != FileSystemRights.FullControl)
                {
                    FileSecurity newFileSecurity = File.GetAccessControl(file);
                    FileSystemAccessRule newRule = new FileSystemAccessRule(name, FileSystemRights.FullControl, AccessControlType.Allow);
                    newFileSecurity.AddAccessRule(newRule);
                    File.SetAccessControl(file, newFileSecurity);
                }
            }
        }
        #endregion

        //#region BindVehicleType Method
        //public void BindVehicleType()
        //{
        //    try
        //    {
        //        CROChallanBL objCROChallanBL = new CROChallanBL();
        //        ApplicationResult objResult = new ApplicationResult();
        //        Controls objControl = new Controls();
        //        objResult = objCROChallanBL.CROChallan_SelectAll();
        //        if (objResult != null)
        //        {
        //            if (objResult.resultDT.Rows.Count > 0)
        //            {
        //                objControl.BindDropDown_ListBox(objResult.resultDT, ddlVehicleType, "VehicleType", "Id");
        //            }

        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Error("BindVehicleType", ex);
        //        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
        //    }
        //}
        //#endregion

        //#region BindPendingChallanGrid Method
        //public void BindPendingChallanGrid()
        //{
        //    try
        //    {
        //        CROChallanBL objCROChallanBL = new CROChallanBL();
        //        ApplicationResult objResult = new ApplicationResult();

        //        objResult = objCROChallanBL.CROChallan_PendingChallan(txtSearchVehicleNo.Text);
        //        if (objResult != null)
        //        {
        //            gvListOfPendingEchallan.Visible = true;
        //            gvListOfPendingEchallan.DataSource = objResult.resultDS.Tables[0];
        //            gvListOfPendingEchallan.DataBind();
        //            BindOffense(objResult.resultDS.Tables[2]);
        //            ////txtNoOfViolations.Text = objResult.resultDS.Tables[1].Rows[0][0].ToString();
        //            hdnPendingChallanIds.Value = objResult.resultDS.Tables[4].Rows[0][0] != null ? objResult.resultDS.Tables[4].Rows[0][0].ToString() : "";
        //            ////hdnTotalPendingAmount.Value = objResult.resultDS.Tables[3].Rows[0][0].ToString();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Error("BindPendingChallanGrid", ex);
        //        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
        //    }
        //}
        //#endregion

        //#region BindOffense Method
        //public void BindOffense(DataTable dtResult)
        //{
        //    try
        //    {
        //        Controls objControl = new Controls();
        //        if (dtResult.Rows.Count > 0)
        //        {
        //            objControl.BindDropDown_ListBox(dtResult, ddlOffense, "Name", "Id");
        //        }
        //        ddlOffense.Items.Insert(0, new ListItem("--Select--", "-1"));
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Error("BindOffense", ex);
        //        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
        //    }
        //}
        //#endregion

        #region btnBack and btnCancel Click Event
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ClientUI/CRODashboard.aspx", false);
        }
        #endregion

        private static string ImageToBase64(string path)
        {
            byte[] imageBytes = System.IO.File.ReadAllBytes(path);
            return (Convert.ToBase64String(imageBytes));
        }

        private static string CombineImage(string lprImage, string screenShot, string vehPlateNo, string contextImg)
        {
            //String jpg1 = @"D:\Nirmal\Combine\a.jpg";
            //String jpg2 = @"D:\Nirmal\Combine\b.jpg";
            String jpg3 = System.Configuration.ConfigurationSettings.AppSettings["DestinationPath"]+ vehPlateNo+".jpg";

            System.Drawing.Image img1 = System.Drawing.Image.FromFile(lprImage);
            System.Drawing.Image img2 = System.Drawing.Image.FromFile(screenShot);
            System.Drawing.Image img4 = System.Drawing.Image.FromFile(contextImg);

            int width = img1.Width + img2.Width + img4.Width;
            int height = Math.Max(img1.Height, img2.Height);

            Bitmap img3 = new Bitmap(width, height);
            Graphics g = Graphics.FromImage(img3);

            g.Clear(Color.Black);
            g.DrawImage(img1, new Point(100, 200));
            g.DrawImage(img2, new Point(img4.Width + 20, 0));
            g.DrawImage(img4, new Point(10, 300));

            g.Dispose();
            img1.Dispose();
            img2.Dispose();

            img3.Save(jpg3, System.Drawing.Imaging.ImageFormat.Jpeg);
            img3.Dispose();

            return jpg3;
        }

    }
}