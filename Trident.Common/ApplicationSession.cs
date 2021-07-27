using System.Web.SessionState;

namespace Trident.Common
{
	public class ApplicationSession
	{
		private static HttpSessionState mvarSession;

		public static void Init(HttpSessionState Session)
		{
			mvarSession = Session;
		}

		#region Constant declaration of the session variable

		public const string USERNAME = "UserName";
        public const string EMPLOYEENAME = "EmployeeName";
		public const string USERID = "UserID";
        public const string EMPLOYEEID = "EmployeeID";
        public const string EMPLOYEEROLEID = "EmployeeRoleID";
        public const string USERROLEID = "RoleID";

        public const string BMCID = "BMCID";
        public const string ADDRESS = "ADDRESS";
        public const string LOCATIONID = "LocationID";
        public const string HEADOFFICEID = "HeadOfficeId";
        public const string ORGANISATIONID = "OrganisationID";
	    public const string ORGANISATIONNAME = "Name";
        public const string ORGANISATIONGROUPID = "OrganisationGroupID";
        public const string ORGANISATIONGROUPNAME = "OrganisationGroupName";
		public const string OTHEROFFICEID = "OtherOfficesId";
        public const string DEPARTMENTID = "DepartmentID";
		public const string BRANCHNAME = "Name";
		public const string ROLEID = "RoleID";
        public const string ACCOUNTFROMDATE = "AccountFromDate";
        public const string ACCOUNTTODATE = "AccountToDate";
        public const string HASACCESSACCOUNTUSERID = "HasAccessAccountUserID";
        public const string FINANCIALYEAR = "FinancialYear";
        public const string ISPANEL = "IsPanel";
        public const string BANKNAME = "BankName";
        public const string ACCOUNTNAME = "AccountName";
        public const string ACCOUNTNO = "AccountNo";
        public const string SORTCODE = "SortCode";
        public const string OFFICENO = "OfficeNo";
        public const string MOBILE = "Mobile";
        public const string MOBILE2 = "Mobile2";
        public const string VATNO = "VATNo";
        public const string REGNO = "CompanyRegNo";
        public const string EmailID = "EmailID";


		public static void ClearAllSessions()
		{
			mvarSession.Remove(USERNAME);
		}
		#endregion
	}
}
