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

        /// <summary>
        /// 
        /// </summary>
        /// <param name="requestType">SELL, REQUEST</param>
        /// <param name="keyword"></param>
        /// <param name="searchBy">
        /// Default is 0 general
        /// 1: 
        /// </param>
        /// <param name="order">
        /// Default is 0 no order
        /// 1: A-Z 0,9  Ascending
        /// 2: Descending
        /// </param>
        /// <returns></returns>
        public IEnumerable<RequestBO> SearchRequest(RequesType requestType, string keyword, int searchBy, int order)
        {
            IEnumerable<RequestBO> requests = null;

            string query = "SELECT * FROM Request WHERE RequestType = @ReqType AND (Name LIKE '%"+ keyword.Replace(" ", "%") + "%' OR Description LIKE '%" + keyword.Replace(" ", "%") + "%')";

            string ReqType = "1";

            if(requestType == RequesType.SELL)
                ReqType += "2";


            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();
                requests = sqlConnection.Query<RequestBO>(query, new {
                    UploaderID = requestType,
                    ReqType = ReqType
                });
            }

            return requests;
        }

        public int CreateRequest(RequestBO request)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "INSERT Request (RequestType, UploaderID, ItemCategoryID, MinQty, MinPrice, Description) VALUES (@RequestType, @UploaderID, @ItemCategoryID, @MinQty, @MinPrice, @Description); ";
                query += "SELECT CAST(SCOPE_IDENTITY() as int)";

                return sqlConnection.Query<int>(query, request).Single();
                //sqlConnection.Execute(query, request);
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
