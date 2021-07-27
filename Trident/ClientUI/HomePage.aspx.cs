using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using Trident.Bl;

namespace Trident.ClientUI
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Staging.TMSeChallanImplClient stageClient = new Staging.TMSeChallanImplClient();

            //WSDLServiceBL wSDLServiceBL = new WSDLServiceBL();
            //var allPoliceStation = wSDLServiceBL.PoliceStation_SelectAll();

            //for (int i = 0; i <= allPoliceStation.resultDT.Rows.Count; i++)
            //{
            //    var allPs = allPoliceStation.resultDT.Rows[i];
            //    var pointsByPS = stageClient.getpoints(allPs.ItemArray[0].ToString());

            //    //dynamic kkkk = JValue.Parse(pointsByPS);

            //    //var something = new JavaScriptSerializer().DeserializeObject<ExpandoObject>(pointsByPS, new ExpandoObjectConverter());
            //    dynamic config = JsonConvert.DeserializeObject<ExpandoObject>(pointsByPS, new ExpandoObjectConverter()).ToList()[0];
            //    var dictionaryObj = config.Value;
            //    //var key = dictionaryObj[0];
            //    //KeyValuePair<string, string> first = key;
            //    foreach (var enabledEndpoint in ((List<dynamic>)dictionaryObj))
            //    {
            //        IDictionary<string, object> dictionary_object = enabledEndpoint;
            //        var key = dictionary_object.Keys.ToList()[0];
            //        var val = dictionary_object.Values.ToList()[0];
            //        try
            //        {
            //            wSDLServiceBL.points_Insert(Convert.ToInt32(key), Convert.ToInt32(allPs.ItemArray[0]), val.ToString());

            //        }
            //        catch (Exception ex)
            //        {
            //            var abc = "";
            //        }
            //    }
            //}
        }
    }
}