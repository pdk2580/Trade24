﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trade24.BO;
using Trade24.DAL;

namespace Trade24.BLL
{
    public class ItemCategoryBLL
    {
        public IEnumerable<ItemCategoryBO> GetAllCategories(int parentID = -1)
        {
            return new ItemCategoryDAL().GetAllCategories(parentID);
        }
    }
}
