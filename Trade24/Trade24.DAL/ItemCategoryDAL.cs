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
        public IEnumerable<ItemCategoryBO> GetAllCategories()
        {
            IEnumerable<ItemCategoryBO> categories;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM ItemCategories";
                categories = sqlConnection.Query<ItemCategoryBO>(query);
            }

            return categories;
        }

        // Get item categories with specific parentID eg. parentID = 0 is most top level
        public IEnumerable<ItemCategoryBO> GetCategories(int parentID)
        {
            IEnumerable<ItemCategoryBO> categories = null;

            if (parentID != null)
            { 
                using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
                {
                    sqlConnection.Open();

                    string query = string.Format("SELECT * FROM ItemCategories WHERE parentID = {0}", parentID);
                    categories = sqlConnection.Query<ItemCategoryBO>(query);
                }
            }

            return categories;
        }
    }
}