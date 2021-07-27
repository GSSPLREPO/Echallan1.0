using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trident.Bo
{
    public class CameraBO
    {
        public const string CAMERA_ID = "Id";
        public const string CAMERA_PointID = "PointId";
        public const string CAMERA_Name = "Name";
        public const string CAMERA_Make = "Make";
        public const string CAMERA_IpAddress = "IpAddress";
        public const string CAMERA_ISDELETED = "IsDeleted";
        public const string CAMERA_CREATEDBY = "CreatedBy";
        public const string CAMERA_CREATEDDATE = "CreatedDate";
        public const string CAMERA_LASTMODIFIEDBY = "LastModifiedBy";
        public const string CAMERA_LASTMODIFIEDDATE = "LastModifiedDate";


        private int intId = 0;
        private int intPointId = 0;
        private string strName = string.Empty;
        private string strMake = string.Empty;
        private string strIpAddress = string.Empty;
        private int intIsDeleted = 0;
        private int intCreatedBy = 0;
        private DateTime dtCreatedDate;
        private int intLastModifiedBy = 0;
        private DateTime dtLastModifiedDate;


        public int Id
        {
            get { return intId; }
            set { intId = value; }
        }
        public int PointId
        {
            get { return intPointId; }
            set { intPointId = value; }
        }
        public string Name
        {
            get { return strName; }
            set { strName = value; }
        }
        public string Make
        {
            get { return strMake; }
            set { strMake = value; }
        }
        public string IpAddress
        {
            get { return strIpAddress; }
            set { strIpAddress = value; }
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
    }
}
