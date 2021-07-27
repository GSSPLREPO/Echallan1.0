using System;
using System.Data;
using System.Data.SqlClient;
using Trident.DataAccess;
using Trident.Bo;
using Trident.Common;

namespace Trident.BL
{
    /// <summary>
    /// Class Created By : Raheel, 04-06-2019
    /// Summary description for Organisation.
    /// </summary>
    public class HeadOfficeBL
    {
        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion


        #region Select All HeadOffice Details
        /// <summary>
        /// To Select All data from the HeadOffice table
        /// Created By : Raheel, 04-06-2019
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult HeadOffice_SelectAll()
        {
            try
            {
                sSql = "usp_HeadOffice_SelectAll";
                DataTable dtHeadOffice = new DataTable();
                dtHeadOffice = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, null);

                ApplicationResult objResults = new ApplicationResult(dtHeadOffice);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select HeadOffice Details by Id
        /// <summary>
        /// Select all details of HeadOffice for selected Id from HeadOffice table
        /// Created By : Raheel, 04-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult HeadOffice_Select(int intId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                strStoredProcName = "usp_HeadOffice_Select";

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

        #region Delete HeadOffice Details by Id
        /// <summary>
        /// To Delete details of HeadOffice for selected Id from HeadOffice table
        /// Created By : Raheel, 04-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult HeadOffice_Delete(int intId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                strStoredProcName = "usp_HeadOffice_Delete";

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

        #region Insert HeadOffice Details
        /// <summary>
        /// To Insert details of HeadOffice in HeadOffice table
        /// Created By : Raheel, 04-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="objHeadOfficeBO"></param>
        /// <returns></returns>
        public ApplicationResult HeadOffice_Insert(HeadOfficeBO objHeadOfficeBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[11];


                pSqlParameter[0] = new SqlParameter("@Name", SqlDbType.NVarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objHeadOfficeBO.Name;

                pSqlParameter[1] = new SqlParameter("@Address", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objHeadOfficeBO.Address;

                pSqlParameter[2] = new SqlParameter("@State", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objHeadOfficeBO.State;

                pSqlParameter[3] = new SqlParameter("@City", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objHeadOfficeBO.City;

                pSqlParameter[4] = new SqlParameter("@Email", SqlDbType.NVarChar);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objHeadOfficeBO.Email;

                pSqlParameter[5] = new SqlParameter("@MobileNo", SqlDbType.NVarChar);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objHeadOfficeBO.MobileNo;

                pSqlParameter[6] = new SqlParameter("@FaxNo", SqlDbType.NVarChar);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objHeadOfficeBO.FaxNo;

                pSqlParameter[7] = new SqlParameter("@Logo", SqlDbType.NVarChar);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objHeadOfficeBO.Logo;

                pSqlParameter[8] = new SqlParameter("@DueDays", SqlDbType.Int);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = objHeadOfficeBO.DueDays;

                pSqlParameter[9] = new SqlParameter("@ChallanAbbreviation", SqlDbType.NVarChar);
                pSqlParameter[9].Direction = ParameterDirection.Input;
                pSqlParameter[9].Value = objHeadOfficeBO.ChallanAbbreviation;

                //pSqlParameter[10] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                //pSqlParameter[10].Direction = ParameterDirection.Input;
                //pSqlParameter[10].Value = objHeadOfficeBO.IsDeleted;

                pSqlParameter[10] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                pSqlParameter[10].Direction = ParameterDirection.Input;
                pSqlParameter[10].Value = objHeadOfficeBO.CreatedBy;

                //pSqlParameter[12] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                //pSqlParameter[12].Direction = ParameterDirection.Input;
                //pSqlParameter[12].Value = objHeadOfficeBO.CreatedDate;

                //pSqlParameter[13] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                //pSqlParameter[13].Direction = ParameterDirection.Input;
                //pSqlParameter[13].Value = objHeadOfficeBO.LastModifiedBy;

                //pSqlParameter[14] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                //pSqlParameter[14].Direction = ParameterDirection.Input;
                //pSqlParameter[14].Value = objHeadOfficeBO.LastModifiedDate;


                sSql = "usp_HeadOffice_Insert";
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
                objHeadOfficeBO = null;
            }
        }
        #endregion

        #region Update HeadOffice Details
        /// <summary>
        /// To Update details of HeadOffice in HeadOffice table
        /// Created By : Raheel, 04-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="objHeadOfficeBO"></param>
        /// <returns></returns>
        public ApplicationResult HeadOffice_Update(HeadOfficeBO objHeadOfficeBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[12];


                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objHeadOfficeBO.Id;

                pSqlParameter[1] = new SqlParameter("@Name", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objHeadOfficeBO.Name;

                pSqlParameter[2] = new SqlParameter("@Address", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objHeadOfficeBO.Address;

                pSqlParameter[3] = new SqlParameter("@State", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objHeadOfficeBO.State;

                pSqlParameter[4] = new SqlParameter("@City", SqlDbType.NVarChar);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objHeadOfficeBO.City;

                pSqlParameter[5] = new SqlParameter("@Email", SqlDbType.NVarChar);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objHeadOfficeBO.Email;

                pSqlParameter[6] = new SqlParameter("@MobileNo", SqlDbType.NVarChar);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objHeadOfficeBO.MobileNo;

                pSqlParameter[7] = new SqlParameter("@FaxNo", SqlDbType.NVarChar);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objHeadOfficeBO.FaxNo;

                pSqlParameter[8] = new SqlParameter("@Logo", SqlDbType.NVarChar);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = objHeadOfficeBO.Logo;

                pSqlParameter[9] = new SqlParameter("@DueDays", SqlDbType.Int);
                pSqlParameter[9].Direction = ParameterDirection.Input;
                pSqlParameter[9].Value = objHeadOfficeBO.DueDays;

                pSqlParameter[10] = new SqlParameter("@ChallanAbbreviation", SqlDbType.NVarChar);
                pSqlParameter[10].Direction = ParameterDirection.Input;
                pSqlParameter[10].Value = objHeadOfficeBO.ChallanAbbreviation;

                //pSqlParameter[11] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                //pSqlParameter[11].Direction = ParameterDirection.Input;
                //pSqlParameter[11].Value = objHeadOfficeBO.IsDeleted;

                //pSqlParameter[12] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                //pSqlParameter[12].Direction = ParameterDirection.Input;
                //pSqlParameter[12].Value = objHeadOfficeBO.CreatedBy;

                //pSqlParameter[13] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                //pSqlParameter[13].Direction = ParameterDirection.Input;
                //pSqlParameter[13].Value = objHeadOfficeBO.CreatedDate;

                pSqlParameter[11] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[11].Direction = ParameterDirection.Input;
                pSqlParameter[11].Value = objHeadOfficeBO.LastModifiedBy;

                //pSqlParameter[15] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                //pSqlParameter[15].Direction = ParameterDirection.Input;
                //pSqlParameter[15].Value = objHeadOfficeBO.LastModifiedDate;


                sSql = "usp_HeadOffice_Update";
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
                objHeadOfficeBO = null;
            }
        }
        #endregion




        #region Select HeadOffice Details by HeadOfficeName
        /// <summary>
        /// Select all details of HeadOffice for selected HeadOfficeName from HeadOffice table
        /// Created By : Raheel, 04-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="HeadOfficeName"></param>
        /// <returns></returns>
        public ApplicationResult HeadOffice_Select_byHeadOfficeName(string strHeadOfficeName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@HeadOfficeName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strHeadOfficeName;

                strStoredProcName = "usp_HeadOffice_Select_ByHeadOffice";

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


        #region ValidateName for HeadOffice 
        /// <summary>
        /// Function which validates whether the HeadOfficeName already exits in HeadOffice table.
        /// Created By : Raheel, 04-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="strHeadOfficeName"></param>
        /// <returns></returns>
        public ApplicationResult HeadOffice_ValidateName(string strHeadOfficeName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@HeadOfficeName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strHeadOfficeName;

                strStoredProcName = "usp_HeadOffice_Validate_HeadOfficeName";

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


