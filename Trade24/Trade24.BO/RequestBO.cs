using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    class RequestBO
    {
        public int ID { get; set; }
        public int RequestType { get; set; }
        public int UploaderID { get; set; }
        public int ItemCategoryID { get; set; }
        public double MinQty { get; set; }
        public double MinPrice { get; set; }
        public string Description { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}
