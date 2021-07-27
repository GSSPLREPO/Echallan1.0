using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace Trident.Bo
{
    public class ChallanBO
    {
        #region Challan Class Properties

        public const string CHALLAN_TABLE = "Challan";
        public const string CHALLAN_ID = "Id";
        public const string CHALLAN_HEADOFFICEID = "HeadOfficeId";
        public const string CHALLAN_POLICESTATION = "PoliceStation";
        public const string CHALLAN_CHALLANNO = "ChallanNo";
        public const string CHALLAN_VEHICLEPLATENO = "VehiclePlateNo";
        public const string CHALLAN_LPIMAGE = "LPImage";
        public const string CHALLAN_JSONFILEPATH = "JSONFilePath";
        public const string CHALLAN_VIOLATIONDATETIME = "ViolationDateTime";
        public const string CHALLAN_LOCATION = "Location";
        public const string CHALLAN_OFFENDERNAME = "OffenderName";
        public const string CHALLAN_OFFENDERADDRESS = "OffenderAddress";
        public const string CHALLAN_CITY = "City";
        public const string CHALLAN_STATE = "State";
        public const string CHALLAN_POSTALCODE = "PostalCode";
        public const string CHALLAN_VEHICLETYPEID = "VehicleTypeId";
        public const string CHALLAN_VEHICLEMODEL = "VehicleModel";
        public const string CHALLAN_VEHICLEMAKE = "VehicleMake";
        public const string CHALLAN_TOTALAMOUNT = "TotalAmount";
        public const string CHALLAN_DUEDATE = "DueDate";
        public const string CHALLAN_DRIVINGLICENCENO = "DrivingLicenceNo";
        public const string CHALLAN_MOBILENO = "MobileNo";
        public const string CHALLAN_EMAILID = "EmailId";
        public const string CHALLAN_ISPAID = "IsPaid";
        public const string CHALLAN_STATUSID = "StatusId";
        public const string CHALLAN_NOOFVILATIONS = "NoOfVilations";
        public const string CHALLAN_PENDINGCHALLANIDS = "PendingChallanIds";
        public const string CHALLAN_RETURNCOMMENT = "ReturnComment";
        public const string CHALLAN_CONTEXTIMAGEPATH = "ContextImagePath";
        public const string CHALLAN_SELECTEDSNAPPATH = "SelectedSnapPath";
        public const string CHALLAN_ISRESET = "IsReset";
        public const string CHALLAN_ISDELETED = "IsDeleted";
        public const string CHALLAN_CREATEDBY = "CreatedBy";
        public const string CHALLAN_CREATEDDATE = "CreatedDate";
        public const string CHALLAN_LASTMODIFIEDBY = "LastModifiedBy";
        public const string CHALLAN_LASTMODIFIEDDATE = "LastModifiedDate";
        public const string CHALLAN_VIOLATIONSCREENSHOTS = "ViolationScreenShots";
        public const string CHALLAN_ISMANUAL = "IsManual";

        private int intId = 0;
        private int intHeadOfficeId = 0;
        private string strPoliceStation = string.Empty;
        private string strChallanNo = string.Empty;
        private string strVehiclePlateNo = string.Empty;
        private string strLPImage = string.Empty;
        private string strJSONFilePath = string.Empty;
        private DateTime dtViolationDateTime;
        private string strLocation = string.Empty;
        private string strOffenderName = string.Empty;
        private string strOffenderAddress = string.Empty;
        private string strCity = string.Empty;
        private string strState = string.Empty;
        private string strPostalCode = string.Empty;
        private int intVehicleTypeId = 0;
        private string strVehicleModel = string.Empty;
        private string strVehicleMake = string.Empty;
        private decimal dcTotalAmount = 0;
        private DateTime dtDueDate;
        private string strDrivingLicenceNo = string.Empty;
        private string strMobileNo = string.Empty;
        private string strEmailId = string.Empty;
        private bool blIsPaid;
        private int intStatusId = 0;
        private int intNoOfVilations = 0;
        private string strPendingChallanIds = string.Empty;
        private string strReturnComment = string.Empty;
        private int intIsReset = 0;
        private bool blIsDeleted;
        private int intCreatedBy = 0;
        private DateTime dtCreatedDate;
        private int intLastModifiedBy = 0;
        private DateTime dtLastModifiedDate;
        private string strViolationScreenShots;
        private string strSelectedSnapPath = string.Empty;
        private string strContextImagePath = string.Empty;
        private int intIsManual = 0;

        #endregion

        #region ---Properties---
        public int Id
        {
            get { return intId; }
            set { intId = value; }
        }
        public int HeadOfficeId
        {
            get { return intHeadOfficeId; }
            set { intHeadOfficeId = value; }
        }
        public string PoliceStation
        {
            get { return strPoliceStation; }
            set { strPoliceStation = value; }
        }
        public string ChallanNo
        {
            get { return strChallanNo; }
            set { strChallanNo = value; }
        }
        public string VehiclePlateNo
        {
            get { return strVehiclePlateNo; }
            set { strVehiclePlateNo = value; }
        }
        public string LPImage
        {
            get { return strLPImage; }
            set { strLPImage = value; }
        }
        public string JSONFilePath
        {
            get { return strJSONFilePath; }
            set { strJSONFilePath = value; }
        }
        public string ViolationScreenShots
        {
            get { return strViolationScreenShots; }
            set { strViolationScreenShots = value; }
        }
        public string SelectedSnapPath
        {
            get { return strSelectedSnapPath; }
            set { strSelectedSnapPath = value; }
        }
        public string ContextImagePath
        {
            get { return strContextImagePath; }
            set { strContextImagePath = value; }
        }
        public DateTime ViolationDateTime
        {
            get { return dtViolationDateTime; }
            set { dtViolationDateTime = value; }
        }
        public string Location
        {
            get { return strLocation; }
            set { strLocation = value; }
        }
        public string OffenderName
        {
            get { return strOffenderName; }
            set { strOffenderName = value; }
        }
        public string OffenderAddress
        {
            get { return strOffenderAddress; }
            set { strOffenderAddress = value; }
        }
        public string City
        {
            get { return strCity; }
            set { strCity = value; }
        }
        public string State
        {
            get { return strState; }
            set { strState = value; }
        }
        public string PostalCode
        {
            get { return strPostalCode; }
            set { strPostalCode = value; }
        }
        public int VehicleTypeId
        {
            get { return intVehicleTypeId; }
            set { intVehicleTypeId = value; }
        }
        public string VehicleModel
        {
            get { return strVehicleModel; }
            set { strVehicleModel = value; }
        }
        public string VehicleMake
        {
            get { return strVehicleMake; }
            set { strVehicleMake = value; }
        }
        public decimal TotalAmount
        {
            get { return dcTotalAmount; }
            set { dcTotalAmount = value; }
        }
        public DateTime DueDate
        {
            get { return dtDueDate; }
            set { dtDueDate = value; }
        }
        public string DrivingLicenceNo
        {
            get { return strDrivingLicenceNo; }
            set { strDrivingLicenceNo = value; }
        }
        public string MobileNo
        {
            get { return strMobileNo; }
            set { strMobileNo = value; }
        }
        public string EmailId
        {
            get { return strEmailId; }
            set { strEmailId = value; }
        }
        public bool IsPaid
        {
            get { return blIsPaid; }
            set { blIsPaid = value; }
        }
        public int StatusId
        {
            get { return intStatusId; }
            set { intStatusId = value; }
        }
        public int NoOfVilations
        {
            get { return intNoOfVilations; }
            set { intNoOfVilations = value; }
        }
        public string PendingChallanIds
        {
            get { return strPendingChallanIds; }
            set { strPendingChallanIds = value; }
        }
        public string ReturnComment
        {
            get { return strReturnComment; }
            set { strReturnComment = value; }
        }
        public int IsReset
        {
            get { return intIsReset; }
            set { intIsReset = value; }
        }
        public bool IsDeleted
        {
            get { return blIsDeleted; }
            set { blIsDeleted = value; }
        }
        public int CreatedBy
        {
            get { return intCreatedBy; }
            set { intCreatedBy = value; }
        }
        public DateTime CreatedDate
        {
            get { return dtCreatedDate; }
            set { dtCreatedDate = value; }
        }
        public int LastModifiedBy
        {
            get { return intLastModifiedBy; }
            set { intLastModifiedBy = value; }
        }
        public DateTime LastModifiedDate
        {
            get { return dtLastModifiedDate; }
            set { dtLastModifiedDate = value; }
        }
        public int IsManual
        {
            get { return intIsManual; }
            set { intIsManual = value; }
        }
        #endregion
    }
}


