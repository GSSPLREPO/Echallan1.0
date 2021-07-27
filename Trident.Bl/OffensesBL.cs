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
    /// Class Created By : Chintan, 16-06-2019
    /// Summary description for Organisation.
    /// </summary>
    public class OffensesBL
    {
        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion


        #region Select All Offenses Details
        /// <summary>
        /// To Select All data from the Offenses table
        /// Created By : Chintan, 16-06-2019
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult Offenses_SelectAll()
        {
            try
            {
                sSql = "usp_Offenses_SelectAll";
                DataTable dtOffenses = new DataTable();
                dtOffenses = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, null);

                ApplicationResult objResults = new ApplicationResult(dtOffenses);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select Offenses Details by OffenseId
        /// <summary>
        /// Select all details of Offenses for selected OffenseId from Offenses table
        /// Created By : Chintan, 16-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="intOffenseId"></param>
        /// <returns></returns>
        public ApplicationResult Offenses_Select(int intOffenseId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@OffenseId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOffenseId;

                strStoredProcName = "usp_Offenses_Select";

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

        #region Delete Offenses Details by OffenseId
        /// <summary>
        /// To Delete details of Offenses for selected OffenseId from Offenses table
        /// Created By : Chintan, 16-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="intOffenseId"></param>
        /// <returns></returns>
        public ApplicationResult Offenses_Delete(int intOffenseId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@OffenseId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOffenseId;

                strStoredProcName = "usp_Offenses_Delete";

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

        #region Insert Offenses Details
        /// <summary>
        /// To Insert details of Offenses in Offenses table
        /// Created By : Chintan, 16-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="objOffensesBO"></param>
        /// <returns></returns>
        public ApplicationResult Offenses_Insert(OffensesBO objOffensesBO, string strFirstOffense, string strSubOffense)
        {
            try
            {
                pSqlParameter = new SqlParameter[8];


                pSqlParameter[0] = new SqlParameter("@Name", SqlDbType.NVarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objOffensesBO.Name;

                pSqlParameter[1] = new SqlParameter("@MaxOffensesAllowed", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objOffensesBO.MaxOffensesAllowed;

                pSqlParameter[2] = new SqlParameter("@ApplicableSections", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objOffensesBO.ApplicableSections;

                pSqlParameter[3] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objOffensesBO.IsDeleted;

                pSqlParameter[4] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objOffensesBO.CreatedBy;

                pSqlParameter[5] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objOffensesBO.CreatedDate;

                pSqlParameter[6] = new SqlParameter("@FirstOffense", SqlDbType.NVarChar);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = strFirstOffense;

                pSqlParameter[7] = new SqlParameter("@SubOffense", SqlDbType.NVarChar);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = strSubOffense;

                sSql = "usp_Offenses_Insert";

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
                objOffensesBO = null;
            }
        }
        #endregion

        #region Update Offenses Details
        /// <summary>
        /// To Update details of Offenses in Offenses table
        /// Created By : Chintan, 16-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="objOffensesBO"></param>
        /// <returns></returns>
        public ApplicationResult Offenses_Update(OffensesBO objOffensesBO, string strFirstOffense, string strSubOffense)
        {
            try
            {
                pSqlParameter = new SqlParameter[9];


                pSqlParameter[0] = new SqlParameter("@OffenseId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objOffensesBO.OffenseId;

                pSqlParameter[1] = new SqlParameter("@Name", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objOffensesBO.Name;

                pSqlParameter[2] = new SqlParameter("@MaxOffensesAllowed", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objOffensesBO.MaxOffensesAllowed;

                pSqlParameter[3] = new SqlParameter("@ApplicableSections", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objOffensesBO.ApplicableSections;

                pSqlParameter[4] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objOffensesBO.IsDeleted;

                pSqlParameter[5] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objOffensesBO.LastModifiedBy;

                pSqlParameter[6] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objOffensesBO.LastModifiedDate;

                pSqlParameter[7] = new SqlParameter("@FirstOffense", SqlDbType.NVarChar);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = strFirstOffense;

                pSqlParameter[8] = new SqlParameter("@SubOffense", SqlDbType.NVarChar);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = strSubOffense;

                sSql = "usp_Offenses_Update";

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
                objOffensesBO = null;
            }
        }
        #endregion




        #region Select Offenses Details by OffensesName
        /// <summary>
        /// Select all details of Offenses for selected OffensesName from Offenses table
        /// Created By : Chintan, 16-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="OffensesName"></param>
        /// <returns></returns>
        public ApplicationResult Offenses_Select_byOffensesName(string strOffensesName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@OffensesName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strOffensesName;

                strStoredProcName = "usp_Offenses_Select_ByOffenses";

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


        #region ValidateName for Offenses 
        /// <summary>
        /// Function which validates whether the OffensesName already exits in Offenses table.
        /// Created By : Chintan, 16-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="strOffensesName"></param>
        /// <returns></returns>
        public ApplicationResult Offenses_ValidateName(string strOffensesName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@OffensesName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strOffensesName;

                strStoredProcName = "usp_Offenses_Validate_OffensesName";

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


