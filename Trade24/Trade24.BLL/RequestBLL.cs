﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Trade24.BO;
using Trade24.DAL;

namespace Trade24.BLL
{
    public class RequestBLL
    {
        public static IEnumerable<RequestBO> GetAllRequests()
        {
            return new RequestDAL().GetAllRequests();
        }

        public static RequestBO GetRequest(int requestId, RequesType requestType)
        {
            return new RequestDAL().GetRequest(requestId, requestType);
        }

        public static IEnumerable<RequestBO> GetRequests(int categoryId)
        {
            return new RequestDAL().GetRequests(categoryId);
        }

        public static IEnumerable<RequestBO> GetRequestsByUploader(int uploaderId)
        {
            return new RequestDAL().GetRequests_(uploaderId);
        }

        public static int CreateRequest(RequestBO request)
        {
            return new RequestDAL().CreateRequest(request);
        }

        public static void RemoveRequest(int requestId)
        {
            new RequestDAL().RemoveRequest(requestId);
        }

        public static void UpdateRequest(RequestBO updatedRequest)
        {
            new RequestDAL().UpdateRequest(updatedRequest);
        }


        public static IEnumerable<RequestBO> SearchRequest(RequesType requestType, string keyword, int searchBy = 0, Order order = Order.ASC)
        {
            return new RequestDAL().SearchRequest(requestType, keyword, searchBy, order);
        }

    }
}
