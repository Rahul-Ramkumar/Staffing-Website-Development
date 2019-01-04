using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["currentUser"] != null)
            {
                btn1.Enabled = false;
                btn1.Style.Add("background", "#0a0a02");
                btn1.Style.Add("width", "200px");
                btn1.Style.Add("color", "#FCFCFC");
                btn1.Style.Add("border-radius", "10px");
                btn1.Style.Add("font - weight", "bold");
                btn1.Style.Add("padding", "20px"); 
                btn2.Text = "LOGOUT";
            }

            
        }
        protected void account_Click(Object sender, EventArgs e)
        {
            Response.Redirect("create.aspx");
        }

        protected void Login_Click(Object sender, EventArgs e)
        {
            if (btn2.Text == "LOGOUT")
            {
                Session.Remove("currentUser");
                btn2.Text = "LOGIN";

                btn1.Enabled = true;
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            
        }
        protected void sayHelloFromServer(Object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert",
            "alert('Work in progress!')", true);
        }




    }
}