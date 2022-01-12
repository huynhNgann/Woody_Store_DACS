using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Woody_DT.Common
{
    public static class CommonConstants
    {
        public static string USER_SSESSION = "USER_SSESSION";
        public static string SESSION_CREDENTIALS = "SESSION_CREDENTIALS";
        public static string CartSession = "CartSession";

        public static string CurrentCulture { set; get; }
        public static string USER_SESSION { get; internal set; }
    }
}