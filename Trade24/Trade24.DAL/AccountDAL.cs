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
    public class AccountDAL
    {
        public IEnumerable<AccountBO> GetAllAccounts()
        {
            IEnumerable<AccountBO> accounts;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = @"SELECT * FROM Countries";
                accounts = sqlConnection.Query<AccountBO>(query);
            }

            return accounts;
        }

        public AccountBO GetAccount(string email)
        {
            IEnumerable<AccountBO >accounts;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Accounts WHERE Email = @Email";
                accounts = sqlConnection.Query<AccountBO>(query, new { Email = email });
            }

            return accounts.Count() > 0 ? accounts.First() : null;
        }

        public void CreateAccount(AccountBO account)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                //string query = "INSERT Accounts (Password, FName, LName, Email, SecurityQ, SecurityA, AdminStats, LoginAttempts, CompanyName, CountryID, CityID, PasswordSalt, Address1, Address2, PostalCode, Phone1, Phone2, Fax1, Fax2, IsVerified, IsPublicProfile, Lang, UserLevel, UserStatus) VALUES (@Password, @FName, @LName, @Email, @SecurityQ, @SecurityA, @AdminStats, @LoginAttempts, @CompanyName, @CountryID, @CityID, @PasswordSalt, @Address1, @Address2, @PostalCode, @Phone1, @Phone2, @Fax1, @Fax2, @IsVerified, @IsPublicProfile, @Lang, @UserLevel, @UserStatus)";
                string query = "INSERT Accounts (Password, FName, LName, Email, CountryID, CityID) VALUES (@Password, @FName, @LName, @Email, @CountryID, @CityID)";
                sqlConnection.Execute(query, account);
            }
        }

        public void RemoveAccount(string email)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "DELETE FROM Accounts WHERE Email = @Email";
                sqlConnection.Execute(query, new { Email = email });
            }
        }

        public void UpdateAccount(AccountBO updatedAccount)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "UPDATE Account SET Password=@Password, FName=@FName, LName=@LName, SecurityQ=@SecurityQ, SecurityA=@SecurityA, AdminStats=@AdminStats, LoginAttempts=@LoginAttempts, CompanyName=@CompanyName, CountryID=@CountryID, CityID=@CityID, PasswordSalt=@PasswordSalt, Address1=@Address1, Address2=@Address2, PostalCode=@PostalCode, Phone1=@Phone1, Phone2=@Phone2, Fax1=@Fax1, Fax2=@Fax2, IsVerified=@IsVerified, IsPublicProfile=@IsPublicProfile, Lang=@Lang, UserLevel=@UserLevel, UserStatus=@UserStatus WHERE Email=@Email";
                sqlConnection.Execute(query, updatedAccount);
            }
        }
    }
}