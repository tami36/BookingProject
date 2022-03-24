using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace BookingProject.App_Code
{
    public class HotelLogic
    {
        DAL dal = new DAL();
        public DataSet GetAllHotel()
        {
            string sql = "SElECT * FROM Hotel";
            return dal.excuteQuery(sql);
        }
    }
}