using BookingProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingProject
{
    public partial class Home : System.Web.UI.Page
    {
        CountryLogic p1 = new CountryLogic();
        string[,] schedDay = new string[13, 32];
        protected void Page_Load(object sender, EventArgs e)
        {
            //int x = 0;
            //if (!string.IsNullOrEmpty(Request.QueryString["value"]))
            //{
            //    x = Int32.Parse(Request.QueryString["value"]);
            //}

            Repeater1.DataSource = p1.GetAllCountry();
            Repeater1.DataBind();
        }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            CalendarDay day = (CalendarDay)e.Day;
            TableCell cell = (TableCell)e.Cell;

            // Check day being rendered is of given month or other.
            // It is required because calander display you some day of previous month
            // and next moth.
            if (!day.IsOtherMonth)
            {
                String dayStr = schedDay[day.Date.Month, day.Date.Day];
                if (dayStr != null)
                {
                    // Format the Cell
                    cell.BackColor = System.Drawing.Color.Tan;

                    //Write some description about day
                    cell.Controls.Add(new LiteralControl("<BR>" + dayStr));
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Calendar1.Visible = true;

        }
    }
}