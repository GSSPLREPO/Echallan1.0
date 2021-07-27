using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Trident.Bo;
using Trident.Common;
using Trident.DataAccess;
using System.Data;
using System.Data.SqlClient;
using Trident.Bo;

namespace Trident.BL
{
    public class RoleRights_T_BL
    {
        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion


        #region Select All RoleRights_T Details
        /// <summary>
        /// To Select All data from the tbl_RoleRights_T table
        /// Created By : Amruta, 10/11/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult RoleRights_T_SelectAll()
        {
            try
            {
                sSql = "usp_tbl_RoleRights_T_SelectAll";
                DataTable dtRoleRights_T = new DataTable();
                dtRoleRights_T = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, null);

                ApplicationResult objResults = new ApplicationResult(dtRoleRights_T);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select RoleRights_T Details by RoleRightsID
        /// <summary>
        /// Select all details of RoleRights_T for selected RoleRightsID from tbl_RoleRights_T table
        /// Created By : Amruta, 10/11/2012
        /// Modified By :
        /// </summary>
        /// <param name="intRoleRightsID"></param>
        /// <returns></returns>
        public ApplicationResult RoleRights_T_Select(int intRoleRightsID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@EmployeeRoleID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intRoleRightsID;

                strStoredProcName = "usp_tbl_RoleRights_T_Select";

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

        #region Delete RoleRights_T Details by RoleRightsID
        /// <summary>
        /// To Delete details of RoleRights_T for selected RoleRightsID from tbl_RoleRights_T table
        /// Created By : Amruta, 10/11/2012
        /// Modified By :
        /// </summary>
        /// <param name="intRoleRightsID"></param>
        /// <returns></returns>
        public ApplicationResult RoleRights_T_Delete(int intEmployeeRoleID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@EmployeeRoleID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intEmployeeRoleID;

                strStoredProcName = "usp_tbl_RoleRights_T_Delete";

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

        #region Insert RoleRights_T Details
        /// <summary>
        /// To Insert details of RoleRights_T in tbl_RoleRights_T table
        /// Created By : Amruta, 10/11/2012
        /// Modified By :
        /// </summary>
        /// <param name="objRoleRights_TBO"></param>
        /// <returns></returns>
        public ApplicationResult RoleRights_T_Insert(RoleRights_T_BO objRoleRights_TBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];


                pSqlParameter[0] = new SqlParameter("@EmployeeRoleID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objRoleRights_TBO.EmployeeRoleID;

                pSqlParameter[1] = new SqlParameter("@RoleScreenID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objRoleRights_TBO.RoleRightsID;


                sSql = "usp_tbl_RoleRights_T_Insert";
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
                objRoleRights_TBO = null;
            }
        }
        #endregion

        #region Update RoleRights_T Details
        /// <summary>
        /// To Update details of RoleRights_T in tbl_RoleRights_T table
        /// Created By : Amruta, 10/11/2012
        /// Modified By :
        /// </summary>
        /// <param name="objRoleRights_TBO"></param>
        /// <returns></returns>
        public ApplicationResult RoleRights_T_Update(RoleRights_T_BO objRoleRights_TBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];


                pSqlParameter[0] = new SqlParameter("@RoleRightsID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objRoleRights_TBO.RoleRightsID;

                pSqlParameter[1] = new SqlParameter("@EmployeeRoleID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objRoleRights_TBO.EmployeeRoleID;

                pSqlParameter[2] = new SqlParameter("@RightID", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objRoleRights_TBO.RoleRightsID;


                sSql = "usp_tbl_RoleRights_T_Update";
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
                objRoleRights_TBO = null;
            }
        }
        #endregion

        //--------------------------------------------------------

        #region Select RoleRights_T Details by RoleRights_TName
        /// <summary>
        /// Select all details of RoleRights_T for selected RoleRights_TName from tbl_RoleRights_T table
        /// Created By : Amruta, 10/11/2012
        /// Modified By :
        /// </summary>
        /// <param name="RoleRights_TName"></param>
        /// <returns></returns>
        public ApplicationResult RoleRights_T_Select_byRoleRights_TName(string strRoleRights_TName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@RoleRights_TName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strRoleRights_TName;

                strStoredProcName = "usp_tbl_RoleRights_T_Select_ByRoleRights_T";

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


        #region ValidateName for RoleRights_T
        /// <summary>
        /// Function which validates whether the RoleRights_TName already exits in tbl_RoleRights_T table.
        /// Created By : Amruta, 10/11/2012
        /// Modified By :
        /// </summary>
        /// <param name="strRoleRights_TName"></param>
        /// <returns></returns>
        public ApplicationResult RoleRights_T_ValidateName(string strRoleRights_TName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@RoleRights_TName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strRoleRights_TName;

                strStoredProcName = "usp_tbl_RoleRights_T_Validate_RoleRights_TName";

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

        #region Select RoleRights_T Details by RoleRightsID For Authorisation
        /// <summary>
        /// Select all details of RoleRights_T for selected RoleRightsID from tbl_RoleRights_T table
        /// Created By : Amruta, 11/11/2012
        /// Modified By :
        /// </summary>
        /// <param name="intRoleRightsID"></param>
        /// <returns></returns>
        public ApplicationResult RoleRights_T_For_Authorisation(int intEmployeeRoleID, int intUserName)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];

                pSqlParameter[0] = new SqlParameter("@EmployeeRoleID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intEmployeeRoleID;

                pSqlParameter[1] = new SqlParameter("@EmployeeID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intUserName;

                strStoredProcName = "usp_tbl_RoleRights_T_For_Authorisation";

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

        #region Select RoleRights_T Details by Role and Screen Ids

        /// <summary>
        /// Select all details of RoleRights_T for selected RoleRightsID from tbl_RoleRights_T table
        /// Created By : Amruta, 10/11/2012
        /// Modified By :
        /// </summary>
        /// <param name="intRoleId"></param>
        /// <param name="intScreenId"></param>
        /// <returns></returns>
        public ApplicationResult RoleRights_Select(int intRoleId, int intScreenId)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];

                pSqlParameter[0] = new SqlParameter("@RoleId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intRoleId;

                pSqlParameter[1] = new SqlParameter("@ScreenId", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intScreenId;

                strStoredProcName = "usp_tbl_RoleRights_Select";

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




    


        #region Select All Rights Details
        /// <summary>
        /// To Select All data from the tbl_RoleRights_T table
        /// Created By : Vishal, 04-07-2016
        /// Modified By :
        /// </summary>
        public ApplicationResult Rights_SelectAll()
        {
            try
            {
               
                sSql = "usp_tbl_RoleRights_T_SelectAll";
                DataTable dtRights = new DataTable();
                dtRights = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, null);

                ApplicationResult objResults = new ApplicationResult(dtRights);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                 throw ex;
            }
        }
        #endregion



        #region Select Rights Details by RoleRightsID
        /// <summary>
        /// Select all details of Rights for selected RoleRightsID from tbl_RoleRights_T table
        /// Created By : Vishal, 04-07-2016
        /// Modified By :
        /// </summary>
        public ApplicationResult Rights_Select(int intRoleRightsID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@RoleID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intRoleRightsID;

                strStoredProcName = "usp_tbl_RoleRights_T_Select";

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



        #region Delete Rights Details by RoleRightsID
        /// <summary>
        /// To Delete details of Rights for selected RoleRightsID from tbl_RoleRights_T table
        /// Created By : Vishal, 04-07-2016
        /// Modified By :
        /// </summary>
        public ApplicationResult Rights_Delete(int intRoleRightsID, int intLastModifiedBy, DateTime strLastModifiedDate)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@RoleRightsID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intRoleRightsID;

                pSqlParameter[1] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intLastModifiedBy;

                pSqlParameter[2] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = strLastModifiedDate;

                strStoredProcName = "usp_tbl_RoleRights_T_Delete";

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



        #region Insert Rights Details
        /// <summary>
        /// To Insert details of Rights in tbl_RoleRights_T table
        /// Created By : Vishal, 04-07-2016
        /// Modified By :
        /// </summary>
        public ApplicationResult Rights_Insert(RoleRights_T_BO objRightsBo)
        {
            try
            {
                pSqlParameter = new SqlParameter[7];


                pSqlParameter[0] = new SqlParameter("@RoleID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objRightsBo.EmployeeRoleID;

                pSqlParameter[1] = new SqlParameter("@ScreenID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objRightsBo.RoleScreenID;

                pSqlParameter[2] = new SqlParameter("@CreatedUserID", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objRightsBo.CreatedUserID;

                pSqlParameter[3] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objRightsBo.CreatedDate;

                pSqlParameter[4] = new SqlParameter("@LastModifiedUserID", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objRightsBo.LastModifiedUserID;

                pSqlParameter[5] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objRightsBo.LastModifiedDate;

                pSqlParameter[6] = new SqlParameter("@IsDeleted", SqlDbType.Int);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objRightsBo.IsDeleted;



                sSql = "usp_tbl_RoleRights_T_Insert";
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
                objRightsBo = null;
            }
        }
        #endregion



        #region Update Rights Details
        /// <summary>
        /// To Update details of Rights in tbl_RoleRights_T table
        /// Created By : Vishal, 04-07-2016
        /// Modified By :
        /// </summary>
        public ApplicationResult Rights_Update(RoleRights_T_BO objRightsBo)
        {
            try
            {
                pSqlParameter = new SqlParameter[6];


                pSqlParameter[0] = new SqlParameter("@ID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objRightsBo.RoleRightsID;

                pSqlParameter[1] = new SqlParameter("@RoleID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objRightsBo.EmployeeRoleID;

                pSqlParameter[2] = new SqlParameter("@ScreenID", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objRightsBo.RoleScreenID;

                pSqlParameter[3] = new SqlParameter("@CreatedUserID", SqlDbType.Int);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objRightsBo.CreatedUserID;

                pSqlParameter[4] = new SqlParameter("@LastModifiedUserID", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objRightsBo.LastModifiedUserID;

                pSqlParameter[5] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objRightsBo.LastModifiedDate;

                pSqlParameter[6] = new SqlParameter("@IsDeleted", SqlDbType.Int);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objRightsBo.IsDeleted;



                sSql = "usp_tbl_tbl_RoleRights_T_Update";

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
                objRightsBo = null;
            }
        }
        #endregion



        #region ValidateName for Rights
        /// <summary>
        /// Function which validates whether the RightsName already exits in tbl_RoleRights_T table.
        /// Created By : Vishal, 04-07-2016
        /// Modified By :
        /// </summary>
        public ApplicationResult Rights_ValidateName(int intID, int intBranchID, string strName)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@ID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intID;


                pSqlParameter[1] = new SqlParameter("@BranchID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intBranchID;

                pSqlParameter[2] = new SqlParameter("@Name", SqlDbType.VarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = strName;


                strStoredProcName = "usp_tbl_tbl_RoleRights_T_ValidateName";

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
