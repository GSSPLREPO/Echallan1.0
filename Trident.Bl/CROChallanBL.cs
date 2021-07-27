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
    public class CROChallanBL
    {
        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion

        #region Select All Vehicle Type
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_SelectAll()
        {
            try
            {
                sSql = "usp_VehicleTypes_SelectAll";
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

        #region Find Pending Challan Details
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_PendingChallan(string strPlateNo)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];


                pSqlParameter[0] = new SqlParameter("@PlateNo", SqlDbType.NVarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strPlateNo;

                sSql = "usp_Challan_PendingEChallan_Offenses";
                DataSet dtCRODashboard = new DataSet();
                dtCRODashboard = Database.ExecuteDataSet(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtCRODashboard);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region CRVO Dashboard
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_CRVODashboard(int intHeadOfficeId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];


                pSqlParameter[0] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intHeadOfficeId;

                sSql = "usp_Challan_CRVODashboard_SelectAll";
                DataTable dtCRODashboard = new DataTable();
                dtCRODashboard = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtCRODashboard);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region List of Challan For UPdation
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_ListForUpdation(int intHeadOfficeId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];


                pSqlParameter[0] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intHeadOfficeId;

                sSql = "usp_Challan_ListForUpdation";
                DataTable dtCRODashboard = new DataTable();
                dtCRODashboard = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtCRODashboard);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region List of Challan For UPdation
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_PrintDashboard(int intHeadOfficeId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];


                pSqlParameter[0] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intHeadOfficeId;

                sSql = "usp_Challan_PrintDBoard";
                DataTable dtCRODashboard = new DataTable();
                dtCRODashboard = Database.ExecuteDataTable(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtCRODashboard);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region List of Challan For UPdation
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_Print(int intId, int userId)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];


                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                pSqlParameter[1] = new SqlParameter("@UserId", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = userId;

                sSql = "usp_Challan_Print";
                DataSet dtCRODashboard = new DataSet();
                dtCRODashboard = Database.ExecuteDataSet(CommandType.StoredProcedure, sSql, pSqlParameter);

                ApplicationResult objResults = new ApplicationResult(dtCRODashboard);
                objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                return objResults;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        

        #region CRVO Dashboard Update Approve Status
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_CRVODashboard_UpdateApprove(int intChallanId, int intLastModifiedBy, DateTime dtLastModifiedDate, string strselectedImg)
        {
            try
            {
                pSqlParameter = new SqlParameter[4];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intChallanId;

                pSqlParameter[1] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intLastModifiedBy;

                pSqlParameter[2] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = dtLastModifiedDate;

                pSqlParameter[3] = new SqlParameter("@SelectedImg", SqlDbType.VarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = strselectedImg;

                sSql = "usp_Challan_UpdateApprove";
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
        }
        #endregion

        #region CRVO Dashboard Update Approve Status Multiple
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_CRVODashboard_UpdateApprove_Multiple(string strChallanId, int intLastModifiedBy, DateTime dtLastModifiedDate, string strselectedImg)
        {
            try
            {
                pSqlParameter = new SqlParameter[4];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strChallanId;

                pSqlParameter[1] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intLastModifiedBy;

                pSqlParameter[2] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = dtLastModifiedDate;

                pSqlParameter[3] = new SqlParameter("@SelectedImg", SqlDbType.VarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = strselectedImg;

                sSql = "usp_Challan_UpdateApprove_Multiple";
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
        }
        #endregion

        #region CRVO Dashboard Update Cancel Status
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_CRVODashboard_UpdateCancel(int intChallanId, string strComment, int intLastModifiedBy, DateTime dtLastModifiedDate)
        {
            try
            {
                pSqlParameter = new SqlParameter[4];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intChallanId;

                pSqlParameter[1] = new SqlParameter("@Comment", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = strComment;

                pSqlParameter[2] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = intLastModifiedBy;

                pSqlParameter[3] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = dtLastModifiedDate;

                sSql = "usp_Challan_UpdateCancel";
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
        }
        #endregion

        #region CRVO Dashboard Update Cancel Status
        /// <summary>
        /// To Select All data from the tbl_Employee_M table
        /// Created By : Ankita, 6/8/2012
        /// Modified By :
        /// </summary>
        /// <param name=""></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_CRVODashboard_Update(int intChallanId, string strComment, int intLastModifiedBy, DateTime dtLastModifiedDate, string strselectedImg)
        {
            try
            {
                pSqlParameter = new SqlParameter[5];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intChallanId;

                pSqlParameter[1] = new SqlParameter("@Comment", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = strComment;

                pSqlParameter[2] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = intLastModifiedBy;

                pSqlParameter[3] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = dtLastModifiedDate;

                pSqlParameter[4] = new SqlParameter("@SelectedImg", SqlDbType.VarChar);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = strselectedImg;

                sSql = "usp_Challan_UpdateStatusChange";
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
        }
        #endregion

        #region Select CROChallan Details by Id
        /// <summary>
        /// Select all details of CROChallan for selected Id from Challan table
        /// Created By : Chintan, 01-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_Select(int intId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                strStoredProcName = "usp_Challan_Select";

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

        #region Delete CROChallan Details by Id
        /// <summary>
        /// To Delete details of CROChallan for selected Id from Challan table
        /// Created By : Chintan, 01-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_Delete(int intId, int intLastModifiedBy)
        {
            try
            {
                pSqlParameter = new SqlParameter[2];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                pSqlParameter[1] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intLastModifiedBy;

                strStoredProcName = "usp_Challan_Delete";

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

        #region Delete CROChallan Offense Details by Id
        /// <summary>
        /// To Delete details of CROChallan for selected Id from Challan table
        /// Created By : Chintan, 01-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="intId"></param>
        /// <returns></returns>
        public ApplicationResult CROChallanOffense_Delete(int intId, int intLastModifiedBy, decimal dcAmount)
        {
            try
            {
                pSqlParameter = new SqlParameter[3];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                pSqlParameter[1] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = intLastModifiedBy;

                pSqlParameter[2] = new SqlParameter("@Amount", SqlDbType.Decimal);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = dcAmount;

                strStoredProcName = "usp_ChallanOffense_Delete";

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

        #region Insert CROChallan Details
        /// <summary>
        /// To Insert details of CROChallan in Challan table
        /// Created By : Chintan, 01-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="objCROChallanBO"></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_Insert(ChallanBO objCROChallanBO, DataTable dtChallanOffense)
        {
            try
            {
                pSqlParameter = new SqlParameter[37];


                pSqlParameter[0] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objCROChallanBO.HeadOfficeId;

                pSqlParameter[1] = new SqlParameter("@PoliceStation", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objCROChallanBO.PoliceStation;

                pSqlParameter[2] = new SqlParameter("@ChallanNo", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objCROChallanBO.ChallanNo;

                pSqlParameter[3] = new SqlParameter("@VehiclePlateNo", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objCROChallanBO.VehiclePlateNo;

                pSqlParameter[4] = new SqlParameter("@LPImage", SqlDbType.NVarChar);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objCROChallanBO.LPImage;

                pSqlParameter[5] = new SqlParameter("@JSONFilePath", SqlDbType.NVarChar);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objCROChallanBO.JSONFilePath;

                pSqlParameter[6] = new SqlParameter("@ViolationScreenShots", SqlDbType.NVarChar);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objCROChallanBO.ViolationScreenShots;

                pSqlParameter[7] = new SqlParameter("@ViolationDateTime", SqlDbType.DateTime);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objCROChallanBO.ViolationDateTime;

                pSqlParameter[8] = new SqlParameter("@Location", SqlDbType.NVarChar);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = objCROChallanBO.Location;

                pSqlParameter[9] = new SqlParameter("@OffenderName", SqlDbType.NVarChar);
                pSqlParameter[9].Direction = ParameterDirection.Input;
                pSqlParameter[9].Value = objCROChallanBO.OffenderName;

                pSqlParameter[10] = new SqlParameter("@OffenderAddress", SqlDbType.NVarChar);
                pSqlParameter[10].Direction = ParameterDirection.Input;
                pSqlParameter[10].Value = objCROChallanBO.OffenderAddress;

                pSqlParameter[11] = new SqlParameter("@City", SqlDbType.NVarChar);
                pSqlParameter[11].Direction = ParameterDirection.Input;
                pSqlParameter[11].Value = objCROChallanBO.City;

                pSqlParameter[12] = new SqlParameter("@State", SqlDbType.NVarChar);
                pSqlParameter[12].Direction = ParameterDirection.Input;
                pSqlParameter[12].Value = objCROChallanBO.State;

                pSqlParameter[13] = new SqlParameter("@PostalCode", SqlDbType.NVarChar);
                pSqlParameter[13].Direction = ParameterDirection.Input;
                pSqlParameter[13].Value = objCROChallanBO.PostalCode;

                pSqlParameter[14] = new SqlParameter("@VehicleTypeId", SqlDbType.Int);
                pSqlParameter[14].Direction = ParameterDirection.Input;
                pSqlParameter[14].Value = objCROChallanBO.VehicleTypeId;

                pSqlParameter[15] = new SqlParameter("@VehicleModel", SqlDbType.NVarChar);
                pSqlParameter[15].Direction = ParameterDirection.Input;
                pSqlParameter[15].Value = objCROChallanBO.VehicleModel;

                pSqlParameter[16] = new SqlParameter("@VehicleMake", SqlDbType.NVarChar);
                pSqlParameter[16].Direction = ParameterDirection.Input;
                pSqlParameter[16].Value = objCROChallanBO.VehicleMake;

                pSqlParameter[17] = new SqlParameter("@TotalAmount", SqlDbType.Decimal);
                pSqlParameter[17].Direction = ParameterDirection.Input;
                pSqlParameter[17].Value = objCROChallanBO.TotalAmount;

                pSqlParameter[18] = new SqlParameter("@DueDate", SqlDbType.Date);
                pSqlParameter[18].Direction = ParameterDirection.Input;
                pSqlParameter[18].Value = objCROChallanBO.DueDate;

                pSqlParameter[19] = new SqlParameter("@DrivingLicenceNo", SqlDbType.NVarChar);
                pSqlParameter[19].Direction = ParameterDirection.Input;
                pSqlParameter[19].Value = objCROChallanBO.DrivingLicenceNo;

                pSqlParameter[20] = new SqlParameter("@MobileNo", SqlDbType.NVarChar);
                pSqlParameter[20].Direction = ParameterDirection.Input;
                pSqlParameter[20].Value = objCROChallanBO.MobileNo;

                pSqlParameter[21] = new SqlParameter("@EmailId", SqlDbType.NVarChar);
                pSqlParameter[21].Direction = ParameterDirection.Input;
                pSqlParameter[21].Value = objCROChallanBO.EmailId;

                pSqlParameter[22] = new SqlParameter("@IsPaid", SqlDbType.Bit);
                pSqlParameter[22].Direction = ParameterDirection.Input;
                pSqlParameter[22].Value = objCROChallanBO.IsPaid;

                pSqlParameter[23] = new SqlParameter("@StatusId", SqlDbType.Int);
                pSqlParameter[23].Direction = ParameterDirection.Input;
                pSqlParameter[23].Value = objCROChallanBO.StatusId;

                pSqlParameter[24] = new SqlParameter("@NoOfVilations", SqlDbType.Int);
                pSqlParameter[24].Direction = ParameterDirection.Input;
                pSqlParameter[24].Value = objCROChallanBO.NoOfVilations;

                pSqlParameter[25] = new SqlParameter("@PendingChallanIds", SqlDbType.NVarChar);
                pSqlParameter[25].Direction = ParameterDirection.Input;
                pSqlParameter[25].Value = objCROChallanBO.PendingChallanIds;
            
                pSqlParameter[26] = new SqlParameter("@ReturnComment", SqlDbType.NVarChar);
                pSqlParameter[26].Direction = ParameterDirection.Input;
                pSqlParameter[26].Value = objCROChallanBO.ReturnComment;
            
                pSqlParameter[27] = new SqlParameter("@IsReset", SqlDbType.Int);
                pSqlParameter[27].Direction = ParameterDirection.Input;
                pSqlParameter[27].Value = objCROChallanBO.IsReset;

                pSqlParameter[28] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                pSqlParameter[28].Direction = ParameterDirection.Input;
                pSqlParameter[28].Value = objCROChallanBO.IsDeleted;

                pSqlParameter[29] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                pSqlParameter[29].Direction = ParameterDirection.Input;
                pSqlParameter[29].Value = objCROChallanBO.CreatedBy;

                pSqlParameter[30] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[30].Direction = ParameterDirection.Input;
                pSqlParameter[30].Value = objCROChallanBO.CreatedDate;

                pSqlParameter[31] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[31].Direction = ParameterDirection.Input;
                pSqlParameter[31].Value = objCROChallanBO.LastModifiedBy;

                pSqlParameter[32] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[32].Direction = ParameterDirection.Input;
                pSqlParameter[32].Value = objCROChallanBO.LastModifiedDate;

                pSqlParameter[33] = new SqlParameter("@ChallanOffense", dtChallanOffense);
                pSqlParameter[33].Direction = ParameterDirection.Input;

                pSqlParameter[34] = new SqlParameter("@SelectedSnapPath", SqlDbType.VarChar);
                pSqlParameter[34].Direction = ParameterDirection.Input;
                pSqlParameter[34].Value = objCROChallanBO.SelectedSnapPath;

                pSqlParameter[35] = new SqlParameter("@ContextImagePath", SqlDbType.VarChar);
                pSqlParameter[35].Direction = ParameterDirection.Input;
                pSqlParameter[35].Value = objCROChallanBO.ContextImagePath;

                pSqlParameter[36] = new SqlParameter("@IsManual", SqlDbType.Int);
                pSqlParameter[36].Direction = ParameterDirection.Input;
                pSqlParameter[36].Value = objCROChallanBO.IsManual;

                sSql = "usp_Challan_Insert";
                //int iResult = Database.ExecuteNonQuery(CommandType.StoredProcedure, sSql, pSqlParameter);

                //if (iResult > 0)
                //{
                //    ApplicationResult objResults = new ApplicationResult();
                //    objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                //    return objResults;
                //}
                //else
                //{
                //    ApplicationResult objResults = new ApplicationResult();
                //    objResults.status = ApplicationResult.CommonStatusType.FAILURE;
                //    return objResults;
                //}
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
                objCROChallanBO = null;
            }
        }
        #endregion

        #region Update CROChallan Details
        /// <summary>
        /// To Update details of CROChallan in Challan table
        /// Created By : Chintan, 01-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="objCROChallanBO"></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_Update(ChallanBO objCROChallanBO, DataTable dtChallanOffense)
        {
            try
            {
                pSqlParameter = new SqlParameter[15];


                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objCROChallanBO.Id;

                //pSqlParameter[1] = new SqlParameter("@HeadOfficeId", SqlDbType.Int);
                //pSqlParameter[1].Direction = ParameterDirection.Input;
                //pSqlParameter[1].Value = objCROChallanBO.HeadOfficeId;

                pSqlParameter[1] = new SqlParameter("@PoliceStation", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objCROChallanBO.PoliceStation;

                //pSqlParameter[3] = new SqlParameter("@ChallanNo", SqlDbType.NVarChar);
                //pSqlParameter[3].Direction = ParameterDirection.Input;
                //pSqlParameter[3].Value = objCROChallanBO.ChallanNo;

                //pSqlParameter[4] = new SqlParameter("@VehiclePlateNo", SqlDbType.NVarChar);
                //pSqlParameter[4].Direction = ParameterDirection.Input;
                //pSqlParameter[4].Value = objCROChallanBO.VehiclePlateNo;

                //pSqlParameter[5] = new SqlParameter("@LPImage", SqlDbType.NVarChar);
                //pSqlParameter[5].Direction = ParameterDirection.Input;
                //pSqlParameter[5].Value = objCROChallanBO.LPImage;

                //pSqlParameter[6] = new SqlParameter("@JSONFilePath", SqlDbType.NVarChar);
                //pSqlParameter[6].Direction = ParameterDirection.Input;
                //pSqlParameter[6].Value = objCROChallanBO.JSONFilePath;

                //pSqlParameter[7] = new SqlParameter("@ViolationScreenShots", SqlDbType.NVarChar);
                //pSqlParameter[7].Direction = ParameterDirection.Input;
                //pSqlParameter[7].Value = objCROChallanBO.ViolationScreenShots;

                //pSqlParameter[8] = new SqlParameter("@ViolationDateTime", SqlDbType.DateTime);
                //pSqlParameter[8].Direction = ParameterDirection.Input;
                //pSqlParameter[8].Value = objCROChallanBO.ViolationDateTime;

                pSqlParameter[2] = new SqlParameter("@Location", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objCROChallanBO.Location;

                pSqlParameter[3] = new SqlParameter("@OffenderName", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objCROChallanBO.OffenderName;

                pSqlParameter[4] = new SqlParameter("@OffenderAddress", SqlDbType.NVarChar);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objCROChallanBO.OffenderAddress;

                pSqlParameter[5] = new SqlParameter("@City", SqlDbType.NVarChar);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objCROChallanBO.City;

                pSqlParameter[6] = new SqlParameter("@State", SqlDbType.NVarChar);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objCROChallanBO.State;

                pSqlParameter[7] = new SqlParameter("@PostalCode", SqlDbType.NVarChar);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objCROChallanBO.PostalCode;

                pSqlParameter[8] = new SqlParameter("@VehicleTypeId", SqlDbType.Int);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = objCROChallanBO.VehicleTypeId;
            
                pSqlParameter[9] = new SqlParameter("@VehicleModel", SqlDbType.NVarChar);
                pSqlParameter[9].Direction = ParameterDirection.Input;
                pSqlParameter[9].Value = objCROChallanBO.VehicleModel;

                pSqlParameter[10] = new SqlParameter("@VehicleMake", SqlDbType.NVarChar);
                pSqlParameter[10].Direction = ParameterDirection.Input;
                pSqlParameter[10].Value = objCROChallanBO.VehicleMake;

                pSqlParameter[11] = new SqlParameter("@TotalAmount", SqlDbType.Decimal);
                pSqlParameter[11].Direction = ParameterDirection.Input;
                pSqlParameter[11].Value = objCROChallanBO.TotalAmount;

                //pSqlParameter[16] = new SqlParameter("@DueDate", SqlDbType.Date);
                //pSqlParameter[16].Direction = ParameterDirection.Input;
                //pSqlParameter[16].Value = objCROChallanBO.DueDate;

                //pSqlParameter[17] = new SqlParameter("@DrivingLicenceNo", SqlDbType.NVarChar);
                //pSqlParameter[17].Direction = ParameterDirection.Input;
                //pSqlParameter[17].Value = objCROChallanBO.DrivingLicenceNo;

                //pSqlParameter[18] = new SqlParameter("@MobileNo", SqlDbType.NVarChar);
                //pSqlParameter[18].Direction = ParameterDirection.Input;
                //pSqlParameter[18].Value = objCROChallanBO.MobileNo;

                //pSqlParameter[19] = new SqlParameter("@EmailId", SqlDbType.NVarChar);
                //pSqlParameter[19].Direction = ParameterDirection.Input;
                //pSqlParameter[19].Value = objCROChallanBO.EmailId;

                //pSqlParameter[20] = new SqlParameter("@IsPaid", SqlDbType.Bit);
                //pSqlParameter[20].Direction = ParameterDirection.Input;
                //pSqlParameter[20].Value = objCROChallanBO.IsPaid;

                pSqlParameter[12] = new SqlParameter("@StatusId", SqlDbType.Int);
                pSqlParameter[12].Direction = ParameterDirection.Input;
                pSqlParameter[12].Value = objCROChallanBO.StatusId;

                //pSqlParameter[22] = new SqlParameter("@NoOfVilations", SqlDbType.Int);
                //pSqlParameter[22].Direction = ParameterDirection.Input;
                //pSqlParameter[22].Value = objCROChallanBO.NoOfVilations;

                //pSqlParameter[23] = new SqlParameter("@PendingChallanIds", SqlDbType.NVarChar);
                //pSqlParameter[23].Direction = ParameterDirection.Input;
                //pSqlParameter[23].Value = objCROChallanBO.PendingChallanIds;

                //pSqlParameter[24] = new SqlParameter("@ReturnComment", SqlDbType.NVarChar);
                //pSqlParameter[24].Direction = ParameterDirection.Input;
                //pSqlParameter[24].Value = objCROChallanBO.ReturnComment;

                //pSqlParameter[25] = new SqlParameter("@IsReset", SqlDbType.Int);
                //pSqlParameter[25].Direction = ParameterDirection.Input;
                //pSqlParameter[25].Value = objCROChallanBO.IsReset;

                //pSqlParameter[10] = new SqlParameter("@IsDeleted", SqlDbType.Bit);
                //pSqlParameter[26].Direction = ParameterDirection.Input;
                //pSqlParameter[26].Value = objCROChallanBO.IsDeleted;

                //pSqlParameter[27] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                //pSqlParameter[27].Direction = ParameterDirection.Input;
                //pSqlParameter[27].Value = objCROChallanBO.CreatedBy;

                //pSqlParameter[28] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                //pSqlParameter[28].Direction = ParameterDirection.Input;
                //pSqlParameter[28].Value = objCROChallanBO.CreatedDate;

                pSqlParameter[13] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[13].Direction = ParameterDirection.Input;
                pSqlParameter[13].Value = objCROChallanBO.LastModifiedBy;

                //pSqlParameter[11] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                //pSqlParameter[11].Direction = ParameterDirection.Input;
                //pSqlParameter[11].Value = objCROChallanBO.LastModifiedDate;

                pSqlParameter[14] = new SqlParameter("@ChallanOffense", dtChallanOffense);
                pSqlParameter[14].Direction = ParameterDirection.Input;

                sSql = "usp_Challan_Update";
                int iResult = Database.ExecuteNonQuery(CommandType.StoredProcedure, sSql, pSqlParameter);

                //if (iResult > 0)
                //{
                //    ApplicationResult objResults = new ApplicationResult();
                //    objResults.status = ApplicationResult.CommonStatusType.SUCCESS;
                //    return objResults;
                //}
                //else
                //{
                //    ApplicationResult objResults = new ApplicationResult();
                //    objResults.status = ApplicationResult.CommonStatusType.FAILURE;
                //    return objResults;
                //}
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
                objCROChallanBO = null;
            }
        }
        #endregion




        #region Select CROChallan Details by CROChallanName
        /// <summary>
        /// Select all details of CROChallan for selected CROChallanName from Challan table
        /// Created By : Chintan, 01-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="CROChallanName"></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_Select_byCROChallanName(string strCROChallanName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@CROChallanName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strCROChallanName;

                strStoredProcName = "usp_Challan_Select_ByCROChallan";

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


        #region ValidateName for CROChallan 
        /// <summary>
        /// Function which validates whether the CROChallanName already exits in Challan table.
        /// Created By : Chintan, 01-06-2019
        /// Modified By :
        /// </summary>
        /// <param name="strCROChallanName"></param>
        /// <returns></returns>
        public ApplicationResult CROChallan_ValidateName(string strCROChallanName)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@CROChallanName", SqlDbType.VarChar);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = strCROChallanName;

                strStoredProcName = "usp_Challan_Validate_CROChallanName";

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
