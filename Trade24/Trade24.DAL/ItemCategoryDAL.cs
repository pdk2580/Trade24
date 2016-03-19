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
        public IEnumerable<ItemCategoryBO> GetCategories(int parentId)
        {
            IEnumerable<ItemCategoryBO> categories = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM ItemCategories WHERE ParentID = @ParentID";
                categories = sqlConnection.Query<ItemCategoryBO>(query, new { ParentID = parentId });
            }

            return categories;
        }

        public void CreateCategory(ItemCategoryBO category)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "INSERT ItemCategories (Name, ParentID) VALUES (@Name, @ParentID)";
                sqlConnection.Execute(query, category);
            }
        }

        public void RemoveCategory(int categoryId)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "DELETE FROM ItemCategories WHERE ID = @ID";
                sqlConnection.Execute(query, new { ID = categoryId });
            }
        }

        public void UpdateCategory(ItemCategoryBO updatedCategory)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "UPDATE ItemCategories SET Name=@Name, ParentID=@ParentID WHERE ID=@ID";
                sqlConnection.Execute(query, updatedCategory);
            }
        }
    }
}