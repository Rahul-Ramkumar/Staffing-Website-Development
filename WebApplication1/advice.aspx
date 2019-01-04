<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="advice.aspx.cs" Inherits="WebApplication1.WebForm5" %>

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
    width:auto;
    height:auto;
    color: white;
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
            <img src="Advice.jpg" style="width:100%; height:550px;" />
        </div>
        <br />
        <div style="font-family: Calibri;">
            <div style="font-size: 30px;"><b>How the Economy Affects the Talent Pool and Your Employees</b></div>
            <p>
                <span style="font-family: Calibri; font-size: large">The recession has forced companies to downsize and let go some of their top employees. But companies who aren't feeling the same effects are recruiting those talented individuals for their own staff. As the recession continues and unemployment rises, the talent pool is growing for recruiters and staffing employment agencies alike. Similar to the housing industry, it's a buyer's market and companies are able to hire accomplished employees for less than before.<br />
                    <br />
                    According to the US Labor Department, before the recession there were two unemployed people for every open position. As of the 4th quarter in 2009, there were more than six unemployed people for every position. Those are some staggering numbers! But for hiring companies, that means two very important advantages; the eligible talent pool is increasing and the chances of finding someone with the exact skills and experience have also increased.<br />
                    <br />
                    The recession has also had on affect on employees who haven't experienced downsizing. Because the idea of downsizing is at the forefront of most people's minds, productivity has increased. Employees who are concerned about losing their jobs are working harder to avoid being laid off or replaced by someone who is more qualified or requires fewer benefits.<br />
                    <br />
                    Although everyone is pulling for the economy to quickly recover, it's important to understand how the dynamic s of the job market change in response to the increasing unemployment rate. We are not advising employers to take advantage when bargaining with potential candidates or to keep employees in constant fear of a layoff to increase productivity. We are recommending that you know exactly what you want to enhance your current team and possibly relieve overwhelming workloads for employees. Your ideal candidate is out there, waiting to be an asset on your team. So when posting a description or using a staffing employment agency, focus on providing very specific list of requirements that include:
                    </span>
            </p> <br />
                    <div class="container-fluid">

                        <div style="font-family: Calibri; font-size: large" class="row">
                            <div class="col-sm-6">
                                <ul>
                                    <li>Position Title</li>
                                    <li>Salary Range</li>
                                    <li>Pay Period</li>
                                    <li>Position Start Date</li>
                                </ul>
                                </div>
                                <div class="col-sm-6">
                                <ul>
                                    <li>Position Length</li>
                                    <li>Duties/Responsibilities</li>
                                    <li>Necessary Skills</li>
                                    <li>Work Location</li>
                                </ul>
                            </div>

                    Be as specific as possible when creating a list of candidate requirements. The more specific you are, the more likely and more quickly your requirements will be met.
                </div>
                </div>
            <br />
            <br />
            <div align="center"><asp:Button class=" form-control button" Text="BACK" onclick="back_Click" runat="server" /></div>
        </div>
        </div>
    </form>
</body>
</html>
