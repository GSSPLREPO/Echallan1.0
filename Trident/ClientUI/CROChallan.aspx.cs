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


namespace Trident.ClientUI
{
    public partial class CROChallan : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
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
                    var Plate = stringarr[2];
                    var ViolationDate = stringarr[3];
                    var Camera = stringarr[4];
                    var PoliceStation = stringarr[5];
                    var JsonFilePath = stringarr[6];
                    hdnJsonFilePath.Value = JsonFilePath;
                    var ScreenShots = stringarr[7].Split('^').Count();
                    var ContextImage = stringarr[8];
                    hdnScreenShots.Value = stringarr[7];
                    imgPlate.ImageUrl = PlateImages;
                    imgContextImage.ImageUrl = ContextImage;
                    txtSearchVehicleNo.Text = Plate;
                    txtDateTimeOfViolation.Text = ViolationDate;
                    txtPoliceStation.Text = PoliceStation;
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
        public static string SaveChallan(ChallanBO challanBO, List<ChallanOffenseBO> listChallanOffenseBO)
        {
            try
            {
                challanBO.IsDeleted = false;
                challanBO.CreatedBy = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                challanBO.CreatedDate = DateTime.UtcNow.AddHours(5.5);
                challanBO.LastModifiedBy = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                challanBO.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);
                challanBO.IsManual = 0;

                DataTable dtChallanOffense = new DataTable();
                dtChallanOffense.Columns.Add("ChallanId", typeof(Int32));
                dtChallanOffense.Columns.Add("OffenseId", typeof(Int32));
                dtChallanOffense.Columns.Add("MVActIds", typeof(string));
                dtChallanOffense.Columns.Add("Count", typeof(Int32));
                dtChallanOffense.Columns.Add("Amount", typeof(decimal));
                dtChallanOffense.Columns.Add("IsDeleted", typeof(bool));
                dtChallanOffense.Columns.Add("CreatedBy", typeof(Int32));
                dtChallanOffense.Columns.Add("CreatedDate", typeof(DateTime));
                dtChallanOffense.Columns.Add("LastModifiedBy", typeof(Int32));
                dtChallanOffense.Columns.Add("LastModifiedDate", typeof(DateTime));

                foreach (var challanOffenseBO in listChallanOffenseBO)
                {
                    DataRow drChallanOffense = dtChallanOffense.NewRow();
                    drChallanOffense["OffenseId"] = challanOffenseBO.OffencesId;
                    drChallanOffense["MVActIds"] = challanOffenseBO.MVActIds;
                    drChallanOffense["Count"] = challanOffenseBO.Count;
                    drChallanOffense["Amount"] = challanOffenseBO.Amount;
                    drChallanOffense["IsDeleted"] = false;
                    drChallanOffense["CreatedBy"] = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                    drChallanOffense["CreatedDate"] = DateTime.UtcNow.AddHours(5.5);
                    drChallanOffense["LastModifiedBy"] = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                    drChallanOffense["LastModifiedDate"] = DateTime.UtcNow.AddHours(5.5);

                    dtChallanOffense.Rows.Add(drChallanOffense);
                }

                ApplicationResult objResult = new CROChallanBL().CROChallan_Insert(challanBO, dtChallanOffense);
                if (objResult != null)
                {
                    if (objResult.resultDT.Rows.Count == 0)
                    {
                        //DatabaseTransaction.RollbackTransation();
                        return null;
                    }
                    challanBO.Id = Convert.ToInt32(objResult.resultDT.Rows[0]["Id"].ToString());
                    challanBO.ChallanNo = objResult.resultDT.Rows[0]["ChallanNo"].ToString();

                    //gasBillMBO.GasBillID = Convert.ToInt32(gasBillResultM.resultDT.Rows[0]["GasBillID"]);
                    //gasBillMBO.GasBillNo = gasBillResultM.resultDT.Rows[0]["GasBillNo"].ToString();
                    //HttpContext.Current.Session["RemarkCRDR"] = gasBillMBO.RemarkForCRDR;//gasBillResultM.resultDT.Rows[0]["RemarkForCRDR"] != null ? gasBillResultM.resultDT.Rows[0]["RemarkForCRDR"].ToString() : "";

                    //DatabaseTransaction.CommitTransation();

                    string jsonFilePath = challanBO.JSONFilePath;
                    var strFile = challanBO.JSONFilePath.Split('\\')[2];

                    //string strDestFilePath = @"C:\inetpub\wwwroot\aspnet_client\JSONFiles\";
                    string strDestFilePath = @"C:\inetpub\";

                    SetAccessRights(jsonFilePath);
                    SetAccessRights(strDestFilePath);
                    strDestFilePath = strDestFilePath + strFile;
                    System.IO.File.Move(jsonFilePath, strDestFilePath);

                    return JsonConvert.SerializeObject(challanBO);
                }
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
    }
}