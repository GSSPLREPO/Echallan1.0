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
using Trident.Bo;
using Trident.Common;

namespace Trident.ClientUI
{
    public partial class EditCROChallan : PageBase
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Controls objControls = new Controls();
        #endregion

        #region Page Base
        public EditCROChallan() : base(0)
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
                    if (dataTable.Contains("EditCROChallan") == false)
                    {
                        HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                    }
                }
                BindVehicleType();
                var strFinalString = Request.QueryString["FinalString"] != null && Request.QueryString["FinalString"] != "" ? Request.QueryString["FinalString"] : "";
                if (strFinalString != "")
                {
                    //var stringarr = strFinalString.Split('$');
                    DataTable dtResult = BindOffense(Convert.ToInt32(strFinalString));
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "editChallan('" + strFinalString + "', '" + JsonConvert.SerializeObject(dtResult) + "');", true);

                    //BindPendingChallanGrid();
                    hdnChallanId.Value = strFinalString;
                    txtDateTimeOfViolation.Attributes.Add("readonly", "readonly");
                    txtDueDate.Attributes.Add("readonly", "readonly");
                    txtSearchVehicleNo.Attributes.Add("readonly", "readonly");
                    txtNoOfViolations.Attributes.Add("readonly", "readonly");
                    txtLocation.Attributes.Add("readonly", "readonly");
                    txtComment.Attributes.Add("readonly", "readonly");
                }
            }
            catch (Exception ex)
            {
                log.Error("Page_Load", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion

        #region Get Customer by Id Web Service Method
        [WebMethod]
        public static string GetChallanById(int challanId)
        {
            ApplicationResult objResult = new CROChallanBL().CROChallan_Select(challanId);
            //objResult.resultDT.Columns.Remove("Id");
            return JsonConvert.SerializeObject(objResult.resultDS.Tables[0]);
        }
        #endregion

        [WebMethod]
        public static string SaveChallan(ChallanBO challanBO, List<ChallanOffenseBO> listChallanOffenseBO)
        {
            try
            {
                challanBO.IsDeleted = false;
                //challanBO.CreatedBy = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                //challanBO.CreatedDate = DateTime.UtcNow.AddHours(5.5);
                challanBO.LastModifiedBy = Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString());
                //challanBO.LastModifiedDate = DateTime.UtcNow.AddHours(5.5);

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

                ApplicationResult objResult = new CROChallanBL().CROChallan_Update(challanBO, dtChallanOffense);
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
                    //var strFile = challanBO.JSONFilePath.Split('\\')[2];
                    //string jsonFilePath = challanBO.JSONFilePath;
                    //string strDestFilePath = @"C:\inetpub\";

                    //SetAccessRights(jsonFilePath);
                    //SetAccessRights(strDestFilePath);
                    //strDestFilePath = strDestFilePath + strFile;
                    //System.IO.File.Move(jsonFilePath, strDestFilePath);

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

        #region Delete Challan By Id Web Service Method
        [WebMethod]
        public static string DeleteById(int challanId, int Amount)
        {
            ApplicationResult objResult = new CROChallanBL().CROChallanOffense_Delete(challanId, Convert.ToInt32(HttpContext.Current.Session["USERID"].ToString()), Convert.ToDecimal(Amount));
            if (objResult != null)
            {
                if(objResult.status == ApplicationResult.CommonStatusType.SUCCESS)
                {
                    return "Offense Deleted Successfully";
                }
            }
            //objResult.resultDT.Columns.Remove("Id");
            return "";
        }
        #endregion

        #region BindOffense Method
        public DataTable BindOffense(int intChallanId)
        {
            try
            {
                CROChallanBL objCROChallanBL = new CROChallanBL();
                Controls objControl = new Controls();
                ApplicationResult objResult = new ApplicationResult();

                objResult = objCROChallanBL.CROChallan_Select(intChallanId);
                if (objResult != null)
                {
                    if (objResult.resultDS.Tables[1].Rows.Count > 0)
                    {
                        objControl.BindDropDown_ListBox(objResult.resultDS.Tables[1], ddlOffense, "Name", "Id");
                    }
                    ddlOffense.Items.Insert(0, new ListItem("--Select--", "-1"));
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "BindoffenseGrid('" + JsonConvert.SerializeObject(objResult.resultDS.Tables[2]) + "')", true);
                }
                return objResult.resultDS.Tables[2];
            }
            catch (Exception ex)
            {
                log.Error("BindOffense", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
            return null;
        }
        #endregion

        #region BindVehicleType Method
        public void BindVehicleType()
        {
            try
            {
                CROChallanBL objCROChallanBL = new CROChallanBL();
                ApplicationResult objResult = new ApplicationResult();
                Controls objControl = new Controls();
                objResult = objCROChallanBL.CROChallan_SelectAll();

                if (objResult != null)
                {
                    if (objResult.resultDT.Rows.Count > 0)
                    {
                        objControl.BindDropDown_ListBox(objResult.resultDT, ddlVehicleType, "VehicleType", "Id");
                    }
                    //ddlVehicleType.Items.Insert(0, new ListItem("--Select--", "-1"));
                }
            }
            catch (Exception ex)
            {
                log.Error("BindVehicleType", ex);
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script>alert('Opps!Something went Wrong.Contact Your Administrator.');</script>");
            }
        }
        #endregion
    }
}