using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trade24.App_Code
{
    public class Country
    {
        public int Code { get; set; }
        public string Name { get; set; }
        public string CurrencyShort { get; set; }
        public string CurrencyLong { get; set; }
        public int Continent { get; set; }
    }
}