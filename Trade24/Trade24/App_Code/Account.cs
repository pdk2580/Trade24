using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trade24.App_Code
{
    public class Account
    {
        public string Email { get; set; }
        public string Name { get; set; }
        public string CompanyName { get; set; }
        public DateTime CreatedAt { get; set; }
        public string Password { get; set; }
        public int CountryID { get; set; }
        public int CityID { get; set; }
        public string PasswordSalt { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public bool IsVerified { get; set; }
        public bool IsPublicProfile { get; set; }
        public string Lang { get; set; }
    }
}