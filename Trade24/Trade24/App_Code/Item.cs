using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trade24.App_Code
{
    public class Item
    {
        public int ID { get; set; }
        public int ItemCategoryID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public double MinQty { get; set; }
        public double Price { get; set; }
        public int PosterID { get; set; }
        public DateTime PostedAt { get; set; }
    }
}