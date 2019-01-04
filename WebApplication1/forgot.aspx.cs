using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

namespace WebApplication1
{
    public partial class forgot : System.Web.UI.Page
    {
        List<UserInfo> users;
        int Count;
        UserInfo aUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            users = (List<UserInfo>)Application["AllUsersList"];
           

        }

        protected void Recover(object sender, EventArgs e)
        {
            int j;
            if (users != null)
            {

                for (int i = 0; i < users.Count; i++)
                {

                    if (users[i].EmailAddress1.Equals(TextBox1.Text))
                    {
                        Count = 1;
                        aUser = users[i];
                        break;
                    }

                    

                }
            }

            else

            {
                string msg1 = "Sorry we could not find a matching email on file. We recommend you to create a new account";
                Response.Write("<script>alert('" + msg1 + "')</script>");
            }

            if (Count == 1)
            {
                 

                try
                {
                    String subject = "We have recovered your password!";
                    String body = "Dear User" + TextBox1.Text + ", \r\n\r\nYou are receiving this email because you requested to recover your password. \r\nYour current password is: "+ aUser.Password+ "\r\n\r\nThank You,\r\nAmericanStaffingAgency.com Team";

                    SmtpClient client = new SmtpClient("smtp.mail.yahoo.com", 587)
                    { 
                        Credentials = new NetworkCredential("americanstaffingagency@yahoo.com", "ht@879jk"),
                        EnableSsl = true
                    };


                    client.Send("americanstaffingagency@yahoo.com", TextBox1.Text, subject, body);
                    TextBox1.Text = string.Empty;

                    string msg = "Thank you for contacting us to recover your password. We have sent an email to the matching email on file. Please check your email account for login credentials";
                    Response.Write("<script>alert('" + msg + "')</script>");
                }


                catch (Exception)
                {
                    string msge = " OOPS Something Went Wrong!!";
                    Response.Write("<script>alert('" + msge + "')</script>");

                }
                 
           

            }
            else
            {
                string msg = "Sorry we could not find a matching email on file. We recommend you to create a new account";
                Response.Write("<script>alert('" + msg + "')</script>");

            }

        }
       
       
        protected void Backlog_Click(Object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}