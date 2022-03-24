using BookingProject.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            UserLogic us = new UserLogic();




            DataSet ds = us.CheckPasswordAndEmail(Pass.Text, Email.Text);

            if (ds.Tables[0].Rows.Count == 0)
            {
                Error2.Text = "email or password are wrong";
            }
            else
            {
                Error2.Text = "";
                Session["user"] = ds.Tables[0].Rows[0][0];
                Response.Redirect("Home.aspx");
            }
        }
    }
}