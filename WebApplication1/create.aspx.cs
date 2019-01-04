using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;


namespace WebApplication1
{
    public partial class create : System.Web.UI.Page
    {
       List<UserInfo> users;
        UserInfo aUser;
        int Count;

        protected void Page_Load(object sender, EventArgs e)
        {
            users = (List<UserInfo>)HttpContext.Current.Application["AllUsersList"];
            aUser = (UserInfo)Session["currentUser"];

            if (!IsPostBack)
            {
 
            if (Session["currentUser"] != null)
            {

                btn1.Enabled = false;
                btn1.Style.Add("background", "#0a0a02");
                btn1.Style.Add("width", "auto");
                btn1.Style.Add("color", "#FCFCFC");
                btn1.Style.Add("border-radius", "4px");
                btn1.Style.Add("font - weight", "bold");
                btn1.Style.Add("font - size", "16px");
                btn1.Style.Add("font - family", "sans-serif");
                btn1.Style.Add("padding", "15px 32px");
    
                UserInfo aUser1 = new UserInfo();

                aUser1.FirstName = firstValidated.Text;
                aUser1.MiddleName = middleValidated.Text;
                aUser1.LastName = lastValidated.Text;
                aUser1.EmailAddress1 = TextBox1.Text;
                aUser1.EmailAddress2 = TextBox2.Text;
                aUser1.Address = TextBox3.Text;
                aUser1.Apartment = TextBox4.Text;
                aUser1.City = TextBox5.Text;
                aUser1.State = TextBox6.Text;
                aUser1.Zip = TextBox7.Text;
                aUser1.HomePhone = TextBox8.Text;
                aUser1.JobExperience = TextBox9.Text;
                aUser1.Password = TextBox10.Text;

                body.Style.Add("overflow", "visible");

                image1.Attributes["src"] = "create-updated.jpg";
                String P = "Your Personal Information (Click Edit button to modify)";
                edit1.Style.Add("font-size", "2em");
                edit1.InnerText = P;

                firstValidated.Text = aUser.FirstName;
                middleValidated.Text = aUser.MiddleName;
                lastValidated.Text = aUser.LastName;
                TextBox1.Text = aUser.EmailAddress1;
                TextBox2.Text = aUser.EmailAddress2;
                TextBox3.Text = aUser.Address;
                TextBox4.Text = aUser.Apartment;
                TextBox5.Text = aUser.City;
                TextBox6.Text = aUser.State;
                TextBox7.Text = aUser.Zip;
                TextBox8.Text = aUser.HomePhone;
                TextBox9.Text = aUser.JobExperience;
                TextBox10.Text = aUser.Password;



                firstValidated.Enabled = false;
                middleValidated.Enabled = false;
                lastValidated.Enabled = false;
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                TextBox5.Enabled = false;
                TextBox6.Enabled = false;
                TextBox7.Enabled = false;
                TextBox8.Enabled = false;
                TextBox9.Enabled = false;
                TextBox10.Enabled = false;

                edit.Enabled = true;
            }

            else
            {
                btn1.Enabled = true;
                edit.Enabled = false;
                edit.Style.Add("background", "#0a0a02");
                edit.Style.Add("width", "90px");
                edit.Style.Add("color", "#FCFCFC");
                edit.Style.Add("border-radius", "4px");
                edit.Style.Add("font - weight", "bold");
                edit.Style.Add("height", "40px");
                edit.Style.Add("display", "inline-block");
                edit.Style.Add("font-family", "sans - serif");
                edit.Style.Add("font-size", "20px");
                edit.Style.Add("text-align", "center");
            }

        }   

        }

        protected void EditInfo(Object sender, EventArgs e)
        {
            firstValidated.Enabled = true;
            middleValidated.Enabled = true;
            lastValidated.Enabled = true; 
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;
            TextBox5.Enabled = true;
            TextBox6.Enabled = true;
            TextBox7.Enabled = true;
            TextBox8.Enabled = true;
            TextBox9.Enabled = true;
            TextBox10.Enabled = true;
        }
        protected void Loginfo(Object sender, EventArgs e)
        {

            if (Session["currentUser"] == null)
            {
                UserInfo aUser = new UserInfo();

                aUser.FirstName = firstValidated.Text;
                aUser.MiddleName = middleValidated.Text;
                aUser.LastName = lastValidated.Text;
                aUser.EmailAddress1 = TextBox1.Text;
                aUser.EmailAddress2 = TextBox2.Text;
                aUser.Address = TextBox3.Text;
                aUser.Apartment = TextBox4.Text;
                aUser.City = TextBox5.Text;
                aUser.State = TextBox6.Text;
                aUser.Zip = TextBox7.Text;
                aUser.HomePhone = TextBox8.Text;
                aUser.JobExperience = TextBox9.Text;
                aUser.Password = TextBox10.Text;

                

                try
                {
                    String connectionString;
                    SqlConnection cnn;
                    SqlCommand command;

                    connectionString = @"Data Source=dcm.uhcl.edu;Initial Catalog=c432018fa02ramkumarr;User ID=ramkumarr;Password=1601041";
                    cnn = new SqlConnection(connectionString);
                    cnn.Open();

                    string query = "insert into RamkumarR_WADfl18_UserInfo(firstName,middleName,lastName,emailAddress1,emailAddress2,streetAddress,apartment,city,currentState,zip,homePhone,accountPassword,jobExperience) values(@FirstName,@MiddleName,@LastName,@EmailAddress1,@EmailAddress2,@Address,@Apartment ,@City,@State,@Zip,@HomePhone,@Password,@JobExperience)";

                    command = new SqlCommand(query, cnn);
                    command.Parameters.AddWithValue("@FirstName", aUser.FirstName);
                    command.Parameters.AddWithValue("@MiddleName", aUser.MiddleName);
                    command.Parameters.AddWithValue("@LastName", aUser.LastName);
                    command.Parameters.AddWithValue("@EmailAddress1", aUser.EmailAddress1);
                    command.Parameters.AddWithValue("@EmailAddress2", aUser.EmailAddress2);
                    command.Parameters.AddWithValue("@Address", aUser.Address);
                    command.Parameters.AddWithValue("@Apartment", aUser.Apartment);
                    command.Parameters.AddWithValue("@City", aUser.City);
                    command.Parameters.AddWithValue("@State", aUser.State);
                    command.Parameters.AddWithValue("@Zip", aUser.Zip);
                    command.Parameters.AddWithValue("@HomePhone", aUser.HomePhone);
                    command.Parameters.AddWithValue("@Password", aUser.Password);
                    command.Parameters.AddWithValue("@JobExperience", aUser.JobExperience);

                    command.ExecuteNonQuery();

                    command.Dispose();
                    cnn.Close();
                    String subject = "Your American Staffing Agency new account has been created.";
                    String Body = "Dear User " + aUser.EmailAddress1 + ", \r\n \r\nTHIS E-MAIL CONTAINS IMPORTANT INFORMATION PERTAINING TO YOUR ABILITY TO ACCESS YOUR STAFFING SOLUTIONS ACCOUNT - DO NOT LOSE THIS MESSAGE! \r\nYour password associated with" + TextBox1.Text + ":" + TextBox10.Text + " \r\n\r\nThank You,\r\nAmericanStaffingAgency.com Team";

                    SmtpClient client = new SmtpClient("smtp.mail.yahoo.com", 587)
                    {
                        Credentials = new NetworkCredential("americanstaffingagency@yahoo.com", "ht@879jk"),
                        EnableSsl = true
                    };


                    client.Send("americanstaffingagency@yahoo.com", TextBox1.Text, subject, Body);

                    string msg2 = " Your account information is saved";
                    Response.Write("<script>alert('" + msg2 + "')</script>");

                    users.Add(aUser);
                    Session["currentUser"] = aUser;
                    btn1.Enabled = false;
                    btn1.Style.Add("background", "#0a0a02");
                    btn1.Style.Add("width", "auto");
                    btn1.Style.Add("color", "#FCFCFC");
                    btn1.Style.Add("border-radius", "4px");
                    btn1.Style.Add("font - weight", "bold");
                    btn1.Style.Add("font - size", "16px");
                    btn1.Style.Add("font - family", "sans-serif");
                    btn1.Style.Add("padding", "15px 32px");

                    Application["AllUsersList"] = users;
                }

                catch (Exception)

                {
                    string msge = " OOPS Something Went Wrong!!";
                    Response.Write("<script>alert('" + msge + "')</script>");
                }

                firstValidated.Text = string.Empty;
                middleValidated.Text = string.Empty;
                lastValidated.Text = string.Empty;
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox7.Text = string.Empty;
                TextBox8.Text = string.Empty;
                TextBox9.Text = string.Empty;
                TextBox10.Text = string.Empty;
                txt1.Text = string.Empty;

            }

            else
            {
                UserInfo aUser = new UserInfo();

                aUser.FirstName = firstValidated.Text;
                aUser.MiddleName = middleValidated.Text;
                aUser.LastName = lastValidated.Text;
                aUser.EmailAddress1 = TextBox1.Text;
                aUser.EmailAddress2 = TextBox2.Text;
                aUser.Address = TextBox3.Text;
                aUser.Apartment = TextBox4.Text;
                aUser.City = TextBox5.Text;
                aUser.State = TextBox6.Text;
                aUser.Zip = TextBox7.Text;
                aUser.HomePhone = TextBox8.Text;
                aUser.JobExperience = TextBox9.Text;
                aUser.Password = TextBox10.Text;

                for (int i = 0; i < users.Count; i++)
                {
                    if (users[i].EmailAddress1.Equals(aUser.EmailAddress1))
                    {
                        users[i].FirstName = aUser.FirstName;
                        users[i].MiddleName = aUser.MiddleName;
                        users[i].LastName = aUser.LastName;
                        users[i].EmailAddress2 = aUser.EmailAddress2;
                        users[i].Address = aUser.Address;
                        users[i].Apartment = aUser.Apartment;
                        users[i].City = aUser.City;
                        users[i].State = aUser.State;
                        users[i].Zip = aUser.Zip;
                        users[i].HomePhone = aUser.HomePhone;
                        users[i].Password = aUser.Password;
                        users[i].JobExperience = aUser.JobExperience;

                        break;
                    }
                }
                
                Session["currentUser"] = aUser;
                
                try
                {
                    String connectionString;
                    SqlConnection cnn;
                    SqlCommand command;

                    connectionString = @"Data Source=dcm.uhcl.edu;Initial Catalog=c432018fa02ramkumarr;User ID=ramkumarr;Password=1601041";
                    cnn = new SqlConnection(connectionString);
                    cnn.Open();

                    string query = "UPDATE RamkumarR_WADfl18_UserInfo SET firstName=@FirstName,middleName=@MiddleName,lastName=@LastName,emailAddress2=@EmailAddress2,streetAddress=@Address,apartment=@Apartment,city=@City,currentState=@State,zip=@Zip,homePhone=@HomePhone,accountPassword=@Password,jobExperience=@JobExperience WHERE emailAddress1 = @EmailAddress1";

                    command = new SqlCommand(query, cnn);
                    command.Parameters.AddWithValue("@FirstName", aUser.FirstName);
                    command.Parameters.AddWithValue("@MiddleName", aUser.MiddleName);
                    command.Parameters.AddWithValue("@LastName", aUser.LastName);
                    command.Parameters.AddWithValue("@EmailAddress1", aUser.EmailAddress1);
                    command.Parameters.AddWithValue("@EmailAddress2", aUser.EmailAddress2);
                    command.Parameters.AddWithValue("@Address", aUser.Address);
                    command.Parameters.AddWithValue("@Apartment", aUser.Apartment);
                    command.Parameters.AddWithValue("@City", aUser.City);
                    command.Parameters.AddWithValue("@State", aUser.State);
                    command.Parameters.AddWithValue("@Zip", aUser.Zip);
                    command.Parameters.AddWithValue("@HomePhone", aUser.HomePhone);
                    command.Parameters.AddWithValue("@Password", aUser.Password);
                    command.Parameters.AddWithValue("@JobExperience", aUser.JobExperience);

                    command.ExecuteNonQuery();

                    command.Dispose();
                    cnn.Close();

                    firstValidated.Enabled = false;
                    middleValidated.Enabled = false;
                    lastValidated.Enabled = false;
                    TextBox2.Enabled = false;
                    TextBox3.Enabled = false;
                    TextBox4.Enabled = false;
                    TextBox5.Enabled = false;
                    TextBox6.Enabled = false;
                    TextBox7.Enabled = false;
                    TextBox8.Enabled = false;
                    TextBox9.Enabled = false;
                    TextBox10.Enabled = false;

                    string msgs = " Your account information is saved!!";
                    Response.Write("<script>alert('" + msgs + "')</script>");

                }

                catch (Exception)

                {
                    string msge = " OOPS Something Went Wrong!!";
                    Response.Write("<script>alert('" + msge + "')</script>");
                }



            }
        }

               

        protected void Check(Object sender, EventArgs e)
        {


                if (users != null)
                {


                for (int i = 0; i < users.Count; i++)
                {

                    if (users[i].EmailAddress1.Equals(txt1.Text))
                    {
                        Count = 1;
                        break;
                    }
                 
                }

                    if (Count == 1)
                    {
                        string msg4 = "User " + txt1.Text + " already exists! Please go to login page to login";
                        Response.Write("<script>alert('" + msg4 + "')</script>");

                    firstValidated.Enabled = false;
                    middleValidated.Enabled = false;
                    lastValidated.Enabled = false;
                    TextBox1.Enabled = false;
                    TextBox2.Enabled = false;
                    TextBox3.Enabled = false;
                    TextBox4.Enabled = false;
                    TextBox5.Enabled = false;
                    TextBox6.Enabled = false;
                    TextBox7.Enabled = false;
                    TextBox8.Enabled = false;
                    TextBox9.Enabled = false;
                    TextBox10.Enabled = false;
                }

                    else
                    {
                        string msg5 = "User " + txt1.Text + " doesnot exist! Signup today by filling the following form";
                        Response.Write("<script>alert('" + msg5 + "')</script>");
                        firstValidated.Enabled = true;
                        middleValidated.Enabled = true;
                        lastValidated.Enabled = true;
                        TextBox1.Enabled = true;
                        TextBox2.Enabled = true;
                        TextBox3.Enabled = true;
                        TextBox4.Enabled = true;
                        TextBox5.Enabled = true;
                        TextBox6.Enabled = true;
                        TextBox7.Enabled = true;
                        TextBox8.Enabled = true;
                        TextBox9.Enabled = true;
                        TextBox10.Enabled = true;

                }

                }

            else
            {
                string msg3 = "User " + txt1.Text + " doesnot exist! Signup today by filling the following form";
                Response.Write("<script>alert('" + msg3 + "')</script>");
                firstValidated.Enabled = true;
                middleValidated.Enabled = true;
                lastValidated.Enabled = true;
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
                TextBox3.Enabled = true;
                TextBox4.Enabled = true;
                TextBox5.Enabled = true;
                TextBox6.Enabled = true;
                TextBox7.Enabled = true;
                TextBox8.Enabled = true;
                TextBox9.Enabled = true;
                TextBox10.Enabled = true;

            }

            body.Style.Add("overflow", "visible");

        }


        protected void back_Click(Object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        
    }
}