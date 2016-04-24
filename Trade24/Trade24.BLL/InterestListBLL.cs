using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trade24.BO;
using Trade24.DAL;

namespace Trade24.BLL
{
    public class InterestListBLL
    {
        public static void Save(InterestListBO il)
        {
            new InterestListDAL().Save(il);
        }
        public static IEnumerable<RequestBO> GetAllInterested(int UserID)
        {
            return new InterestListDAL().GetAllInterested(UserID);
        }
    }
}
