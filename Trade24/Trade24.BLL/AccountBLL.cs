using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using Trade24.BO;
using Trade24.DAL;

namespace Trade24.BLL
{
    public class AccountBLL
    {
        public static IEnumerable<AccountBO> GetAllAccounts()
        {
            return new AccountDAL().GetAllAccounts();
        }

        public static AccountBO GetAccount(string email)
        {
            return !string.IsNullOrEmpty(email) ? new AccountDAL().GetAccount(email) : null;
        }

        public static AccountBO GetAccount(int id)
        {
            return new AccountDAL().GetAccount(id);
        }

        public static void CreateNewAccount(AccountBO newAccount)
        { 
            if (newAccount != null)
                new AccountDAL().CreateAccount(newAccount);
        }

        public static void RemoveAccount(string email)
        {
            if (!string.IsNullOrEmpty(email))
                new AccountDAL().RemoveAccount(email);
        }

        //public static void UpdateAccountProfile(string email, string newCompanyName, int? newCountryId, int? newCityId, string newAddress1, string newAddress2, string newPostalCode, string newPhone1, string newPhone2, string newFax1, string newFax2)
        //{
        //    AccountBO account = new AccountBO();
        //    account = GetAccount(email);

        //    if (newCompanyName != null)
        //        account.CompanyName = newCompanyName;
        //    if (newCountryId != null)
        //        account.CountryID = newCountryId;
        //    if (newCityId != null)
        //        account.CityID = newCityId;
        //    if (newAddress1 != null)
        //        account.Address1 = newAddress1;
        //    if (newAddress2 != null)
        //        account.Address2 = newAddress2;
        //    if (newPostalCode != null)
        //        account.PostalCode = newPostalCode;
        //    if (newPhone1 != null)
        //        account.Phone1 = newPhone1;
        //    if (newPhone2 != null)
        //        account.Phone2 = newPhone2;
        //    if (newFax1 != null)
        //        account.Fax1 = newFax1;
        //    if (newFax2 != null)
        //        account.Fax2 = newFax2;

        //    new AccountDAL().UpdateAccount(account);
        //}

        public static void Logout()
        {
            HttpContext.Current.Session.Remove("login");
        }

        public static AccountBO Login(string email)
        {
            AccountBO account = new AccountBO();
            account = GetAccount(email);

            HttpContext.Current.Session.Add("login", email);

            return account;
        }

        public static AccountBO GetLoginAccount()
        {
            AccountBO account = null;

            string loggedInEmail = (string)HttpContext.Current.Session["login"];
            if (!string.IsNullOrEmpty(loggedInEmail))
                account = GetAccount(loggedInEmail);

            return account;
        }

        public static string GetCityWithCountry(int accountId)
        {
            string cityCountryName = string.Empty;
            AccountBO account = GetAccount(accountId);

            cityCountryName = CityBLL.GetCityName((int)account.CityID) + ", " + CountryBLL.GetCountryName((int)account.CountryID);

            return cityCountryName;
        }

        public static bool CheckLogin()
        {
            bool isLoggedIn = false;

            string loggedInEmail = (string)HttpContext.Current.Session["login"];
            if (!string.IsNullOrEmpty(loggedInEmail))
                isLoggedIn = true;

            return isLoggedIn;
        }

        public static bool IsAuthenticatedAccount(string email, string passowrd)
        {
            bool isAuthenticated = false;

            AccountBO account = new AccountBO();
            account = GetAccount(email);

            if (account != null && account.Password.Equals(passowrd))
                isAuthenticated = true;

            return isAuthenticated;
        }

        public static bool IsAccountExist(string email)
        {
            bool isExist = false;

            AccountBO account = new AccountBO();
            account = GetAccount(email);

            if (account != null)
                isExist = true;

            return isExist;
        }
    }
}
