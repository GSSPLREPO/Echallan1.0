using Trident.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trident.UnauthorisedUI
{
    public partial class UnauthorisedAccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[ApplicationSession.EMPLOYEEID] != null)
            {
            }
            else
            {
                Response.Redirect("../Default.aspx?SessionMode=Logout", false);
            }
        }
    }
}