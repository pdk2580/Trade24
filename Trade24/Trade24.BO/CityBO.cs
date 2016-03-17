using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public class CityBO
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string ISO3 { get; set; }
        public int CountryID { get; set; }
        public string CountryISO2 { get; set; }
        public string Timezone { get; set; }
        public double Lat { get; set; }
        public double Lon { get; set; }

        public CityBO(int ID, string Name, string ISO3, int CountryID, string CountryISO2, string Timezone, double Lat, double Lon)
        {
            this.ID = ID;
            this.Name = Name;
            this.ISO3 = ISO3;
            this.CountryID = CountryID;
            this.CountryISO2 = CountryISO2;
            this.Timezone = Timezone;
            this.Lat = Lat;
            this.Lon = Lon;

        }
    }


}
