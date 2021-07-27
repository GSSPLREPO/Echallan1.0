using System;
using System.Collections.Generic;
using System.Collections;
using System.Data;
using System.Text;
using Trident.DataAccess;
using Trident.Bo;
using Trident.Common;
using System.Data.SqlClient;

namespace Trident.BL
{
    /// <summary>
    /// Class Created By : Ankita, 6/8/2012
    /// Summary description for Organisation.
    /// </summary>
    public class EmployeeBL
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
        public ApplicationResult Employee_SelectAll(int intOrganisationID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];


                pSqlParameter[0] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                sSql = "usp_tbl_Employee_M_SelectAll";
                DataTable dtEmployee = new DataTable();
                dtEmployee = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtEmployee);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select Employee Details by EmployeeID
        /// <summary>
        /// Select all details of Employee for selected EmployeeID from tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name="intEmployeeID"></param>
        /// <returns></returns>
        public ApplicationResult Employee_Select(int intEmployeeID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@EmployeeID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intEmployeeID;

                strStoredProcName = "usp_tbl_Employee_M_Select";

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

        #region Delete Employee Details by EmployeeID
        /// <summary>
        /// To Delete details of Employee for selected EmployeeID from tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name="intEmployeeID"></param>
        /// <returns></returns>
        public ApplicationResult Employee_Delete(int intEmployeeID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@EmployeeID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intEmployeeID;

                strStoredProcName = "usp_tbl_Employee_M_Delete";

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

        #region Insert Employee Details
        /// <summary>
        /// To Insert details of Employee in tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name="objEmployeeBO"></param>
        /// <returns></returns>
        public ApplicationResult Employee_Insert(EmployeeBO objEmployeeBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[17];


                pSqlParameter[0] = new SqlParameter("@EmployeeName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objEmployeeBO.EmployeeName;

                pSqlParameter[1] = new SqlParameter("@EmployeeCode", SqlDbType.VarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objEmployeeBO.EmployeeCode;

                pSqlParameter[2] = new SqlParameter("@BranchID", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objEmployeeBO.BranchID;

                pSqlParameter[3] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objEmployeeBO.OrganisationID;

                pSqlParameter[4] = new SqlParameter("@EmployeeRoleID", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objEmployeeBO.EmployeeRoleID;

                pSqlParameter[5] = new SqlParameter("@DesignationID", SqlDbType.Int);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objEmployeeBO.DesignationID;

                pSqlParameter[6] = new SqlParameter("@Address", SqlDbType.VarChar);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objEmployeeBO.Address;

                pSqlParameter[7] = new SqlParameter("@ContactNo", SqlDbType.VarChar);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objEmployeeBO.ContactNo;

                pSqlParameter[8] = new SqlParameter("@MobileNo", SqlDbType.VarChar);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = objEmployeeBO.MobileNo;

                pSqlParameter[9] = new SqlParameter("@Email", SqlDbType.VarChar);
                pSqlParameter[9].Direction = ParameterDirection.Input;
                pSqlParameter[9].Value = objEmployeeBO.Email;

                pSqlParameter[10] = new SqlParameter("@UserName", SqlDbType.VarChar);
                pSqlParameter[10].Direction = ParameterDirection.Input;
                pSqlParameter[10].Value = objEmployeeBO.UserName;

                pSqlParameter[11] = new SqlParameter("@Password", SqlDbType.VarChar);
                pSqlParameter[11].Direction = ParameterDirection.Input;
                pSqlParameter[11].Value = objEmployeeBO.Password;

                pSqlParameter[12] = new SqlParameter("@JoinDate", SqlDbType.VarChar);
                pSqlParameter[12].Direction = ParameterDirection.Input;
                pSqlParameter[12].Value = objEmployeeBO.JoinDate;

                pSqlParameter[13] = new SqlParameter("@BirthDate", SqlDbType.VarChar);
                pSqlParameter[13].Direction = ParameterDirection.Input;
                pSqlParameter[13].Value = objEmployeeBO.BirthDate;

                pSqlParameter[14] = new SqlParameter("@MarriageDate", SqlDbType.VarChar);
                pSqlParameter[14].Direction = ParameterDirection.Input;
                pSqlParameter[14].Value = objEmployeeBO.MarriageDate;

                pSqlParameter[15] = new SqlParameter("@IsDeleted", SqlDbType.Int);
                pSqlParameter[15].Direction = ParameterDirection.Input;
                pSqlParameter[15].Value = objEmployeeBO.IsDeleted;

                pSqlParameter[16] = new SqlParameter("@ResignedDate", SqlDbType.VarChar);
                pSqlParameter[16].Direction = ParameterDirection.Input;
                pSqlParameter[16].Value = objEmployeeBO.ResignedDate;

                sSql = "usp_tbl_Employee_M_Insert";
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
                objEmployeeBO = null;
            }
        }
        #endregion

        #region Update Employee Details
        /// <summary>
        /// To Update details of Employee in tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name="objEmployeeBO"></param>
        /// <returns></returns>
        public ApplicationResult Employee_Update(EmployeeBO objEmployeeBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[18];


                pSqlParameter[0] = new SqlParameter("@EmployeeID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objEmployeeBO.EmployeeID;

                pSqlParameter[1] = new SqlParameter("@EmployeeName", SqlDbType.VarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objEmployeeBO.EmployeeName;

                pSqlParameter[2] = new SqlParameter("@EmployeeCode", SqlDbType.VarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objEmployeeBO.EmployeeCode;

                pSqlParameter[3] = new SqlParameter("@BranchID", SqlDbType.Int);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objEmployeeBO.BranchID;

                pSqlParameter[4] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objEmployeeBO.OrganisationID;

                pSqlParameter[5] = new SqlParameter("@EmployeeRoleID", SqlDbType.Int);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objEmployeeBO.EmployeeRoleID;

                pSqlParameter[6] = new SqlParameter("@DesignationID", SqlDbType.Int);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objEmployeeBO.DesignationID;

                pSqlParameter[7] = new SqlParameter("@Address", SqlDbType.VarChar);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objEmployeeBO.Address;

                pSqlParameter[8] = new SqlParameter("@ContactNo", SqlDbType.VarChar);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = objEmployeeBO.ContactNo;

                pSqlParameter[9] = new SqlParameter("@MobileNo", SqlDbType.VarChar);
                pSqlParameter[9].Direction = ParameterDirection.Input;
                pSqlParameter[9].Value = objEmployeeBO.MobileNo;

                pSqlParameter[10] = new SqlParameter("@Email", SqlDbType.VarChar);
                pSqlParameter[10].Direction = ParameterDirection.Input;
                pSqlParameter[10].Value = objEmployeeBO.Email;

                pSqlParameter[11] = new SqlParameter("@UserName", SqlDbType.VarChar);
                pSqlParameter[11].Direction = ParameterDirection.Input;
                pSqlParameter[11].Value = objEmployeeBO.UserName;

                pSqlParameter[12] = new SqlParameter("@Password", SqlDbType.VarChar);
                pSqlParameter[12].Direction = ParameterDirection.Input;
                pSqlParameter[12].Value = objEmployeeBO.Password;

                pSqlParameter[13] = new SqlParameter("@JoinDate", SqlDbType.VarChar);
                pSqlParameter[13].Direction = ParameterDirection.Input;
                pSqlParameter[13].Value = objEmployeeBO.JoinDate;

                pSqlParameter[14] = new SqlParameter("@BirthDate", SqlDbType.VarChar);
                pSqlParameter[14].Direction = ParameterDirection.Input;
                pSqlParameter[14].Value = objEmployeeBO.BirthDate;

                pSqlParameter[15] = new SqlParameter("@MarriageDate", SqlDbType.VarChar);
                pSqlParameter[15].Direction = ParameterDirection.Input;
                pSqlParameter[15].Value = objEmployeeBO.MarriageDate;

                pSqlParameter[16] = new SqlParameter("@IsDeleted", SqlDbType.Int);
                pSqlParameter[16].Direction = ParameterDirection.Input;
                pSqlParameter[16].Value = objEmployeeBO.IsDeleted;

                pSqlParameter[17] = new SqlParameter("@ResignedDate", SqlDbType.VarChar);
                pSqlParameter[17].Direction = ParameterDirection.Input;
                pSqlParameter[17].Value = objEmployeeBO.ResignedDate;


                sSql = "usp_tbl_Employee_M_Update";
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
                objEmployeeBO = null;
            }
        }
        #endregion

        #region Login Check
        public ApplicationResult Employee_M_CheckForLogin(string strUserName, string strPassword)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];

                pSqlParameter[0] = new SqlParameter("@UserName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strUserName;

                pSqlParameter[1] = new SqlParameter("@Password", SqlDbType.VarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = strPassword;

                strStoredProcName = "usp_tbl_Employee_M_CheckForLogin";

                DataSet dtResult = new DataSet();
                dtResult = Database.ExecuteDataSet(CommandType.StoredProcedure, strStoredProcName, pSqlParameter);
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


        #region Validate UserName
        public ApplicationResult Employee_M_Validate_UserName(int intOrganisationID, int intEmployeeID, string strUserName)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                pSqlParameter[1] = new SqlParameter("@EmployeeID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intEmployeeID;

                pSqlParameter[2] = new SqlParameter("@UserName", SqlDbType.VarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = strUserName;

                strStoredProcName = "usp_tbl_Employee_M_Validate_UserName";

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

        #region Validate Employee Code
        public ApplicationResult Employee_M_Validate_EmployeeCode(int intOrganisationID, int intEmployeeID, string strEmployeeCode)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                pSqlParameter[1] = new SqlParameter("@EmployeeID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intEmployeeID;

                pSqlParameter[2] = new SqlParameter("@EmployeeCode", SqlDbType.VarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = strEmployeeCode;

                strStoredProcName = "usp_tbl_Employee_M_Validate_EmployeeCode";

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


        //--------------------------------------------------------

        #region Unused Functions

        #region Select Employee Details by EmployeeName
        /// <summary>
        /// Select all details of Employee for selected EmployeeName from tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name="EmployeeName"></param>
        /// <returns></returns>
        public ApplicationResult Employee_Select_byEmployeeName(string strEmployeeName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@EmployeeName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strEmployeeName;

                strStoredProcName = "usp_tbl_Employee_M_Select_ByEmployee";

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


        #region ValidateName for Employee
        /// <summary>
        /// Function which validates whether the EmployeeName already exits in tbl_Employee_M table.
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name="strEmployeeName"></param>
        /// <returns></returns>
        public ApplicationResult Employee_ValidateName(string strEmployeeName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@EmployeeName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strEmployeeName;

                strStoredProcName = "usp_tbl_Employee_M_Validate_EmployeeName";

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

        #endregion

        #region Employee Reports
        public ApplicationResult Employee_M_Reports()
        {
            try
            {

                strStoredProcName = "usp_tbl_Employee_M_DetailReport";

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

        #region Change Password
        public ApplicationResult Employee_M_ChangePassword(int intOrganisationID, int intEmployeeID, string strPassword)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                pSqlParameter[1] = new SqlParameter("@EmployeeID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intEmployeeID;

                pSqlParameter[2] = new SqlParameter("@Password", SqlDbType.VarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = strPassword;

                strStoredProcName = "usp_tbl_Employee_M_UpdatePassword";

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


        #region Select All Employee Details For MeterReaders
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult Employee_SelectAllMeterReader(int intOrganisationID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];


                pSqlParameter[0] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                sSql = "usp_tbl_Employee_M_SelectAllMeterReader";
                DataTable dtEmployee = new DataTable();
                dtEmployee = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtEmployee);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select All Meter Reader
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name="intOrganisationID"></param>
        /// <returns></returns>
        public ApplicationResult Employee_GetMeterReader(int intOrganisationID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                sSql = "usp_tbl_Employee_GetMeterReader";

                DataTable dtEmployee = new DataTable();
                dtEmployee = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtEmployee);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Select All Meter Reader
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name="intOrganisationID"></param>
        /// <returns></returns>
        public ApplicationResult Employee_GetMeterReader_ForGBD(int intOrganisationID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                sSql = "usp_tbl_Employee_GetMeterReader_ForGBD";

                DataTable dtEmployee = new DataTable();
                dtEmployee = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtEmployee);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region EmployeeBenifitReport
        public ApplicationResult Employee_M_GetEmployeeBenifit(string strFromDate, string strToDate)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];

                pSqlParameter[0] = new SqlParameter("@FromDate", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strFromDate;

                pSqlParameter[1] = new SqlParameter("@ToDate", SqlDbType.VarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = strToDate;

                strStoredProcName = "usp_tbl_EmployeeBenifit_Report";

                DataTable dtEmployeeBenifit = new DataTable();
                dtEmployeeBenifit = Database.ExecuteDataTable(CommandType.StoredProcedure, strStoredProcName, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtEmployeeBenifit);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Insert Employee Benefit Details
       
        /// <summary>
        /// 
        /// </summary>
        /// <param name="objEmployeeBO"></param>
        /// <returns></returns>
        public ApplicationResult EmployeeBenefit_Insert(EmployeeBO objEmployeeBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[5];


                pSqlParameter[0] = new SqlParameter("@EmployeeID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objEmployeeBO.EmployeeBenefit_EmployeeID;

                pSqlParameter[1] = new SqlParameter("@CustomerCateoryID", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objEmployeeBO.EmployeeBenefit_CustomerCateoryID;

                pSqlParameter[2] = new SqlParameter("@CurrentDate", SqlDbType.VarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objEmployeeBO.EmployeeBenefit_CurrentDate;

                pSqlParameter[3] = new SqlParameter("@UpdatedBy", SqlDbType.Int);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objEmployeeBO.EmployeeBenefit_UpdatedBy;

                pSqlParameter[4] = new SqlParameter("@CustomerID", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objEmployeeBO.EmployeeBenefit_CustomerID;

                sSql = "usp_tbl_EmployeeBenefit_M_Insert";

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
                objEmployeeBO = null;
            }
        }
        #endregion


        #region Select All Employee Details For MeterReaders
       
        public ApplicationResult Employee_BillGeneration(string dttime)
        {
            try
            {
                pSqlParameter = new SqlParameter[1]; ;


                pSqlParameter[0] = new SqlParameter("@SelectDate", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = dttime;

                sSql = "usp_GasBillGeneration";
                DataTable dtEmployee = new DataTable();
                dtEmployee = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtEmployee);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion


        #region Select All Employee Benefit Records.
        /// <summary>
        /// 
        /// </summary>
        /// <param name="intOrganisationID"></param>
        /// <returns></returns>
        public ApplicationResult EmployeeBenefit_SelectAll(int intOrganisationID)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@OrganisationID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intOrganisationID;

                sSql = "usp_tbl_EmployeeBenefit_M_SelectALL";

                DataTable dtEmployee = new DataTable();
                dtEmployee = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtEmployee);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion


        #region Delete Employee Benefit Details by EmpBenefitID

        public ApplicationResult EmployeeBenefit_Delete(int EmpBenefitID, int updatedBy, string updatedDate)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@EmpBenefitID", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = EmpBenefitID;

                pSqlParameter[1] = new SqlParameter("@UpdatedBy", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = updatedBy;

                pSqlParameter[2] = new SqlParameter("@UpdatedDate", SqlDbType.VarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = updatedDate;

                strStoredProcName = "usp_tbl_EmployeeBenefit_M_Delete";

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

    }
}


