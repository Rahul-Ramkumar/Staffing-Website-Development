using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using WebApplication1.App_Code;

namespace WebApplication1
{
    public class Global : System.Web.HttpApplication
    {
        
        protected void Application_Start(object sender, EventArgs e)
        {
           

            List<UserInfo> users = new List<UserInfo>();
            Application["AllUsersList"] = new List<UserInfo>();
            Application["AllUsersList"] = users;



            String connectionString;
            SqlConnection cnn;
            connectionString = @"Data Source=dcm.uhcl.edu;Initial Catalog=c432018fa02ramkumarr;User ID=ramkumarr;Password=1601041";
            cnn = new SqlConnection(connectionString);
            cnn.Open();

            SqlCommand command;

            String sql = "Select * from RamkumarR_WADfl18_UserInfo";
            command = new SqlCommand(sql, cnn);

            using (SqlDataReader Reader = command.ExecuteReader())
            {
                while (Reader.Read())
                {
                    UserInfo user = new UserInfo();
                    user.FirstName = Reader["firstName"].ToString();
                    user.MiddleName = Reader["middleName"].ToString();
                    user.LastName = Reader["lastName"].ToString();
                    user.EmailAddress1 = Reader["emailAddress1"].ToString();
                    user.EmailAddress2 = Reader["emailAddress2"].ToString();
                    user.Address = Reader["streetAddress"].ToString();
                    user.Apartment = Reader["apartment"].ToString();
                    user.City = Reader["city"].ToString();
                    user.State = Reader["currentState"].ToString();
                    user.Zip = Reader["zip"].ToString();
                    user.HomePhone = Reader["homePhone"].ToString();
                    user.JobExperience = Reader["jobExperience"].ToString();
                    user.Password = Reader["accountPassword"].ToString();

                    users.Add(user);

                     
                }

         

            }


            cnn.Close();


        }

        protected void Session_Start(object sender, EventArgs e)
        {
            
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}