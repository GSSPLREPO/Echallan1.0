using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trident.Bo
{
    public class ChallanDataBO
    {
        public string VehiclePlateNo
        {
            get; set;
        }
        public string LPImage
        {
            get; set;
        }

        public DateTime ViolationDateTime
        {
            get; set;
        }
        public string JsonFilePath
        {
            get; set;
        }
        public string CameraName
        {
            get; set;
        }

        public string ContextImage
        {
            get; set;
        }
        public string Screenshot
        {
            get; set;
        }

    }
}
