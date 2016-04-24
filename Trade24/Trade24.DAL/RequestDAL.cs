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

        public RequestBO GetRequest(int requestId, RequestType? requestType = null)
        {
            IEnumerable<RequestBO> requests = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Request WHERE ID = @ID AND RequestType = @requestType";

                if (requestType != null)
                {
                    requests = sqlConnection.Query<RequestBO>(query, new { ID = requestId, requestType = ((int)requestType) });
                }
                else
                {
                    query = "SELECT * FROM Request WHERE ID = @ID";
                    requests = sqlConnection.Query<RequestBO>(query, new { ID = requestId });
                }

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

        public IEnumerable<RequestBO> GetRequests_(int uploaderId, RequestType? requestType = null)
        {
            IEnumerable<RequestBO> requests = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Request WHERE UploaderID = @UploaderID AND RequestType = @RequestType";
                if (requestType != null)
                {
                    requests = sqlConnection.Query<RequestBO>(query, new { UploaderID = uploaderId, RequestType = (int)requestType });
                }
                else
                {
                    query = "SELECT * FROM Request WHERE UploaderID = @UploaderID";
                    requests = sqlConnection.Query<RequestBO>(query, new { UploaderID = uploaderId });
                }
            }

            return requests;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="requestType">SELL, REQUEST</param>
        /// <param name="keyword"></param>
        /// <param name="searchBy">
        /// Default is 0 general (all)
        /// 1: buyer
        /// 2: Seller
        /// </param>
        /// <param name="order">
        /// 1: A-Z 0,9  Ascending (Default)
        /// 2: Descending
        /// </param>
        /// <returns></returns>
        public IEnumerable<RequestBO> SearchRequest(RequestType requestType, string keyword, int searchBy, Order order)
        {
            IEnumerable<RequestBO> requests = null;

            string query = "SELECT * FROM Request WHERE RequestType = @ReqType AND (Name LIKE '%"+ keyword.Replace(" ", "%") + "%' OR Description LIKE '%" + keyword.Replace(" ", "%") + "%')";

            string ReqType = "1";

            if(requestType == RequestType.SELL)
                ReqType = "2";


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

                string query = "INSERT Request (Name, RequestType, UploaderID, ItemCategoryID, MinQty, Unit, Currency, MinPrice, Description) VALUES (@Name, @RequestType, @UploaderID, @ItemCategoryID, @MinQty, @Unit, @Currency, @MinPrice, @Description); ";
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

                string query = "UPDATE Request SET RequestType=@RequestType, UploaderID=@UploaderID, ItemCategoryID=@ItemCategoryID, MinQty=@MinQty, MinPrice=@MinPrice, Description=@Description WHERE ID=@ID";
                sqlConnection.Execute(query, updatedRequest);
            }
        }
    }
}
