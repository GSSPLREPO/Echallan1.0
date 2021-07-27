using System;
using System.Data;
using System.Data.SqlClient;
using Trident.Bo;
using Trident.Common;
using Trident.DataAccess;

namespace Trident.Bl
{
    public class ReceiptBL
    {
        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion


        #region Select All Receipt Details
        /// <summary>
        /// To Select All data from the Receipt table
        /// Created By : Chintan, 22-10-2019
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult Receipt_SelectAll()
        {
            try
            {
                sSql = "usp_Receipt_SelectAll";
                DataTable dtReceipt = new DataTable();
                dtReceipt = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, null);

                ApplicationResult objResults = new ApplicationResult(dtReceipt);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select All Receipt Details for Printing
        /// <summary>
        /// To Select All data from the Receipt table
        /// Created By : Chintan, 22-10-2019
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult Receipt_Print_SelectAll()
        {
            try
            {
                sSql = "usp_tbl_Receipt_Print_SelectAll";
                DataTable dtReceipt = new DataTable();
                dtReceipt = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, null);

                ApplicationResult objResults = new ApplicationResult(dtReceipt);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select Receipt Details by Id
        /// <summary>
        /// Select all details of Receipt for selected Id from Receipt table
        /// Created By : Chintan, 22-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult Receipt_Select(int intId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                strStoredProcName = "usp_Receipt_Select";

                DataTable dtResult = new DataTable();
                dtResult = Database.ExecuteDataTable(CommandType.StoredProcedure, strStoredProcName, pSqlParameter);
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

        #region Delete Receipt Details by Id
        /// <summary>
        /// To Delete details of Receipt for selected Id from Receipt table
        /// Created By : Chintan, 22-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult Receipt_Delete(int intId, DateTime dtCreatedDate, int intCreatedBy)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                pSqlParameter[1] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = dtCreatedDate;

                pSqlParameter[2] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = intCreatedBy;

                strStoredProcName = "usp_Receipt_Delete";

                int iResult = Database.ExecuteNonQuery(CommandType.StoredProcedure, strStoredProcName, pSqlParameter);
                if (iResult > 0)
                {
                    ApplicationResult objResults = new ApplicationResult();
                    objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                    return objResults;
                }
                else
                {
                    ApplicationResult objResults = new ApplicationResult();
                    objResults.status = ApplicationResult.CommonStatusType.FAILURE;
                    return objResults;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Insert Receipt Details
        /// <summary>
        /// To Insert details of Receipt in Receipt table
        /// Created By : Chintan, 22-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="objReceiptBO"></param>
        /// <returns></returns>
        public ApplicationResult Receipt_Insert(ReceiptBO objReceiptBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[9];


                pSqlParameter[0] = new SqlParameter("@ChallanId", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objReceiptBO.ChallanId;

                pSqlParameter[1] = new SqlParameter("@PaymentMode", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objReceiptBO.PaymentMode;

                pSqlParameter[2] = new SqlParameter("@PaidAmount", SqlDbType.Decimal);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objReceiptBO.PaidAmount;

                pSqlParameter[3] = new SqlParameter("@ReceiptNo", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objReceiptBO.ReceiptNo;

                pSqlParameter[4] = new SqlParameter("@MobileNo", SqlDbType.NVarChar);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objReceiptBO.MobileNo;

                pSqlParameter[5] = new SqlParameter("@EmailId", SqlDbType.NVarChar);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objReceiptBO.EmailId;

                pSqlParameter[6] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objReceiptBO.IsDeleted;

                pSqlParameter[7] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objReceiptBO.CreatedBy;

                pSqlParameter[8] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = objReceiptBO.CreatedDate;

                sSql = "usp_Receipt_Insert";

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
            finally
            {
                objReceiptBO = null;
            }
        }
        #endregion

        #region Update Receipt Details
        /// <summary>
        /// To Update details of Receipt in Receipt table
        /// Created By : Chintan, 22-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="objReceiptBO"></param>
        /// <returns></returns>
        public ApplicationResult Receipt_Update(ReceiptBO objReceiptBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[12];


                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objReceiptBO.Id;

                pSqlParameter[1] = new SqlParameter("@ChallanId", SqlDbType.VarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objReceiptBO.ChallanId;

                pSqlParameter[2] = new SqlParameter("@PaymentMode", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objReceiptBO.PaymentMode;

                pSqlParameter[3] = new SqlParameter("@PaidAmount", SqlDbType.Decimal);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objReceiptBO.PaidAmount;

                pSqlParameter[4] = new SqlParameter("@ReceiptNo", SqlDbType.NVarChar);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objReceiptBO.ReceiptNo;

                pSqlParameter[5] = new SqlParameter("@MobileNo", SqlDbType.NVarChar);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objReceiptBO.MobileNo;

                pSqlParameter[6] = new SqlParameter("@EmailId", SqlDbType.NVarChar);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objReceiptBO.EmailId;

                pSqlParameter[7] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objReceiptBO.IsDeleted;

                pSqlParameter[8] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = objReceiptBO.CreatedBy;

                pSqlParameter[9] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[9].Direction = ParameterDirection.Input;
                pSqlParameter[9].Value = objReceiptBO.CreatedDate;

                pSqlParameter[10] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[10].Direction = ParameterDirection.Input;
                pSqlParameter[10].Value = objReceiptBO.LastModifiedBy;

                pSqlParameter[11] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[11].Direction = ParameterDirection.Input;
                pSqlParameter[11].Value = objReceiptBO.LastModifiedDate;


                sSql = "usp_Receipt_Update";
                int iResult = Database.ExecuteNonQuery(CommandType.StoredProcedure, sSql, pSqlParameter);

                if (iResult > 0)
                {
                    ApplicationResult objResults = new ApplicationResult();
                    objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                    return objResults;
                }
                else
                {
                    ApplicationResult objResults = new ApplicationResult();
                    objResults.status = ApplicationResult.CommonStatusType.FAILURE;
                    return objResults;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                objReceiptBO = null;
            }
        }
        #endregion




        #region Select Receipt Details by ReceiptName
        /// <summary>
        /// Select all details of Receipt for selected ReceiptName from Receipt table
        /// Created By : Chintan, 22-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="ReceiptName"></param>
        /// <returns></returns>
        public ApplicationResult Receipt_Select_byReceiptName(string strReceiptName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@ReceiptName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strReceiptName;

                strStoredProcName = "usp_Receipt_Select_ByReceipt";

                DataTable dtResult = new DataTable();
                dtResult = Database.ExecuteDataTable(CommandType.StoredProcedure, strStoredProcName, pSqlParameter);
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


        #region ValidateName for Receipt 
        /// <summary>
        /// Function which validates whether the ReceiptName already exits in Receipt table.
        /// Created By : Chintan, 22-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="strReceiptName"></param>
        /// <returns></returns>
        public ApplicationResult Receipt_ValidateName(string strReceiptName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@ReceiptName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strReceiptName;

                strStoredProcName = "usp_Receipt_Validate_ReceiptName";

                DataTable dtResult = new DataTable();
                dtResult = Database.ExecuteDataTable(CommandType.StoredProcedure, strStoredProcName, pSqlParameter);
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
