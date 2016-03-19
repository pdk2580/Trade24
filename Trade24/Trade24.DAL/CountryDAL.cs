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

        public void CreateCountry(CountryBO country)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "INSERT Countries (Name, LongName, ISO2, ISO3, NumCode, UNMemberState, CallingCode, CCTLD, InternationalRegion) VALUES (@Name, @LongName, @ISO2, @ISO3, @NumCode, @UNMemberState, @CallingCode, @CCTLD, @InternationalRegion)";
                sqlConnection.Execute(query, country);
            }
        }

        public void RemoveCountry(int countryId)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "DELETE FROM Countries WHERE ID = @ID";
                sqlConnection.Execute(query, new { ID = countryId });
            }
        }

        public void UpdateCountry(CountryBO updatedCountry)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "UPDATE Cities SET Name=@Name, LongName=@LongName, ISO2=@ISO2, ISO3=@ISO3, NumCode=@NumCode, UNMemberState=@UNMemberState, CallingCode=@CallingCode, CCTLD=@CCTLD, InternationalRegion=@InternationalRegion WHERE ID=@ID";
                sqlConnection.Execute(query, updatedCountry);
            }
        }
    }
}
