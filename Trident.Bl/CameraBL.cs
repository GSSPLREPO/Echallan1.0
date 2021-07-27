using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trident.Bo;
using Trident.Common;
using Trident.DataAccess;

namespace Trident.BL
{
    public class CameraBL
    {
        #region user defined variables
        public string sSql;
        public string strStoredProcName;
        public SqlParameter[] pSqlParameter = null;
        #endregion

        #region Select All  Details
        public ApplicationResult Camera_SelectAll()
        {

            try
            {
                sSql = "usp_Camera_SelectAll";
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

        #region Select All  Details
        public ApplicationResult Units_SelectAll()
        {

            try
            {
                sSql = "usp_Units_SelectAll";
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

        public ApplicationResult PoliceStation_SelectByUnitId(int unitId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@UnitId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = unitId;

                strStoredProcName = "usp_PoliceStationByUnitId_SelectAll";

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

        public ApplicationResult Points_SelectByPoliceStationId(int psId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@PoliceStationId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = psId;

                strStoredProcName = "usp_PointsByPoliceStation_SelectAll";

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

        public ApplicationResult Camera_SelectById(int id)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = id;

                strStoredProcName = "usp_Camera_SelectById";

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

        #region Insert Camera 
        /// <summary>
        /// To Insert details of User in User table
        /// Created By : Chintan, 10-10-2019
        /// Modified By :
        /// </summary>
        /// <param name="objUserBO"></param>
        /// <returns></returns>
        public ApplicationResult Camera_Insert(CameraBO objCameraBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[8];


                pSqlParameter[0] = new SqlParameter("@PointId", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objCameraBO.PointId;

                pSqlParameter[1] = new SqlParameter("@Name", SqlDbType.NVarChar);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objCameraBO.Name;

                pSqlParameter[2] = new SqlParameter("@Make", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objCameraBO.Make;

                pSqlParameter[3] = new SqlParameter("@IpAddress", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objCameraBO.IpAddress;

                pSqlParameter[4] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objCameraBO.CreatedBy;

                pSqlParameter[5] = new SqlParameter("@CreatedDate", SqlDbType.DateTime);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objCameraBO.CreatedDate;

                pSqlParameter[6] = new SqlParameter("@Latitude", SqlDbType.Float);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objCameraBO.Latitude;

                pSqlParameter[7] = new SqlParameter("@Longitude", SqlDbType.Float);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objCameraBO.Longitude;



                sSql = "usp_Camera_Insert";
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
                objCameraBO = null;
            }
        }
        #endregion


        public ApplicationResult Camera_Update(CameraBO objCameraBO)
        {
            try
            {
                pSqlParameter = new SqlParameter[9];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = objCameraBO.Id;

                pSqlParameter[1] = new SqlParameter("@PointId", SqlDbType.Int);
                pSqlParameter[1].Direction = ParameterDirection.Input;
                pSqlParameter[1].Value = objCameraBO.PointId;

                pSqlParameter[2] = new SqlParameter("@Name", SqlDbType.NVarChar);
                pSqlParameter[2].Direction = ParameterDirection.Input;
                pSqlParameter[2].Value = objCameraBO.Name;

                pSqlParameter[3] = new SqlParameter("@Make", SqlDbType.NVarChar);
                pSqlParameter[3].Direction = ParameterDirection.Input;
                pSqlParameter[3].Value = objCameraBO.Make;

                pSqlParameter[4] = new SqlParameter("@IpAddress", SqlDbType.NVarChar);
                pSqlParameter[4].Direction = ParameterDirection.Input;
                pSqlParameter[4].Value = objCameraBO.IpAddress;



                pSqlParameter[5] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
                pSqlParameter[5].Direction = ParameterDirection.Input;
                pSqlParameter[5].Value = objCameraBO.LastModifiedBy;

                pSqlParameter[6] = new SqlParameter("@LastModifiedDate", SqlDbType.DateTime);
                pSqlParameter[6].Direction = ParameterDirection.Input;
                pSqlParameter[6].Value = objCameraBO.LastModifiedDate;

                pSqlParameter[7] = new SqlParameter("@Latitude", SqlDbType.Float);
                pSqlParameter[7].Direction = ParameterDirection.Input;
                pSqlParameter[7].Value = objCameraBO.Latitude;

                pSqlParameter[8] = new SqlParameter("@Longitude", SqlDbType.Float);
                pSqlParameter[8].Direction = ParameterDirection.Input;
                pSqlParameter[8].Value = objCameraBO.Longitude;



                sSql = "usp_Camera_Update";
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
                objCameraBO = null;
            }
        }

        public ApplicationResult Camera_Delete(int intId)
        {
            try
            {
                pSqlParameter = new SqlParameter[1];

                pSqlParameter[0] = new SqlParameter("@Id", SqlDbType.Int);
                pSqlParameter[0].Direction = ParameterDirection.Input;
                pSqlParameter[0].Value = intId;

                strStoredProcName = "usp_Camera_Delete";

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


    }
}
