using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public class AccountBO
    {
        public int ID { get; set; }
        public string Password { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public string Email { get; set; }
        public string SecurityQ { get; set; }
        public string SecurityA { get; set; }
        public string AdminStats { get; set; }
        public int? LoginAttempts { get; set; }
        public int? CountryID { get; set; }
        public int? CityID { get; set; }
        public int? PasswordSalt { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string PostalCode { get; set; }
        public string Phone1 { get; set; }
        public string Phone2 { get; set; }
        public string Fax1 { get; set; }
        public string Fax2 { get; set; }
        public string IsVerified { get; set; }
        public string IsPublicProfile { get; set; }
        public string Lang { get; set; }
        public string UserLevel { get; set; }
        public DateTime Created_at { get; set; }
        public string UserStatuts { get; set; }

        public AccountBO() { }

        public AccountBO(int ID, string Password, string FName, string LName, string Email, string SecurityQ, string SecurityA, string AdminStats, int? LoginAttempts, int? CountryID, int? CityID, int? PasswordSalt, string Address1, string Address2, string PostalCode, string Phone1, string Phone2, string Fax1, string Fax2, string IsVerified, string IsPublicProfile, string Lang, string UserLevel, DateTime Created_at, string UserStatuts)
        {
            this.ID = ID;
            this.Password = Password;
            this.FName = FName;
            this.LName = LName;
            this.Email = Email;
            this.SecurityQ = SecurityQ;
            this.SecurityA = SecurityA;
            this.AdminStats = AdminStats;
            this.LoginAttempts = LoginAttempts;
            this.CountryID = CountryID;
            this.CityID = CityID;
            this.PasswordSalt = PasswordSalt;
            this.Address1 = Address1;
            this.Address2 = Address2;
            this.PostalCode = PostalCode;
            this.Phone1 = Phone1;
            this.Phone2 = Phone2;
            this.Fax1 = Fax1;
            this.Fax2 = Fax2;
            this.IsVerified = IsVerified;
            this.IsPublicProfile = IsPublicProfile;
            this.Lang = Lang;
            this.UserLevel = UserLevel;
            this.Created_at = Created_at;
            this.UserStatuts = UserStatuts;
        }
    }


}
