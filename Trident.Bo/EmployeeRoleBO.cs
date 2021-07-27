using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trident.Bo
{
    public class EmployeeRoleBO
    {
        #region Roles Class Properties

        public const string ROLES_TABLE = "Roles";
        public const string ROLES_ID = "Id";
        public const string ROLES_HEADOFFICEID = "HeadOfficeId";
        public const string ROLES_NAME = "Name";
        public const string ROLES_DESCRIPTION = "Description";
        public const string ROLES_ISDELETED = "IsDeleted";
        public const string ROLES_CREATEDBY = "CreatedBy";
        public const string ROLES_CREATEDDATE = "CreatedDate";
        public const string ROLES_LASTMODIFIEDBY = "LastModifiedBy";
        public const string ROLES_LASTMODIFIEDDATE = "LastModifiedDate";



        private int intId = 0;
        private int intHeadOfficeId = 0;
        private string strName = string.Empty;
        private string strDescription = string.Empty;
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
        public string Description
        {
            get { return strDescription; }
            set { strDescription = value; }
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
