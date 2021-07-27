using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Trident.Bo
{

    public class EmployeeBO
    {

        #region EMPLOYEE Class Properties

        public const string EMPLOYEE_TABLE = "tbl_Employee_M";
        public const string EMPLOYEE_EMPLOYEEID = "EmployeeID";
        public const string EMPLOYEE_EMPLOYEENAME = "EmployeeName";
        public const string EMPLOYEE_EMPLOYEECODE = "EmployeeCode";
        public const string EMPLOYEE_BRANCHID = "BranchID";
        public const string EMPLOYEE_ORGANISATIONID = "OrganisationID";
        public const string EMPLOYEE_EMPLOYEEROLEID = "EmployeeRoleID";
        public const string EMPLOYEE_DESIGNATIONID = "DesignationID";
        public const string EMPLOYEE_ADDRESS = "Address";
        public const string EMPLOYEE_CONTACTNO = "ContactNo";
        public const string EMPLOYEE_MOBILENO = "MobileNo";
        public const string EMPLOYEE_EMAIL = "Email";
        public const string EMPLOYEE_USERNAME = "UserName";
        public const string EMPLOYEE_PASSWORD = "Password";
        public const string EMPLOYEE_JOINDATE = "JoinDate";
        public const string EMPLOYEE_BIRTHDATE = "BirthDate";
        public const string EMPLOYEE_MARRIAGEDATE = "MarriageDate";
        public const string EMPLOYEE_ISDELETED = "IsDeleted";
        public const string EMPLOYEE_RESIGNEDDATE = "ResignedDate";

        /// <summary>
        /// Employee Benefit.
        /// </summary>
        public const string EMP_BENEFIT_EMPBENEFITID = "EmpBenefitID";
        public const string EMP_BENEFIT_EMPLOYEEID = "EmployeeID";
        public const string EMP_BENEFIT_CUSTOMERCATEGORYID = "CustomerCateoryID";
        public const string EMP_BENEFIT_CURRENTDATE = "CurrentDate";
        public const string EMP_BENEFIT_UPDATEDBY = "UpdatedBy";
        public const string EMP_BENEFIT_UPDATEDDATE = "UpdatedDate";
        public const string EMP_BENEFIT_CUSTOMERID = "CustomerID";



        private int intEmployeeID = 0;
        private string strEmployeeName = string.Empty;
        private string strEmployeeCode = string.Empty;
        private int intBranchID = 0;
        private int intOrganisationID = 0;
        private int intEmployeeRoleID = 0;
        private int intDesignationID = 0;
        private string strAddress = string.Empty;
        private string strContactNo = string.Empty;
        private string strMobileNo = string.Empty;
        private string strEmail = string.Empty;
        private string strUserName = string.Empty;
        private string strPassword = string.Empty;
        private string strJoinDate = string.Empty;
        private string strBirthDate = string.Empty;
        private string strMarriageDate = string.Empty;
        private string strResignedDate = string.Empty;
        private int intIsDeleted = 0;

        private int intEmployeeBenefit_EmployeeID = 0;
        private int intEmployeeBenefit_EmpBenefitID = 0;
        private int intEmployeeBenefit_CustomerCateoryID = 0;
        private string strEmployeeBenefit_CurrentDate = string.Empty;
        private int intEmployeeBenefit_UpdatedBy = 0;
        private string strEmployeeBenefit_UpdatedDate = string.Empty;
        private int intEmployeeBenefit_CustomerID = 0;
        #endregion

        #region ---Properties---
        public int EmployeeID
        {
            get { return intEmployeeID; }
            set { intEmployeeID = value; }
        }
        public string EmployeeName
        {
            get { return strEmployeeName; }
            set { strEmployeeName = value; }
        }
        public string EmployeeCode
        {
            get { return strEmployeeCode; }
            set { strEmployeeCode = value; }
        }
        public int BranchID
        {
            get { return intBranchID; }
            set { intBranchID = value; }
        }
        public int OrganisationID
        {
            get { return intOrganisationID; }
            set { intOrganisationID = value; }
        }
        public int EmployeeRoleID
        {
            get { return intEmployeeRoleID; }
            set { intEmployeeRoleID = value; }
        }
        public int DesignationID
        {
            get { return intDesignationID; }
            set { intDesignationID = value; }
        }
        public string Address
        {
            get { return strAddress; }
            set { strAddress = value; }
        }
        public string ContactNo
        {
            get { return strContactNo; }
            set { strContactNo = value; }
        }
        public string MobileNo
        {
            get { return strMobileNo; }
            set { strMobileNo = value; }
        }
        public string Email
        {
            get { return strEmail; }
            set { strEmail = value; }
        }
        public string UserName
        {
            get { return strUserName; }
            set { strUserName = value; }
        }
        public string Password
        {
            get { return strPassword; }
            set { strPassword = value; }
        }
        public string JoinDate
        {
            get { return strJoinDate; }
            set { strJoinDate = value; }
        }
        public string BirthDate
        {
            get { return strBirthDate; }
            set { strBirthDate = value; }
        }
        public string MarriageDate
        {
            get { return strMarriageDate; }
            set { strMarriageDate = value; }
        }
        public int IsDeleted
        {
            get { return intIsDeleted; }
            set { intIsDeleted = value; }
        }
        public string ResignedDate
        {
            get { return strResignedDate; }
            set { strResignedDate = value; }
        }
        #endregion

        public int EmployeeBenefit_EmployeeID 
        { 
            get { return intEmployeeBenefit_EmployeeID; } 
            set { intEmployeeBenefit_EmployeeID = value; } 
        }

        public int EmployeeBenefit_EmpBenefitID
        {
            get { return intEmployeeBenefit_EmpBenefitID; }
            set { intEmployeeBenefit_EmpBenefitID = value; }
        }

        public int EmployeeBenefit_CustomerCateoryID
        {
            get { return intEmployeeBenefit_CustomerCateoryID; }
            set { intEmployeeBenefit_CustomerCateoryID = value; }
        }

        public string EmployeeBenefit_CurrentDate {
            get { return strEmployeeBenefit_CurrentDate;}
            set { strEmployeeBenefit_CurrentDate = value; }
        }

        public int EmployeeBenefit_UpdatedBy
        {
            get { return intEmployeeBenefit_UpdatedBy; }
            set { intEmployeeBenefit_UpdatedBy = value; }
        }

        public string EmployeeBenefit_UpdatedDate
        {
            get { return strEmployeeBenefit_UpdatedDate; }
            set { strEmployeeBenefit_UpdatedDate = value; }
        }

        public int EmployeeBenefit_CustomerID
        {
            get { return intEmployeeBenefit_CustomerID; }
            set { intEmployeeBenefit_CustomerID = value; }
        }
    }

}
