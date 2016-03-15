using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public class CountryBO
    {
        public int CountryID { get; set; }
        public string ISO2 { get; set; }
        public string CountryName { get; set; }
        public string LongCountryName { get; set; }
        public string ISO3 { get; set; }
        public string NumCode { get; set; }
        public string UNMemberState { get; set; }
        public string CallingCode { get; set; }
        public string CCTLD { get; set; }
        public string InternationalRegion { get; set; }

        public CountryBO(string ISO2, string CountryName, string LongCountryName, string ISO3, string NumCode, string UNMemberState, string CallingCode, string CCTLD, string InternationalRegion)
        {
            this.ISO2 = ISO2;
            this.CountryName = CountryName;
            this.LongCountryName = LongCountryName;
            this.ISO3 = ISO3;
            this.NumCode = NumCode;
            this.UNMemberState = UNMemberState;
            this.CallingCode = CallingCode;
            this.CCTLD = CCTLD;
            this.InternationalRegion = InternationalRegion;
        }
    }
}
