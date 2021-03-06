﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trade24.BO;
using Trade24.DAL;

namespace Trade24.BLL
{
    public class CountryBLL
    {
        public static IEnumerable<CountryBO> GetAllCountries()
        {
            return new CountryDAL().GetAllCountries();
        }

        public static string GetCountryName(int countryId)
        {
            return new CountryDAL().GetCountry(countryId).Name;
        }
    }
}
