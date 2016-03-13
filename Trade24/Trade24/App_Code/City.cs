using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trade24.App_Code
{
    public class City
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int CountryID { get; set; }
        public TimeZone TimeZone { get; set; }
    }
}