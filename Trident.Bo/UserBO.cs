using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trident.Bo
{
    public class UserBO
    {
        #region User Class Properties

        public const string USER_TABLE = "User";
        public const string USER_ID = "Id";
        public const string USER_OTHEROFFICESID = "OtherOfficesId";
        public const string USER_ORGANISATIONID = "HeadOfficeId";
        public const string USER_NAME = "Name";
        public const string USER_ROLEID = "RoleId";
        public const string USER_PASSWORD = "Password";
        public const string USER_ISDELETED = "IsDeleted";
        public const string USER_CREATEDBY = "CreatedBy";
        public const string USER_CREATEDDATE = "CreatedDate";
        public const string USER_LASTMODIFIEDBY = "LastModifiedBy";
        public const string USER_LASTMODIFIEDDATE = "LastModifiedDate";



        private int intId = 0;
        private int intOtherOfficesId = 0;
        private int intHeadOfficeId = 0;
        private string strName = string.Empty;
        private int intRoleId = 0;
        private string strPassword = string.Empty;
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
        public int OtherOfficesId
        {
            get { return intOtherOfficesId; }
            set { intOtherOfficesId = value; }
        }
        public int HeadOfficeId
        {
            get { return intHeadOfficeId; }
            set { intHeadOfficeId = value; }
        }
        public string Name
        {
            get { return strName; }
            set { strName = value; }
        }
        public int RoleId
        {
            get { return intRoleId; }
            set { intRoleId = value; }
        }
        public string Password
        {
            get { return strPassword; }
            set { strPassword = value; }
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
