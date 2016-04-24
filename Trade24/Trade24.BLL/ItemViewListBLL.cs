using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trade24.BO;
using Trade24.DAL;

namespace Trade24.BLL
{
    public class ItemViewListBLL
    {
        public static void Save(ItemViewListBO ivl)
        {
            new ItemViewListDAL().Save(ivl);
        }
        public static IEnumerable<RequestBO> GetAllVisits(int UserID)
        {
            return new ItemViewListDAL().GetAllVisits(UserID);
        }
    }
}
