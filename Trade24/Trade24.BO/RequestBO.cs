using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public enum RequestType
    {
        SELL = 2, REQUEST = 1
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
        public string Unit { get; set; }
        public string Currency { get; set; }
        public float? MinPrice { get; set; }
        public string Description { get; set; }
        public float Weight { get; set; }
        public string WeightUnit { get; set; }
        public string Packaging { get; set; }
        public int? PlaceOfOriginCountryID { get; set; }
        public int? PlaceOfOriginCityID { get; set; }
        public int? SupplyAbility { get; set; }
        public string SupplyAbilityUnit { get; set; }
        public string SupplyAbilityTimeUnit { get; set; }
        public DateTime Created_at { get; set; }

        public RequestBO() { }

        public RequestBO(int ID, string Name, string RequestType, int? UploaderID, int? ItemCategoryID, float? MinQty, string Unit, string Currency, float? MinPrice, string Description, DateTime Created_at)
        {
            this.ID = ID;
            this.Name = Name;
            this.RequestType = RequestType;
            this.UploaderID = UploaderID;
            this.ItemCategoryID = ItemCategoryID;
            this.MinQty = MinQty;
            this.Unit = Unit;
            this.Currency = Currency;
            this.MinPrice = MinPrice;
            this.Description = Description;
            this.Created_at = Created_at;
        }
    }

}
