using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trade24.BO;

namespace Trade24.DAL
{
    public class CountryDAL
    {
        public IEnumerable<CountryBO> GetAllCountries()
        {
            IEnumerable<CountryBO> countries;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Countries";
                countries = sqlConnection.Query<CountryBO>(query);
            }

            return countries;
        }
    }
}
