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
    public class RequestDAL
    {
        public IEnumerable<RequestBO> GetAllRequests()
        {
            IEnumerable<RequestBO> requests = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Request";
                requests = sqlConnection.Query<RequestBO>(query);
            }

            return requests;
        }

        public RequestBO GetRequest(int requestId)
        {
            IEnumerable<RequestBO> requests = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Request WHERE ID = @ID";
                requests = sqlConnection.Query<RequestBO>(query, new { ID = requestId });
            }

            return requests.Count() > 0 ? requests.First() : null;
        }

        public IEnumerable<RequestBO> GetRequests(int categoryId)
        {
            IEnumerable<RequestBO> requests = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Request WHERE ItemCategoryID = @ItemCategoryID";
                requests = sqlConnection.Query<RequestBO>(query, new { ItemCategoryID = categoryId });
            }

            return requests;
        }

        public IEnumerable<RequestBO> GetRequests_(int uploaderId)
        {
            IEnumerable<RequestBO> requests = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Request WHERE UploaderID = @UploaderID";
                requests = sqlConnection.Query<RequestBO>(query, new { UploaderID = uploaderId });
            }

            return requests;
        }

        public void CreateRequest(RequestBO request)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "INSERT Request (RequestType, UploaderID, ItemCategoryID, MinQty, MinPrice, Description) VALUES (@RequestType, @UploaderID, @ItemCategoryID, @MinQty, @MinPrice, @Description)";
                sqlConnection.Execute(query, request);
            }
        }

        public void RemoveRequest(int requestId)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "DELETE FROM Request WHERE ID = @ID";
                sqlConnection.Execute(query, new { ID = requestId });
            }
        }

        public void UpdateRequest(RequestBO updatedRequest)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "UPDATE Messages SET RequestType=@RequestType, UploaderID=@UploaderID, ItemCategoryID=@ItemCategoryID, MinQty=@MinQty, MinPrice=@MinPrice, Description=@Description WHERE ID=@ID";
                sqlConnection.Execute(query, updatedRequest);
            }
        }
    }
}
