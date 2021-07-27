using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace Trident.Bo
{
    public class ChallanOffenseBO
    {
        #region ChallanOffense Class Properties

        public const string CHALLANOFFENSE_TABLE = "ChallanOffense";
        public const string CHALLANOFFENSE_ID = "Id";
        public const string CHALLANOFFENSE_CHALLANID = "ChallanId";
        public const string CHALLANOFFENSE_OFFENCESID = "OffencesId";
        public const string CHALLANOFFENSE_MVACTIDS = "MVActIds";
        public const string CHALLANOFFENSE_COUNT = "Count";
        public const string CHALLANOFFENSE_AMOUNT = "Amount";
        public const string CHALLANOFFENSE_ISDELETED = "IsDeleted";
        public const string CHALLANOFFENSE_CREATEDBY = "CreatedBy";
        public const string CHALLANOFFENSE_CREATEDDATE = "CreatedDate";
        public const string CHALLANOFFENSE_LASTMODIFIEDBY = "LastModifiedBy";
        public const string CHALLANOFFENSE_LASTMODIFIEDDATE = "LastModifiedDate";



        private int intId = 0;
        private int intChallanId = 0;
        private int intOffencesId = 0;
        private string strMVActIds = string.Empty;
        private int intCount = 0;
        private decimal dcAmount = 0;
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
        public int ChallanId
        {
            get { return intChallanId; }
            set { intChallanId = value; }
        }
        public int OffencesId
        {
            get { return intOffencesId; }
            set { intOffencesId = value; }
        }
        public string MVActIds
        {
            get { return strMVActIds; }
            set { strMVActIds = value; }
        }
        public int Count
        {
            get { return intCount; }
            set { intCount = value; }
        }
        public decimal Amount
        {
            get { return dcAmount; }
            set { dcAmount = value; }
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


