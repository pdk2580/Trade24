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

                string query = "SELECT * FROM Cities WHERE CountryISO2 = @CountryISO2";
                cities = sqlConnection.Query<CityBO>(query, new { CountryISO2 = countryISO2 });
            }

            return cities;
        }

        public void CreateCity(CityBO city)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "INSERT Cities (Name, ISO3, CountryID, CountryISO2, Timezone, Lat, Lon) VALUES (@Name, @ISO3, @CountryID, @CountryISO2, @Timezone, @Lat, @Lon)";
                sqlConnection.Execute(query, city);
            }
        }

        public void RemoveCity(int cityId)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "DELETE FROM Cities WHERE ID = @ID";
                sqlConnection.Execute(query, new { ID = cityId });
            }
        }
    }
}
