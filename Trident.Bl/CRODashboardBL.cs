using System;
using System.Data;
using Trident.DataAccess;
using Trident.Common;
using System.Data.SqlClient;

namespace Trident.Bl
{
    public class CRODashboardBL
    {
        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion

        #region Select All Employee Details
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CRODashboard_SelectAll(int intOrganisationID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];


                pSqlParameter[0] = new SqlParameter("@OtherOfficesId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                sSql = "usp_tbl_CRODashboard_SelectAll";
                DataTable dtCRODashboard = new DataTable();
                dtCRODashboard = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtCRODashboard);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion
    }
}
