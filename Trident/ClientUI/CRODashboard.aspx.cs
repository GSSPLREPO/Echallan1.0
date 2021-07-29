using log4net;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Runtime.Remoting.Contexts;
using System.Runtime.Serialization.Json;
using System.Security.AccessControl;
using System.Security.Policy;
using System.Security.Principal;
using System.Web;
using System.Web.Hosting;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.Bl;
using Trident.Bo;
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class CRODashboard : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public CRODashboard() : base(0)
        {

        }
        #endregion

        #region Load Event
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
                        if (dataTable.Contains("CRODashboard") == false)
                        {
                            HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                        }
                    }

                    hfOrganisationId.Value = Convert.ToInt32(Session[ApplicationSession.ORGANISATIONID]).ToString();
                    hfEmployeeId.Value = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEID]).ToString();
                    // BindCRODashboard();

                    ViewState["Mode"] = "Save";
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region GetCRODashboard webmethod for bind Grid
        [WebMethod]
        public static string[] GetCRODashboard(int OrganisationId)
        {
            try
            {
                //DirectoryInfo infoImages = new DirectoryInfo(HostingEnvironment.MapPath(@"~\PlateImages\"));
                //var imageFileName = infoImages.GetFiles().OrderByDescending(p => p.CreationTime).FirstOrDefault() != null ? infoImages.GetFiles().OrderByDescending(p => p.CreationTime).FirstOrDefault().ToString().Split('.') : null;
                List<string> strCRODashboard = new List<string>();
                //DirectoryInfo infoJson = new DirectoryInfo(@"R:\RLVD DATA\");
                DirectoryInfo infoJson = new DirectoryInfo(@"C:\Genetec\");
                List<FileInfo> objList;

                //if (imageFileName != null)
                //{
                //    string strFile = imageFileName[0] + ".JSON";
                //    string jsonFilePath = @"C:\Genetec\" + strFile;
                //    string strDestFilePath = @"C:\inetpub\";

                //    SetAccessRights(jsonFilePath);
                //    SetAccessRights(strDestFilePath);
                //    strDestFilePath = strDestFilePath + strFile;
                //    System.IO.File.Move(jsonFilePath, strDestFilePath);

                //    DateTime Creation = File.GetCreationTime(jsonFilePath);
                //    var jsonFileName = infoJson.GetFiles().Where(p => p.CreationTime > Creation);
                //    objList = jsonFileName.ToList();
                //    GetData(objList);
                //}
                //else
                //{
                var jsonFileName = infoJson.GetFiles().OrderBy(p => p.CreationTime);
                objList = jsonFileName.ToList();
                //GetData(objList);
                //}
                //imgPlate.ImageUrl = @"~\PlateImages\" + "14052019015900.jpg";
                strCRODashboard.Add(JsonConvert.SerializeObject(GetData(objList)));

                return strCRODashboard.ToArray();
            }
            catch (Exception ex)
            {
                log.Error("GetCRODashboard", ex);
                return null;
            }
        }
        #endregion

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

        #region GetData Method
        public static async System.Threading.Tasks.Task<DataTable> GetData(List<FileInfo> jsonFileName)
        {
            try
            {
                DataTable dtResult = new DataTable();

                dtResult.Columns.Add("SRNo", typeof(int));
                dtResult.Columns.Add("VehiclePlateNo", typeof(string));
                dtResult.Columns.Add("LPImage", typeof(string));
                dtResult.Columns.Add("LPlate", typeof(string));
                dtResult.Columns.Add("DateTime", typeof(string));
                dtResult.Columns.Add("Place", typeof(string));
                dtResult.Columns.Add("PoliceStation", typeof(string));
                dtResult.Columns.Add("JsonFilePath", typeof(string));
                dtResult.Columns.Add("ScreenShots", typeof(string));
                dtResult.Columns.Add("FinalString", typeof(string));
                dtResult.Columns.Add("ContextImage", typeof(string));

                foreach (var strfile in jsonFileName)
                {
                    var file = strfile.Name;
                    Violation objViolation = new Violation();

                    //string FilePath = @"R:\RLVD DATA\" + file;
                    string FilePath = @"C:\Genetec\" + file;
                    StreamReader reader;
                    string strJsonData = "";
                    if (File.Exists(FilePath))
                    {
                        reader = new StreamReader(FilePath);
                        strJsonData = reader.ReadToEnd();
                        //HttpClient client = new HttpClient();
                        reader.Dispose();

                        //HttpClient client = new HttpClient();

                        //using (Stream s = client.GetStreamAsync(FilePath).Result)
                        //using (StreamReader sr = new StreamReader(s))
                        //using (JsonReader jsnreader = new JsonTextReader(sr))
                        //{
                        //    JsonSerializer serializer = new JsonSerializer();
                        //    // read the json from a stream // json size doesn't matter because only a small piece is read at a time from the HTTP request Person p = serializer.Deserialize<Person>(reader); }
                        //    objViolation = serializer.Deserialize<Violation>(jsnreader);
                        //}
                        //var response = await client.PostAsync();
                        //using (var s = await reader.ReadToEnd().)
                        //using (Stream s = client.GetStreamAsync("http://www.test.com/large.json").Result)
                        //using (StreamReader sr = new StreamReader(FilePath))
                        //{
                        //    using (JsonReader jsnreader = new JsonTextReader(sr))
                        //    {
                        //        JsonSerializer serializer = new JsonSerializer();

                        //        // read the json from a stream
                        //        // json size doesn't matter because only a small piece is read at a time from the HTTP request
                        //        objViolation = serializer.Deserialize<Violation>(jsnreader);
                        //    }
                        //}

                    }
                    //DataContractJsonSerializer deviolation = new DataContractJsonSerializer(typeof(strJsonData));


                    objViolation = JsonConvert.DeserializeObject<Violation>(strJsonData);

                    //HttpClient client = new HttpClient();

                    //using (Stream s = client.GetStreamAsync("http://www.test.com/large.json").Result)
                    //using (StreamReader sr = new StreamReader(s))

                    //objViolation = serializer.Deserialize<Violation>(reader);
                    if (objViolation.ContextImage != "" && objViolation.ReadImage != "")
                    {
                        try
                        {
                            var contextImage = objViolation.ContextImage;
                            if (!File.Exists(HostingEnvironment.MapPath(@"~\ContextImage\" + file.Split('.')[0] + ".jpg")))
                            {
                                Base64ToImage(contextImage).Save(HostingEnvironment.MapPath(@"~\ContextImage\" + file.Split('.')[0] + ".jpg"));
                            }
                            var contextImagePath = (@"..\ContextImage\" + file.Split('.')[0] + ".jpg");
                            contextImagePath = contextImagePath.Replace("\\", @"\");

                            var plateImage = objViolation.ReadImage;

                            if (!File.Exists(HostingEnvironment.MapPath(@"~\PlateImages\" + file.Split('.')[0] + ".jpg")))
                            {
                                Base64ToImage(plateImage).Save(HostingEnvironment.MapPath(@"~\PlateImages\" + file.Split('.')[0] + ".jpg"));
                            }
                            var plateImagePath = (@"..\PlateImages\" + file.Split('.')[0] + ".jpg");
                            plateImagePath = plateImagePath.Replace("\\", @"\");

                            var ssCount = objViolation.ScreenShots.Count;
                            string ssPath = "";
                            for (int i = 1; i <= ssCount; i++)
                            {
                                if (!File.Exists(HostingEnvironment.MapPath(@"~\ScreenShots\" + file.Split('.')[0] + "_ss_" + i + ".jpg")))
                                {
                                    Base64ToImage(objViolation.ScreenShots[i - 1]).Save(HostingEnvironment.MapPath(@"~\ScreenShots\" + file.Split('.')[0] + "_ss_" + i + ".jpg"));
                                }
                                if (i == 1)
                                {
                                    ssPath += @"..\ScreenShots\" + file.Split('.')[0] + "_ss_" + i + ".jpg";
                                }
                                else
                                {
                                    ssPath += "^" + @"..\ScreenShots\" + file.Split('.')[0] + "_ss_" + i + ".jpg";
                                }
                            }


                            var Amount = objViolation.ViolationInformation.Amount;
                            var LicensePlate = objViolation.ViolationInformation.LicensePlate;
                            var Remarks = objViolation.ViolationInformation.Remarks;
                            var DateTime = objViolation.ReadTimestamp.Split('_')[0] + " " + objViolation.ReadTimestamp.Split('_')[1].Replace("-", ":");
                            var Place = objViolation.LprUnitName;
                            var PoliceStation = "";
                            var ScreenShots = ssPath;
                            var FinalString = (jsonFileName.IndexOf(strfile) + 1) + "$" + plateImagePath + "$" + LicensePlate + "$" + DateTime + "$" + Place + "$" + PoliceStation + "$" + FilePath + "$" + ScreenShots + "$" + contextImagePath;
                            //var 

                            DataRow drViolation = dtResult.NewRow();
                            drViolation["SRNo"] = jsonFileName.IndexOf(strfile) + 1;
                            drViolation["LPImage"] = plateImagePath != null && plateImagePath != "" ? plateImagePath : "NA";
                            drViolation["ContextImage"] = contextImagePath != null && contextImagePath != "" ? contextImagePath : "NA";
                            drViolation["LPlate"] = LicensePlate;
                            drViolation["DateTime"] = DateTime;
                            drViolation["Place"] = Place != null && Place != "" ? Place : "NA";
                            drViolation["PoliceStation"] = PoliceStation != null && PoliceStation != "" ? PoliceStation : "NA";
                            drViolation["JsonFilePath"] = "'" + FilePath + "'";
                            drViolation["ScreenShots"] = ScreenShots != null && ScreenShots != "" ? ScreenShots : "NA";
                            drViolation["FinalString"] = "'" + FinalString + "'";

                            dtResult.Rows.Add(drViolation);
                        }
                        catch (Exception ex)
                        {
                            log.Error("PathError " + strJsonData + " " + objViolation.ContextImage + "<br/>" + objViolation.ReadImage + "<br/>" + objViolation.ScreenShots, ex);
                        }
                    }
                }

                return dtResult;
            }
            catch (Exception ex)
            {
                log.Error("GetData : " + ex.Message.ToString(), ex);

            }
            return null;
        }
        #endregion

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

        //#region Bind CRO Grid
        //public void BindCRODashboard()
        //{
        //    try
        //    {
        //        CRODashboardBL objItemBL = new CRODashboardBL();
        //        ApplicationResult objResult = new ApplicationResult();
        //        objResult = objItemBL.CRODashboard_SelectAll(Convert.ToInt32(Session[OrganisationBO.ORGANISATION_ORGANISATIONID].ToString()));
        //        if (objResult != null)
        //        {
        //            DataTable dtResult = new DataTable();
        //            dtResult = objResult.resultDT;
        //            gvCRODashboard.DataSource = dtResult;
        //            gvCRODashboard.DataBind();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Error("Error", ex);
        //        ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
        //    }
        //}
        //#endregion

        #region CRO Dashboard RowDataBound Event
        protected void gvCRODashboard_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(gvCRODashboard, "Select$" + e.Row.RowIndex);
            //    e.Row.Attributes["style"] = "cursor:pointer";
            //}
        }
        #endregion


        #region CRO Dashboard SelectedIndexChanged Event
        protected void gvCRODashboard_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int index = gvCRODashboard.SelectedRow.RowIndex;
            //int id = Convert.ToInt32(gvCRODashboard.SelectedRow.Cells[0].Text);
            //string country = gvCRODashboard.SelectedRow.Cells[1].Text;
        }
        #endregion


        #region For API Call
        [WebMethod]
        public string InsertAPIData( int Id) 
        {
            return null;
        }
        #endregion

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Control control = new Control();
            GridView gvTemp = new GridView();

            

        }
    }
}