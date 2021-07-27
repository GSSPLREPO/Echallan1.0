using log4net;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trident.Common;

namespace Trident.MainMaster
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        #region Declaration
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session[ApplicationSession.EMPLOYEEID] == null)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    Response.Redirect("../Default.aspx?SessionMode=Logout", false);
                }
                Hashtable htRights = (Hashtable)Session["rights"];
                ScriptManager.RegisterStartupScript(this, this.GetType(), "hide", "ShowHide('" + JsonConvert.SerializeObject(htRights) + "');", true);
                if (IsPostBack) return;
                //hdnUImage.Value = Session["ImagePath"].ToString();
            }
            catch (Exception ex)
            {
                log.Error("Page_Load", ex);

            }
        }
    }
}