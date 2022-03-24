using BookingProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingProject
{
    public partial class Hotel : System.Web.UI.Page
    {
        HotelLogic p1 = new HotelLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            //int x = 0;
            //if (!string.IsNullOrEmpty(Request.QueryString["value"]))
            //{
            //    x = Int32.Parse(Request.QueryString["value"]);
            //}

            Repeater1.DataSource = p1.GetAllHotel();
            Repeater1.DataBind();
        }
    }
}