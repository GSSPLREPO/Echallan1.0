using System;
using System.Collections.Generic;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using Trident.DataAccess;
using Trident.Bo;
using Trident.Common;

namespace Trident.BL
{
    /// <summary>
    /// Class Created By : Chintan, 10-10-2019
    /// Summary description for Organisation.
    /// </summary>
    public class UserBL
    {
        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion


        #region Select All User Details
        /// <summary>
        /// To Select All data from the User table
        /// Created By : Chintan, 10-10-2019
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult User_SelectAll(int intHeadOfficeId, int intOtherOfficesId)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];

                pSqlParameter[0] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intHeadOfficeId;

                pSqlParameter[1] = new SqlParameter("@OtherOfficesId", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intOtherOfficesId;

                sSql = "usp_User_SelectAll";

                DataTable dtUser = new DataTable();
                dtUser = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtUser);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select User Details by Id
        /// <summary>
        /// Select all details of User for selected Id from User table
        /// Created By : Chintan, 10-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult User_Select(int intId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                strStoredProcName = "usp_User_Select";

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

        #region Delete User Details by Id
        /// <summary>
        /// To Delete details of User for selected Id from User table
        /// Created By : Chintan, 10-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult User_Delete(int intId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                strStoredProcName = "usp_User_Delete";

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

        #region Insert User Details
        /// <summary>
        /// To Insert details of User in User table
        /// Created By : Chintan, 10-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="objUserBO"></param>
        /// <returns></returns>
        public ApplicationResult User_Insert(UserBO objUserBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[7];


                pSqlParameter[0] = new SqlParameter("@OtherOfficesId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objUserBO.OtherOfficesId;

                pSqlParameter[1] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objUserBO.HeadOfficeId;

                pSqlParameter[2] = new SqlParameter("@Name", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objUserBO.Name;

                pSqlParameter[3] = new SqlParameter("@RoleId", SqlDbType.Int);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objUserBO.RoleId;

                pSqlParameter[4] = new SqlParameter("@Password", SqlDbType.NVarChar);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objUserBO.Password;

                pSqlParameter[5] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objUserBO.CreatedBy;

                pSqlParameter[6] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objUserBO.CreatedDate;


                sSql = "usp_User_Insert";
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
                objUserBO = null;
            }
        }
        #endregion

        #region Update User Details
        /// <summary>
        /// To Update details of User in User table
        /// Created By : Chintan, 10-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="objUserBO"></param>
        /// <returns></returns>
        public ApplicationResult User_Update(UserBO objUserBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[8];


                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objUserBO.Id;

                pSqlParameter[1] = new SqlParameter("@OtherOfficesId", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objUserBO.OtherOfficesId;

                pSqlParameter[2] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objUserBO.HeadOfficeId;

                pSqlParameter[3] = new SqlParameter("@Name", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objUserBO.Name;

                pSqlParameter[4] = new SqlParameter("@RoleId", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objUserBO.RoleId;

                pSqlParameter[5] = new SqlParameter("@Password", SqlDbType.NVarChar);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objUserBO.Password;

                pSqlParameter[6] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objUserBO.LastModifiedBy;

                pSqlParameter[7] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objUserBO.LastModifiedDate;


                sSql = "usp_User_Update";
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
                objUserBO = null;
            }
        }
        #endregion




        #region Select User Details by UserName
        /// <summary>
        /// Select all details of User for selected UserName from User table
        /// Created By : Chintan, 10-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="UserName"></param>
        /// <returns></returns>
        public ApplicationResult User_Select_byUserName(string strUserName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@UserName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strUserName;

                strStoredProcName = "usp_User_Select_ByUser";

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


        #region ValidateName for User 
        /// <summary>
        /// Function which validates whether the UserName already exits in User table.
        /// Created By : Chintan, 10-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="strUserName"></param>
        /// <returns></returns>
        public ApplicationResult User_ValidateName(string strUserName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@UserName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strUserName;

                strStoredProcName = "usp_User_Validate_UserName";

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


        #region Update User Credentials
        /// <summary>
        /// To Update Credentials of User in User table
        /// Created By : Bhargav, 01-04-2020
        /// Modified By :
        /// </summary>
        /// <param name="objUserBO"></param>
        /// <returns></returns>
        public ApplicationResult User_Credentials_Update(UserBO objUserBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[5];


                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objUserBO.Id;

                pSqlParameter[1] = new SqlParameter("@Name", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objUserBO.Name;

                pSqlParameter[2] = new SqlParameter("@Password", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objUserBO.Password;

                pSqlParameter[3] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objUserBO.LastModifiedBy;

                pSqlParameter[4] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objUserBO.LastModifiedDate;


                sSql = "usp_User_Credentials_Update";
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
                objUserBO = null;
            }
        }
        #endregion

    }
}