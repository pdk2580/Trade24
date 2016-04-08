using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public enum RequesType
    {
        SELL, REQUEST
    }

    public enum Order
    {
        ASC, DESC
    }

    public class RequestBO
    {
        public int ID { get; set; }
        public string RequestType { get; set; }
        public string Name { get; set; }
        public int? UploaderID { get; set; }
        public int? ItemCategoryID { get; set; }
        public float? MinQty { get; set; }
        public float? MinPrice { get; set; }
        public string Description { get; set; }
        public DateTime Created_at { get; set; }

        public RequestBO() { }

        public RequestBO(int ID, string Name, string RequestType, int? UploaderID, int? ItemCategoryID, float? MinQty, float? MinPrice, string Description, DateTime Created_at)
        {
            this.ID = ID;
            this.Name = Name;
            this.RequestType = RequestType;
            this.UploaderID = UploaderID;
            this.ItemCategoryID = ItemCategoryID;
            this.MinQty = MinQty;
            this.MinPrice = MinPrice;
            this.Description = Description;
            this.Created_at = Created_at;
        }
    }

}
