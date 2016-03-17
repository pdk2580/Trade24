using Dapper;
using ObjectDumper;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trade24.BO;

namespace Trade24.DAL
{
    public class CityDAL
    {
        public IEnumerable<CityBO> GetAllCities()
        {
            IEnumerable<CityBO> cities;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Cities";
                cities = sqlConnection.Query<CityBO>(query);
            }

            return cities;
        }

        public IEnumerable<CityBO> GetCities(string countryISO2)
        {
            IEnumerable<CityBO> cities = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = string.Format("SELECT * FROM Cities WHERE CountryISO2 = '{0}'", countryISO2);
                cities = sqlConnection.Query<CityBO>(query);
            }

            return cities;
        }
    }
}
