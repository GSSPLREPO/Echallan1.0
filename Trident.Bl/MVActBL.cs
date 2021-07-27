using System;
using System.Collections.Generic;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using Trident.DataAccess;
using Trident.Bo;
using Trident.Common;

namespace Trident.Bl
{
    /// <summary>
    /// Class Created By : Chintan, 19-11-2019
    /// Summary description for Organisation.
    /// </summary>
    public class MVActBL
    {
        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion


        #region Select All MVAct Details
        /// <summary>
        /// To Select All data from the MotorVechicleActs table
        /// Created By : Chintan, 19-11-2019
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult MVAct_SelectAll()
        {
            try
            {
                sSql = "usp_MotorVechicleActs_SelectAll";
                DataTable dtMVAct = new DataTable();
                dtMVAct = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, null);

                ApplicationResult objResults = new ApplicationResult(dtMVAct);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select MVAct Details by Id
        /// <summary>
        /// Select all details of MVAct for selected Id from MotorVechicleActs table
        /// Created By : Chintan, 19-11-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult MVAct_Select(int intId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                strStoredProcName = "usp_MotorVechicleActs_Select";

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

        #region Select MVAct Details by Id
        /// <summary>
        /// Select all details of MVAct for selected Id from MotorVechicleActs table
        /// Created By : Chintan, 19-11-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult MVAct_Select_Section()
        {
            try
            {

                strStoredProcName = "usp_MotorVechicleActs_Select_Section";

                DataTable dtResult = new DataTable();
                dtResult = Database.ExecuteDataTable(CommandType.StoredProcedure, strStoredProcName, null);
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

        #region Delete MVAct Details by Id
        /// <summary>
        /// To Delete details of MVAct for selected Id from MotorVechicleActs table
        /// Created By : Chintan, 19-11-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult MVAct_Delete(int intId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                strStoredProcName = "usp_MotorVechicleActs_Delete";

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

        #region Insert MVAct Details
        /// <summary>
        /// To Insert details of MVAct in MotorVechicleActs table
        /// Created By : Chintan, 19-11-2019
        /// Modified By :
        /// </summary>
        /// <param name="objMVActBO"></param>
        /// <returns></returns>
        public ApplicationResult MVAct_Insert(MVActBO objMVActBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[6];


                pSqlParameter[0] = new SqlParameter("@Section", SqlDbType.NVarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objMVActBO.Section;

                pSqlParameter[1] = new SqlParameter("@Title", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objMVActBO.Title;

                pSqlParameter[2] = new SqlParameter("@Description", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objMVActBO.Description;

                pSqlParameter[3] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objMVActBO.IsDeleted;

                pSqlParameter[4] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objMVActBO.CreatedBy;

                pSqlParameter[5] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objMVActBO.CreatedDate;


                sSql = "usp_MotorVechicleActs_Insert";
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
                objMVActBO = null;
            }
        }
        #endregion

        #region Update MVAct Details
        /// <summary>
        /// To Update details of MVAct in MotorVechicleActs table
        /// Created By : Chintan, 19-11-2019
        /// Modified By :
        /// </summary>
        /// <param name="objMVActBO"></param>
        /// <returns></returns>
        public ApplicationResult MVAct_Update(MVActBO objMVActBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[7];


                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objMVActBO.Id;

                pSqlParameter[1] = new SqlParameter("@Section", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objMVActBO.Section;

                pSqlParameter[2] = new SqlParameter("@Title", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objMVActBO.Title;

                pSqlParameter[3] = new SqlParameter("@Description", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objMVActBO.Description;

                pSqlParameter[4] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objMVActBO.IsDeleted;

                pSqlParameter[5] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objMVActBO.LastModifiedBy;

                pSqlParameter[6] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objMVActBO.LastModifiedDate;


                sSql = "usp_MotorVechicleActs_Update";
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
                objMVActBO = null;
            }
        }
        #endregion




        #region Select MVAct Details by MVActName
        /// <summary>
        /// Select all details of MVAct for selected MVActName from MotorVechicleActs table
        /// Created By : Chintan, 19-11-2019
        /// Modified By :
        /// </summary>
        /// <param name="MVActName"></param>
        /// <returns></returns>
        public ApplicationResult MVAct_Select_byMVActName(string strMVActName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@MVActName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strMVActName;

                strStoredProcName = "usp_MotorVechicleActs_Select_ByMVAct";

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


        #region ValidateName for MVAct 
        /// <summary>
        /// Function which validates whether the MVActName already exits in MotorVechicleActs table.
        /// Created By : Chintan, 19-11-2019
        /// Modified By :
        /// </summary>
        /// <param name="strMVActName"></param>
        /// <returns></returns>
        public ApplicationResult MVAct_ValidateName(string strMVActName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@MVActName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strMVActName;

                strStoredProcName = "usp_MotorVechicleActs_Validate_MVActName";

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


