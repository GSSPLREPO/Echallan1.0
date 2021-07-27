using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Trident.Bo
{
    public class RoleRights_T_BO
    {
        #region RoleRights_T Class Properties

        public const string ROLERIGHTS_T_TABLE = "tbl_RoleRights_T";
        public const string ROLERIGHTS_T_ROLERIGHTSID = "ID";
        public const string ROLERIGHTS_T_EMPLOYEEROLEID = "RoleID";
        public const string ROLERIGHTS_T_ROLESCREENID = "ScreenID";
        public const string ROLERIGHTS_T_CREATEDUSERID = "CreatedUserID";
        public const string ROLERIGHTS_T_CREATEDDATE = "CreatedDate";
        public const string ROLERIGHTS_T_LASTMODIFIEDUSERID = "LastModifiedUserID";
        public const string ROLERIGHTS_T_LASTMODIFIEDDATE = "LastModifiedDate";
        public const string ROLERIGHTS_T_ISDELETED = "IsDeleted";



        private int intRoleRightsID = 0;
        private int intEmployeeRoleID = 0;
        private int intRoleScreenID = 0;
        private int intCreatedUserID = 0;
        private DateTime dtCreatedDate;
        private int intLastModifiedUserID = 0;
        private DateTime dtLastModifiedDate;
        private int intIsDeleted = 0;

        #endregion

        #region ---Properties---
        public int RoleRightsID
        {
            get { return intRoleRightsID; }
            set { intRoleRightsID = value; }
        }
        public int EmployeeRoleID
        {
            get { return intEmployeeRoleID; }
            set { intEmployeeRoleID = value; }
        }
        public int RoleScreenID
        {
            get { return intRoleScreenID; }
            set { intRoleScreenID = value; }
        }
        public int CreatedUserID
        {
            get { return intCreatedUserID; }
            set { intCreatedUserID = value; }
        }
        public DateTime CreatedDate
        {
            get { return dtCreatedDate; }
            set { dtCreatedDate = value; }
        }
        public int LastModifiedUserID
        {
            get { return intLastModifiedUserID; }
            set { intLastModifiedUserID = value; }
        }
        public DateTime LastModifiedDate
        {
            get { return dtLastModifiedDate; }
            set { dtLastModifiedDate = value; }
        }
        public int IsDeleted
        {
            get { return intIsDeleted; }
            set { intIsDeleted = value; }
        }

        #endregion
    }
}
