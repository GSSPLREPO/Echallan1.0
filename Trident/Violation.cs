using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trident
{
    public class Violation
    {
        [JsonProperty("LprUnitName")]
        public string LprUnitName { get; set; }
        [JsonProperty("ReadTimestamp")]
        public string ReadTimestamp { get; set; }
        [JsonProperty("ReadImage")]
        public string ReadImage { get; set; }
        [JsonProperty("ContextImage")]
        public string ContextImage { get; set; }
        [JsonProperty("Snapshots")]
        public List<string> ScreenShots { get; set; }
        public ViolationInformation ViolationInformation { get; set; }
    }
}