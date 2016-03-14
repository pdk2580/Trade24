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
    }
}
