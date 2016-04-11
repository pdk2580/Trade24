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
    public class UploadedFileDAL
    {
        public int CreateUploadedFile(UploadedFileBO uploadedFile)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "INSERT UploadedFiles (Name, FileType, RequestId) VALUES (@Name, @FileType, @RequestId); ";
                query += "SELECT CAST(SCOPE_IDENTITY() as int)";

                return sqlConnection.Query<int>(query, uploadedFile).Single();
                //sqlConnection.Execute(query, request);
            }
        }

        public IEnumerable<UploadedFileBO> GetUploadedFile(int requestId)
        {
            IEnumerable<UploadedFileBO> files = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM UploadedFiles WHERE RequestID = @RequestID";
                files = sqlConnection.Query<UploadedFileBO>(query, new { RequestID = requestId });
            }

            return files;
        }
    }
}
