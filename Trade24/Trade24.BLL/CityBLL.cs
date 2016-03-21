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
        public IEnumerable<CityBO> GetAllCities()
        {
            return new CityDAL().GetAllCities();
        }

        public IEnumerable<CityBO> GetCities(string countryCode)
        {
            return !string.IsNullOrEmpty(countryCode) ? new CityDAL().GetCities(countryCode) : null;
        }
        public IEnumerable<CityBO> GetCities(int countryID)
        {
            return !((countryID)>0) ? new CityDAL().GetCities(countryID) : null;
        }
    }
}
