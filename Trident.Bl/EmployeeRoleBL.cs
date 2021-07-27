using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Trident.Bo;
using Trident.DataAccess;
using Trident.Common;
using System.Data.SqlClient;
using Trident.Bo;

namespace Trident.BL
{
    public class EmployeeRoleBL
    {
        /// <summary>
        /// Class Created By : Ankita, 6/13/2012
        /// Summary description for Organisation.
        /// </summary>

        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion

        #region Select All EmployeeRole Details
        /// <summary>
        /// To Select All data from the tbl_EmployeeRole_M table
        /// Created By : Ankita, 6/13/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult EmployeeRole_SelectAll(int intHeadOfficeID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intHeadOfficeID;

                sSql = "usp_tbl_EmployeeRole_M_SelectAll";
                DataTable dtEmployeeRole = new DataTable();
                dtEmployeeRole = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtEmployeeRole);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select EmployeeRole Details by EmployeeRoleID
        /// <summary>
        /// Select all details of EmployeeRole for selected EmployeeRoleID from tbl_EmployeeRole_M table
        /// Created By : Ankita, 6/13/2012
        /// Modified By :
        /// </summary>
        /// <param name="intEmployeeRoleID"></param>
        /// <returns></returns>
        public ApplicationResult EmployeeRole_Select(int intEmployeeRoleID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@ID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intEmployeeRoleID;

                strStoredProcName = "usp_tbl_EmployeeRole_M_Select";

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

        #region Delete EmployeeRole Details by EmployeeRoleID
        /// <summary>
        /// To Delete details of EmployeeRole for selected EmployeeRoleID from tbl_EmployeeRole_M table
        /// Created By : Ankita, 6/13/2012
        /// Modified By :
        /// </summary>
        /// <param name="intEmployeeRoleID"></param>
        /// <returns></returns>
        public ApplicationResult EmployeeRole_Delete(int intEmployeeRoleID, int intLastModifiedBy, string strLastModifiedDate)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@ID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intEmployeeRoleID;

                pSqlParameter[1] = new SqlParameter("@LastModifiedUserID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intLastModifiedBy;

                pSqlParameter[2] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = strLastModifiedDate;


                strStoredProcName = "usp_tbl_EmployeeRole_M_Delete";

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

        #region Insert EmployeeRole Details
        /// <summary>
        /// To Insert details of EmployeeRole in tbl_EmployeeRole_M table
        /// Created By : Ankita, 6/13/2012
        /// Modified By :
        /// </summary>
        /// <param name="objEmployeeRoleBO"></param>
        /// <returns></returns>
        public ApplicationResult EmployeeRole_Insert(EmployeeRoleBO objEmployeeRoleBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[8];


                pSqlParameter[0] = new SqlParameter("@Name", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objEmployeeRoleBO.Name;

                pSqlParameter[1] = new SqlParameter("@Description", SqlDbType.VarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objEmployeeRoleBO.Description;

                pSqlParameter[2] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objEmployeeRoleBO.HeadOfficeId;

                pSqlParameter[3] = new SqlParameter("@IsDeleted", SqlDbType.Int);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objEmployeeRoleBO.IsDeleted;

                pSqlParameter[4] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objEmployeeRoleBO.CreatedDate;

                pSqlParameter[5] = new SqlParameter("@CreatedUserID", SqlDbType.Int);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objEmployeeRoleBO.CreatedBy;

                pSqlParameter[6] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objEmployeeRoleBO.LastModifiedDate;

                pSqlParameter[7] = new SqlParameter("@LastModifiedUserID", SqlDbType.Int);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objEmployeeRoleBO.LastModifiedBy;


                sSql = "usp_tbl_EmployeeRole_M_Insert";

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
                objEmployeeRoleBO = null;
            }
        }
        #endregion

        #region Update EmployeeRole Details
        /// <summary>
        /// To Update details of EmployeeRole in tbl_EmployeeRole_M table
        /// Created By : Ankita, 6/13/2012
        /// Modified By :
        /// </summary>
        /// <param name="objEmployeeRoleBO"></param>
        /// <returns></returns>
        public ApplicationResult EmployeeRole_Update(EmployeeRoleBO objEmployeeRoleBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[7];


                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objEmployeeRoleBO.Id;

                pSqlParameter[1] = new SqlParameter("@Name", SqlDbType.VarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objEmployeeRoleBO.Name;

                pSqlParameter[2] = new SqlParameter("@Description", SqlDbType.VarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objEmployeeRoleBO.Description;

                pSqlParameter[3] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objEmployeeRoleBO.HeadOfficeId;

                pSqlParameter[4] = new SqlParameter("@IsDeleted", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objEmployeeRoleBO.IsDeleted;

                pSqlParameter[5] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objEmployeeRoleBO.LastModifiedDate;

                pSqlParameter[6] = new SqlParameter("@LastModifiedUserID", SqlDbType.Int);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objEmployeeRoleBO.LastModifiedBy;


                sSql = "usp_tbl_EmployeeRole_M_Update";
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
                objEmployeeRoleBO = null;
            }
        }
        #endregion


        //--------------------------------------------------------

        #region Select EmployeeRole Details by EmployeeRoleName
        /// <summary>
        /// Select all details of EmployeeRole for selected EmployeeRoleName from tbl_EmployeeRole_M table
        /// Created By : Ankita, 6/13/2012
        /// Modified By :
        /// </summary>
        /// <param name="EmployeeRoleName"></param>
        /// <returns></returns>
        public ApplicationResult EmployeeRole_Select_byEmployeeRoleName(string strEmployeeRoleName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@EmployeeRoleName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strEmployeeRoleName;

                strStoredProcName = "usp_tbl_EmployeeRole_M_Select_ByEmployeeRole";

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


        #region ValidateName for EmployeeRole
        /// <summary>
        /// Function which validates whether the EmployeeRoleName already exits in tbl_EmployeeRole_M table.
        /// Created By : Ankita, 6/13/2012
        /// Modified By :
        /// </summary>
        /// <param name="strEmployeeRoleName"></param>
        /// <returns></returns>
        public ApplicationResult EmployeeRole_ValidateName(int intOrganisationID, string strEmployeeRoleName, int intEmployeeRoleID)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                pSqlParameter[1] = new SqlParameter("@EmployeeRoleName", SqlDbType.VarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = strEmployeeRoleName;

                pSqlParameter[2] = new SqlParameter("@EmployeeRoleID", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = intEmployeeRoleID;


                strStoredProcName = "usp_tbl_EmployeeRole_M_ValidateName";

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
