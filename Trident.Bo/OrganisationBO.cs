using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trident.Bo
{
    public class OrganisationBO
    {
        #region Organisation Class Properties

        public const string ORGANISATION_TABLE = "tbl_Organisation_M";
        public const string ORGANISATION_ORGANISATIONID = "OrganisationID";
        public const string ORGANISATION_NAME = "Name";
        public const string ORGANISATION_ADDRESS = "Address";
        public const string ORGANISATION_PHONENO = "PhoneNo";
        public const string ORGANISATION_FAXNO = "FaxNo";
        public const string ORGANISATION_SERVICENO = "ServiceNo";
        public const string ORGANISATION_HSNCODE = "HSNCode";
        public const string ORGANISATION_TINNO = "TINNo";
        public const string ORGANISATION_TINDATE = "TINDate";
        public const string ORGANISATION_CSTNO = "CSTNo";
        public const string ORGANISATION_CSTDATE = "CSTDate";
        public const string ORGANISATION_LOGO = "Logo";
        public const string ORGANISATION_ISDELETED = "IsDeleted";

        private int intOrganisationID = 0;
        private string strName = string.Empty;
        private string strAddress = string.Empty;
        private string strPhoneNo = string.Empty;
        private string strFaxNo = string.Empty;
        private string strServiceNo = string.Empty;
        private string strHSNCode = string.Empty;
        private string strTINNo = string.Empty;
        private string strTINDate = string.Empty;
        private string strCSTNo = string.Empty;
        private string strCSTDate = string.Empty;
        private string strLogo = string.Empty;
        private string strIsDeleted = string.Empty;

        #endregion

        #region ---Properties---
        public int OrganisationID
        {
            get { return intOrganisationID; }
            set { intOrganisationID = value; }
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
        public string PhoneNo
        {
            get { return strPhoneNo; }
            set { strPhoneNo = value; }
        }
        public string FaxNo
        {
            get { return strFaxNo; }
            set { strFaxNo = value; }
        }
        public string ServiceNo
        {
            get { return strServiceNo; }
            set { strServiceNo = value; }
        }
        public string HSNCode
        {
            get { return strHSNCode; }
            set { strHSNCode = value; }
        }
        public string TINNo
        {
            get { return strTINNo; }
            set { strTINNo = value; }
        }
        public string TINDate
        {
            get { return strTINDate; }
            set { strTINDate = value; }
        }
        public string CSTNo
        {
            get { return strCSTNo; }
            set { strCSTNo = value; }
        }
        public string CSTDate
        {
            get { return strCSTDate; }
            set { strCSTDate = value; }
        }
        public string Logo
        {
            get { return strLogo; }
            set { strLogo = value; }
        }
        public string IsDeleted
        {
            get { return strIsDeleted; }
            set { strIsDeleted = value; }
        }

        #endregion
    }
}
