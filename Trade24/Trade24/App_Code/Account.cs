using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trade24.App_Code
{
    public class Account
    {
        public string email { get; set; }
        public string name { get; set; }
        public string companyName { get; set; }
        public DateTime createdAt { get; set; }
        public string password { get; set; }
        public int countryID { get; set; }
        public int cityID { get; set; }
        public string salt { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public bool isVerified { get; set; }
        public bool isPublicProfile { get; set; }
        public string lang { get; set; }
    }
}