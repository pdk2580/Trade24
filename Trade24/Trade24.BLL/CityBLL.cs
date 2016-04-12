using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trade24.BO;
using Trade24.DAL;

namespace Trade24.BLL
{
    public class CityBLL
    {
        public static IEnumerable<CityBO> GetAllCities()
        {
            return new CityDAL().GetAllCities();
        }

        public static IEnumerable<CityBO> GetCities(string countryISO2)
        {
            return !string.IsNullOrEmpty(countryISO2) ? new CityDAL().GetCities(countryISO2) : null;
        }

        public static IEnumerable<CityBO> GetCities(int countryID)
        {
            return ((countryID)>0) ? new CityDAL().GetCities(countryID) : null;
        }

        public static string GetCityName(int cityId)
        {
            return new CityDAL().GetCity(cityId).Name;
        }
    }
}
