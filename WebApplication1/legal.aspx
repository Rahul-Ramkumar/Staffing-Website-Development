<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="legal.aspx.cs" Inherits="WebApplication1.WebForm3" %>

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
<body style="background-color:floralwhite">
    <form id="form1" runat="server">
        <div>
            <img src="Legal.jpg" style="width:100%; height:550px;" />
        </div>
        <br />
        <div style="font-family:Calibri; font-size:large">
            SNI Legal® recruitment services place professionals with legal experience at law firms and corporate law departments in both direct-hire and contract positions.
            Our employers are looking for legal recruitment to help with everyday case loads as well as temporary help for special cases.
            Job seekers of all legal backgrounds and skill levels are valuable for our legal staffing services. 
            ASA Legal staffing professionals focus on positioning legal professionals on a contract and contract-to-hire, as well as servicing job-seekers and employers with direct-hire legal roles.
        </div>
        <br />
<div class="container-fluid">

<div style="font-family:Calibri; font-size:large" class="row">
 <div class="col-sm-6">      
        <ul>
            <li>Attorney jobs</li>
            <li>Case Clerk jobs </li>
            <li>Law Librarian jobs</li>
            <li>Lease Administrator jobs </li>
            <li>Legal General Office Clerk jobs</li>
       </ul>
 </div>

 <div class="col-sm-6">
            <ul>
            <li>Legal Intern jobs </li>
            <li>Litigation Support jobs</li>
            <li>Paralegal jobs</li>
            <li>Records Clerk jobs</li>
            <li>Title Clerk./Closers jobs</li>
            </ul>
</div> 
</div>
</div>
    
     <br /> <br />
     <div align="center"><asp:Button class=" form-control button" Text="BACK" onclick="back_Click" runat="server" /></div>
     
    </form>
</body>
</html>
