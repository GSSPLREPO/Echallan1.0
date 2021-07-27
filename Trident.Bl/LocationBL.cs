using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trident.DataAccess;
using Trident.Common;
using System.Data.SqlClient;
using System.Data;
using Trident.Bo;

namespace Trident.Bl
{
    public class LocationBL
    {

        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion

        #region Location_Select All
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult Location_SelectAll()
        {
            try
            {
                sSql = "usp_Challan_SelectAllLocation";
                DataTable dtResult = new DataTable();
                dtResult = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, null);

                ApplicationResult objResults = new ApplicationResult(dtResult);
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
