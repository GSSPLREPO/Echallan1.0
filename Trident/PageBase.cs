using Trident.Bl;
using Trident.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Trident.BL;
using log4net;

namespace Trident
{
    public class PageBase : System.Web.UI.Page
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        public static int intRoleID = 0;
        protected override void OnInit(EventArgs e)
        {
            if (Session[ApplicationSession.EMPLOYEEID] == null)
            {
                Response.Redirect("~/Default.aspx?SessionMode=Logout", false);
            }
            else
            {
                intRoleID = Convert.ToInt32(Session[ApplicationSession.EMPLOYEEROLEID]);
            }
        }

        public PageBase(int intScreenID)
        {
            try
            {
                if (intScreenID != 0)
                {
                    ApplicationResult objScreenResult = new ApplicationResult();
                    RoleRights_T_BL objScreenBl = new RoleRights_T_BL();
                    objScreenResult = objScreenBl.RoleRights_Select(intRoleID, intScreenID);
                    if (intRoleID != 0)
                    {
                        if (objScreenResult != null)
                        {
                            DataTable dt = objScreenResult.resultDT;
                            if (dt.Rows.Count == 0)
                                HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                        }
                        //else
                            //HttpContext.Current.Response.Redirect("../UnauthorisedUI/UnauthorisedAccess.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                log.Error("Error", ex);
                HttpContext.Current.Response.Redirect("../Default.aspx?SessionMode=Logout");
            }
        }

    }
}