using System;

namespace Trident.Bo
{
    public class HeadOfficeBO
    {
        #region HEAD_OFFICE Class Properties

        public const string HEAD_OFFICE_TABLE = "HeadOffice";
        public const string HEAD_OFFICE_ID = "Id";
        public const string HEAD_OFFICE_NAME = "Name";
        public const string HEAD_OFFICE_ADDRESS = "Address";
        public const string HEAD_OFFICE_STATE = "State";
        public const string HEAD_OFFICE_CITY = "City";
        public const string HEAD_OFFICE_EMAIL = "Email";
        public const string HEAD_OFFICE_MOBILENO = "MobileNo";
        public const string HEAD_OFFICE_FAXNO = "FaxNo";
        public const string HEAD_OFFICE_LOGO = "Logo";
        public const string HEAD_OFFICE_DUEDAYS = "DueDays";
        public const string HEAD_OFFICE_CHALLANABBREVIATION = "ChallanAbbreviation";
        public const string HEAD_OFFICE_ISDELETED = "IsDeleted";
        public const string HEAD_OFFICE_CREATEDBY = "CreatedBy";
        public const string HEAD_OFFICE_CREATEDDATE = "CreatedDate";
        public const string HEAD_OFFICE_LASTMODIFIEDBY = "LastModifiedBy";
        public const string HEAD_OFFICE_LASTMODIFIEDDATE = "LastModifiedDate";



        private int intId = 0;
        private string strName = string.Empty;
        private string strAddress = string.Empty;
        private string strState = string.Empty;
        private string strCity = string.Empty;
        private string strEmail = string.Empty;
        private string strMobileNo = string.Empty;
        private string strFaxNo = string.Empty;
        private string strLogo = string.Empty;
        private int intDueDays = 0;
        private string strChallanAbbreviation = string.Empty;
        private int intIsDeleted = 0;
        private int intCreatedBy = 0;
        private DateTime dtCreatedDate;
        private int intLastModifiedBy = 0;
        private DateTime dtLastModifiedDate;

        #endregion

        #region ---Properties---
        public int Id
        {
            get { return intId; }
            set { intId = value; }
        }
        public string Name
        {
            get { return strName; }
            set { strName = value; }
        }
        public string Address
        {
            get { return strAddress; }
            set { strAddress = value; }
        }
        public string State
        {
            get { return strState; }
            set { strState = value; }
        }
        public string City
        {
            get { return strCity; }
            set { strCity = value; }
        }
        public string Email
        {
            get { return strEmail; }
            set { strEmail = value; }
        }
        public string MobileNo
        {
            get { return strMobileNo; }
            set { strMobileNo = value; }
        }
        public string FaxNo
        {
            get { return strFaxNo; }
            set { strFaxNo = value; }
        }
        public string Logo
        {
            get { return strLogo; }
            set { strLogo = value; }
        }
        public int DueDays
        {
            get { return intDueDays; }
            set { intDueDays = value; }
        }
        public string ChallanAbbreviation
        {
            get { return strChallanAbbreviation; }
            set { strChallanAbbreviation = value; }
        }
        public int IsDeleted
        {
            get { return intIsDeleted; }
            set { intIsDeleted = value; }
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

        #endregion
    }
}
