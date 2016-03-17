﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public class ItemCategoryBO
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int ParentID { get; set; }


        public ItemCategoryBO(int ID, string Name, int ParentID)
        {
            this.ID = ID;
            this.Name = Name;
            this.ParentID = ParentID;
        }
    }
}
