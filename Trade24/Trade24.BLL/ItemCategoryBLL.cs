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
        public IEnumerable<ItemCategoryBO> GetAllCategories()
        {
            return new ItemCategoryDAL().GetAllCategories();
        }

        public IEnumerable<ItemCategoryBO> GetCategories(int parentID)
        {
            return parentID != null ? new ItemCategoryDAL().GetCategories(parentID) : null;
        }
    }
}
