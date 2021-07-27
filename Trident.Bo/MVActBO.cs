using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace Trident.Bo
{
    public class MVActBO
    {
        #region MVAct Class Properties

        public const string MVACT_TABLE = "MotorVechicleActs";
        public const string MVACT_ID = "Id";
        public const string MVACT_SECTION = "Section";
        public const string MVACT_TITLE = "Title";
        public const string MVACT_DESCRIPTION = "Description";
        public const string MVACT_ISDELETED = "IsDeleted";
        public const string MVACT_CREATEDBY = "CreatedBy";
        public const string MVACT_CREATEDDATE = "CreatedDate";
        public const string MVACT_LASTMODIFIEDBY = "LastModifiedBy";
        public const string MVACT_LASTMODIFIEDDATE = "LastModifiedDate";



        private int intId = 0;
        private string strSection = string.Empty;
        private string strTitle = string.Empty;
        private string strDescription = string.Empty;
        private bool blIsDeleted;
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
        public string Section
        {
            get { return strSection; }
            set { strSection = value; }
        }
        public string Title
        {
            get { return strTitle; }
            set { strTitle = value; }
        }
        public string Description
        {
            get { return strDescription; }
            set { strDescription = value; }
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