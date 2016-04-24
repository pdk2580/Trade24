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
    public class ItemViewListDAL
    {
        public void Save(ItemViewListBO ivl)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "INSERT ItemViewList (UserID, RequestID) VALUES (@UserID, @RequestID); ";

                sqlConnection.Query<int>(query, ivl);
            }
        }

        public IEnumerable<RequestBO> GetAllVisits(int UserID)
        {
            IEnumerable<RequestBO> requests = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT TOP 80 * FROM ItemViewList, Request WHERE Request.ID = ItemViewList.RequestID AND ItemViewList.UserID = @UserID ORDER BY ItemViewList.Created_at DESC";
                requests = sqlConnection.Query<RequestBO>(query, new { UserID = UserID });
            }

            return requests;
        }
    }
}
