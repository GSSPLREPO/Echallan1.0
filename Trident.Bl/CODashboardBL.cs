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
    public class CODashboardBL
    {

        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;

        #region Select All Vehicle Type
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_SelectAll(string strType, string strData)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];

                pSqlParameter[0] = new SqlParameter("@strType", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strType;

                pSqlParameter[1] = new SqlParameter("@strData", SqlDbType.VarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = strData;

                sSql = "usp_ChallanData_Select_All";
                DataTable dtResult = new DataTable();
                dtResult = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

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

        #region Select All Vehicle Type
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_Edit(int ChallanID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = ChallanID;

                sSql = "usp_Challan_Select_Edit";
                DataSet dsResult = new DataSet();
                dsResult = Database.ExecuteDataSet(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dsResult);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Challan Print
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult Receipt_Print(int intReceiptId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intReceiptId;

                sSql = "usp_tbl_Receipt_Print";
                DataTable dsResult = new DataTable();
                dsResult = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dsResult);
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
