using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        List<UserInfo> users;
        int Count;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            users = (List<UserInfo>)Application["AllUsersList"];
        }

        protected void Signin(object sender, EventArgs e)
        {
            if(users != null)
            {
                for (int i = 0; i < users.Count; i++)
                {

                    if (users[i].EmailAddress1.Equals(TextBox1.Text) && users[i].Password.Equals(TextBox2.Text))
                    {

                        Session["currentUser"] = users[i];
                        Count = 1;
                        

                        Response.Redirect("create.aspx");
                    }

                

                }
            }

            else
            {
                string msg1 = "Sorry we could not find a matching email on file. We recommend you to create a new account";
                Response.Write("<script>alert('" + msg1 + "')</script>");
            }


            if (Count != 1)
            {
                string msg = "Incorrect Email or Password. Please enter the correct Email or Password";
                Response.Write("<script>alert('" + msg + "')</script>");

            }



        }




        protected void cancel_Click(Object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}