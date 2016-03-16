using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public class CityBO
    {
        public string cityCode { get; set; }
        public string cityName { get; set; }
        public string countryCode { get; set; }
        public string timezone { get; set; }
        public string lat { get; set; }
        public string lon { get; set; }
        public int ID { get; set; }

        public CityBO(string cityCode, string cityName, string countryCode, string timezone, string lat, string lon)
        {
            this.cityCode = cityCode;
            this.cityName = cityName;
            this.countryCode = countryCode;
            this.timezone = timezone;
            this.lat = lat;
            this.lon = lon;
        }
    }
}
