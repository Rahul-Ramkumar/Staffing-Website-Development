using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;
using System.Net;
using System.Net.Mime;

namespace WebApplication1
{
    public partial class contact : System.Web.UI.Page
    {
        UserInfo aUser;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Enabled = false;
            TextBox1.Text = String.Empty;
            if (Session["currentUser"] != null)
            {
                TextBox1.Enabled = true;
                aUser = (UserInfo)Session["currentUser"];
            }
        }

        protected void Send_Message(Object sender, EventArgs e)
        {
            if (Session["currentUser"] == null)
            {
                string msg1 = "You must login to send message";
                Response.Write("<script>alert('" + msg1 + "')</script>");

            }

            else
            {


                try
                {
                    aUser = (UserInfo)Session["currentUser"];
                    String subject = "Thank you for your interest in AmericanStaffingAgency.com";
                    String body = "Dear User " + aUser.EmailAddress1 + ", \r\n \r\nThank you for your feedback. Our staff will review your concerns within the next 24 hours. You will receive an email notification with what next. \r\nOur support staff is available 24 hours a day to answer question regarding your concerns.\r\n\r\nThank You,  \r\nAmericanStaffingAgency.com Team";

                    SmtpClient client = new SmtpClient("smtp.mail.yahoo.com", 587)
                    {
                        Credentials = new NetworkCredential("americanstaffingagency@yahoo.com", "ht@879jk"),
                        EnableSsl = true
                    };


                    client.Send("americanstaffingagency@yahoo.com", aUser.EmailAddress1,  subject,  body);
                }


                catch (Exception)
                {
                    string msge = " OOPS Something Went Wrong!!";
                    Response.Write("<script>alert('" + msge + "')</script>");

                }
            }
            }
    }
}