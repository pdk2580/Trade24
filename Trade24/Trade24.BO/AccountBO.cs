using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    class Account
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

    }

}
