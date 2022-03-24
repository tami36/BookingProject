using BookingProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingProject
{
    public partial class GridviewR : System.Web.UI.Page
    {
        
            HotelLogic room1 = new HotelLogic();
            protected void Page_Load(object sender, EventArgs e)
            {
                GridView1.DataSource = room1.GetAllHotel();
                GridView1.DataBind();
            }
       
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}