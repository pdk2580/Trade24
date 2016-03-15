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
    public class ItemCategoryDAL
    {
        public IEnumerable<ItemCategoryBO> GetAllCategories(int parentID = -1)
        {
            IEnumerable<ItemCategoryBO> cities;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM ItemCategories";
                if(parentID >= 0)
                {
                    query += " WHERE parentID = " + parentID.ToString();
                }
                cities = sqlConnection.Query<ItemCategoryBO>(query);
            }

            return cities;
        }
    }
}