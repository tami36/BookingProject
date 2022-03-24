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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            UserLogic a = new UserLogic();

            DataSet ds = a.CheckPasswordAndEmail(Pass.Text, Email.Text);

            if (ds.Tables[0].Rows.Count > 0)
            {

                Error2.Text = "email has already been taken";
            }
            else
            {
                Error2.Text = "";
                a.AddNewUser(FirstName.Text, LastName.Text, Email.Text, Pass.Text, PhoneNumber.Text);
                Response.Redirect("Login.aspx");
            }



        }
    }
}