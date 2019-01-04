<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>American Staffing Agency</title>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
.button {
    background-color: black;
    border-radius: 5px;
    color: white;
    width:auto;
    height:auto;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display:compact;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>
<body style ="background-color:floralwhite;">
    <form id="form1" runat="server">
        <div>
            <img src="Admin.jpg" style="width:100%; height:550px;" />
        </div>
        <br />
        <div style="font-family: Calibri;">
            <p> <span style="font-family:Calibri; font-size:large">Staffing Solution's administrative recruitment services offer a variety of positions for job seekers looking for temporary and direct hire positions. 
        Whether you're searching for a receptionist position or a sales job, our staffing and recruiting professionals offer a comprehensive list of employment opportunities throughout the country.
        Our vast inventory of jobs can be time consuming. Here are a few tips to consider when starting your search: </span></p>
            <br />
            <div style="background-color:#726d72; font-size: 30px; color: white">
                Know your requirements
            </div>
            <p>
                <span style="font-family: Calibri; font-size: large">Every administrative and clerical job listing includes top line information including location and salary details. 
        If any of this information does not match your requirements, move on to the next listing. </span></p>
                    <br />
                    <div style="background-color:#726d72; font-size: 30px; color: white">
                        Know your credentials
                    </div>
                    <p>
                        <span style="font-family: Calibri; font-size: large">If your skills are not in line with the job's requirements then find another opportunity more suitable. 
        Staffing Now wants to place you in the best position for your needs. 
        Look for a position that matches your previous line of work but will also challenge you to improve your skills Know your goals </span> </p>
        <br />
                            
                            <div style="background-color:#726d72; font-size: 30px; color: white">
                                Know your goals
                            </div>
                            <p>
                                <span style="font-family: Calibri; font-size: large">Our administrative staffing services are successful because we effectively align the needs of our employers and job seekers.
        Apply for jobs that promote your current needs and future career goals. 
        Reference our Job Seeker Resources section on more tips and advice on interviews, resumes, and career building.
        Search open positions in the following areas.
        Or, use the Search for Jobs tool at the top of the page to refine your search.</span>
                            </p>

                            <br />
                            <br />
                            <div class="container-fluid">

                                <div style="font-family: Calibri; font-size: large" class="row">
                                    <div class="col-sm-6">
                                        <ul>
                                            <li>Billing Clerk jobs</li>
                                            <li>Executive Assistant jobs</li>
                                            <li>Human Resources jobs</li>
                                            <li>Legal General office Clerk jobs</li>
                                            <li>Mortgage Assistant jobs</li>
                                        </ul>
                                    </div>

                                    <div class="col-sm-6">
                                        <ul>
                                            <li>Operations Manager jobs</li>
                                            <li>Project Coordinator jobs</li>
                                            <li>Recruiter jobs</li>
                                            <li>Shipping/Receiving jobs</li>
                                            <li>Telemarketer jobs</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div align="center"><asp:Button class=" form-control button" Text="BACK" onclick="back_Click" runat="server" /></div>
        </div>
    </form>
</body>
</html>
