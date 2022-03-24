using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BookingProject
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //מופעל בזמן העלאת האתר לשרת
            Application["appCtr"] = 0;
            Application["noOfUsers"] = 0;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // Session מופעלת בכל התחלת 
            Application.Lock();
            Application["noOfUsers"] = (int)Application["noOfUsers"] + 1;
            Session["user"] = "guest";
            Session["admin"] = "no";
            Application.UnLock();

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            //המופעלת בכל סיום Session  
            Session["user"] = "guest";
            Session["admin"] = "no";
            Application.Lock();
            Application["noOfUsers"] = (int)Application["noOfUsers"] - 1;
            Application.UnLock();

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}