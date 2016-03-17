using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public class CountryBO
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string LongName { get; set; }
        public string ISO2 { get; set; }
        public string ISO3 { get; set; }
        public int NumCode { get; set; }
        public string UNMemberState { get; set; }
        public string CallingCode { get; set; }
        public string CCTLD { get; set; }
        public string InternationalRegion { get; set; }

        public CountryBO(int ID, string Name, string LongName, string ISO2, string ISO3, int NumCode, string UNMemberState, string CallingCode, string CCTLD, string InternationalRegion)
        {
            this.ID = ID;
            this.Name = Name;
            this.LongName = LongName;
            this.ISO2 = ISO2;
            this.ISO3 = ISO3;
            this.NumCode = NumCode;
            this.UNMemberState = UNMemberState;
            this.CallingCode = CallingCode;
            this.CCTLD = CCTLD;
            this.InternationalRegion = InternationalRegion;

        }
    }

}
