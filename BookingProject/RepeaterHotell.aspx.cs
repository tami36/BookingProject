using BookingProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingProject
{
    public partial class RepeaterHotell : System.Web.UI.Page
    {
        HotelLogic updet1 = new HotelLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = updet1.GetAllHotel();
            Repeater1.DataBind();
        }
    }
}