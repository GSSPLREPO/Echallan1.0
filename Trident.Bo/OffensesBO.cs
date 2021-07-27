using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace Trident.Bo
{
    public class OffensesBO
    {
        #region Offenses Class Properties

        public const string OFFENSES_TABLE = "Offenses";
        public const string OFFENSES_OFFENSEID = "OffenseId";
        public const string OFFENSES_NAME = "Name";
        public const string OFFENSES_MAXOFFENSESALLOWED = "MaxOffensesAllowed";
        public const string OFFENSES_APPLICABLESECTIONS = "ApplicableSections";
        public const string OFFENSES_ISDELETED = "IsDeleted";
        public const string OFFENSES_CREATEDBY = "CreatedBy";
        public const string OFFENSES_CREATEDDATE = "CreatedDate";
        public const string OFFENSES_LASTMODIFIEDBY = "LastModifiedBy";
        public const string OFFENSES_LASTMODIFIEDDATE = "LastModifiedDate";



        private int intOffenseId = 0;
        private string strName = string.Empty;
        private int intMaxOffensesAllowed = 0;
        private string strApplicableSections = string.Empty;
        private bool blIsDeleted;
        private int intCreatedBy = 0;
        private DateTime dtCreatedDate;
        private int intLastModifiedBy = 0;
        private DateTime dtLastModifiedDate;

        #endregion

        #region ---Properties---
        public int OffenseId
        {
            get { return intOffenseId; }
            set { intOffenseId = value; }
        }
        public string Name
        {
            get { return strName; }
            set { strName = value; }
        }
        public int MaxOffensesAllowed
        {
            get { return intMaxOffensesAllowed; }
            set { intMaxOffensesAllowed = value; }
        }
        public string ApplicableSections
        {
            get { return strApplicableSections; }
            set { strApplicableSections = value; }
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

        #endregion
    }
}


