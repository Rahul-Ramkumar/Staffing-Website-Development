using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.App_Code
{
    public class UserInfo
    {
            String firstName;
            String middleInitials;
            String lastName;
            String emailAddress1; /*User's primary key*/
            String emailAddress2;
            String streetAddress;
            String aptNo;
            String city;
            String state;
            String zip;
            String homePhone;
            String password;
            String jobExperience;



            public String FirstName
            {
                get { return firstName; }
                set { firstName = value; }
            }

            public String MiddleName
            {
                get { return middleInitials; }
                set { middleInitials = value; }
            }
            public String LastName
            {
                get { return lastName; }
                set { lastName = value; }
            }
            public String EmailAddress1
            {
                get { return emailAddress1; }
                set { emailAddress1 = value; }
            }
            public String EmailAddress2
            {
                get { return emailAddress2; }
                set { emailAddress2 = value; }
            }
            public String Address
            {
                get { return streetAddress; }
                set { streetAddress = value; }
            }
            public String Apartment
            {
                get { return aptNo; }
                set { aptNo = value; }
            }
            public String City
            {
                get { return city; }
                set { city = value; }
            }
            public String State
            {
                get { return state; }
                set { state = value; }
            }

            public String Zip
            {
                get { return zip; }
                set { zip = value; }
            }

            public String HomePhone
            {
                get { return homePhone; }
                set { homePhone = value; }
            }

            public String Password
            {
                get { return password; }
                set { password = value; }
            }
            public String JobExperience
            {
                get { return jobExperience; }
                set { jobExperience = value; }
            }
        }
}