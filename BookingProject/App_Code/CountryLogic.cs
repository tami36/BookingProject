using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace BookingProject.App_Code
{
    public class CountryLogic
    {
        DAL dal = new DAL();

        public DataSet GetAllCountry()
        {
            string sql = "SELECT  *  FROM Country";
            return dal.excuteQuery(sql);
        }
    }
}