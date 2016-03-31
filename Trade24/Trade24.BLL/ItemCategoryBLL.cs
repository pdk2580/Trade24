using System;
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
        public static IEnumerable<ItemCategoryBO> GetAllCategories()
        {
            return new ItemCategoryDAL().GetAllCategories();
        }

        public static IEnumerable<ItemCategoryBO> GetCategories(int parentID)
        {
            return parentID >= 0 ? new ItemCategoryDAL().GetCategories(parentID) : null;
        }
    }
}
