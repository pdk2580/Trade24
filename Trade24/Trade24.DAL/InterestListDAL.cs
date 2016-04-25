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
    public class InterestListDAL
    {
        public void Save(InterestListBO il)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "INSERT InterestedList (UserID, RequestID) VALUES (@UserID, @RequestID); ";

                sqlConnection.Query<int>(query, il);
            }
        }

        public IEnumerable<RequestBO> GetAllInterested(int UserID)
        {
            IEnumerable<RequestBO> requests = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT TOP 80 * FROM InterestedList, Request WHERE Request.ID = InterestedList.RequestID AND InterestedList.UserID = @UserID ORDER BY InterestedList.Created_at DESC";
                requests = sqlConnection.Query<RequestBO>(query, new { UserID = UserID });
            }

            return requests;
        }

        public bool IsInterested(InterestListBO il)
        {
            IEnumerable<RequestBO> requests = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM InterestedList InterestedList.UserID = @UserID AND InterestedList.RequestID = @RequestID";
                requests = sqlConnection.Query<RequestBO>(query, il);
            }

            return ((requests.Count() > 0)?true:false);
        }
    }
}
