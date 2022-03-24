using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace BookingProject.App_Code
{
    public class UserLogic
    {
        DAL dal = new DAL();

        public void AddNewUser(string FirstName, string LastName, string Email, string Pass, string PhoneNumber)
        {
            string sSql = string.Format("INSERT INTO Users (FirstName,LastName,Email,Pass,PhoneNumber) VALUES( '{0}','{1}','{2}','{3}','{4}')", FirstName, LastName, Email, Pass, PhoneNumber);
            dal.excuteQuery(sSql);
        }
        public DataSet CheckPasswordAndEmail(string Pass, string Email)
        {
            try
            {

                string sSql = "select * from Users where Pass='" + Pass + "' and Email='" + Email + "' ";

                DataSet ds = dal.excuteQuery(sSql);

                return ds;
            }
            catch (Exception e)
            {

                throw e;

            }
        }
        public DataSet DropDownList1()
        {
            string sql = "select FirstName + '' + LastName as name ,Email FROM users";
            DataSet ds = dal.excuteQuery(sql);

            return ds;
        }
    }
}