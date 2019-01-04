<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>American Staffing Agency</title>
   <style> 
    .button {
    background-color: black;
    border: none;
    border-radius: 5px;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:orange; font-size:30px; font-family:Calibri;">
        <a href="WebForm1.aspx">HOME</a> | CONTACT US
        </div>
        <div style="text-align:center; font-size:30px; font-family:Calibri;">
            <span style="color:blue">You must be logged in to send us a message</span> 
            <br /> <span style="color:red;">Please type your message below and click the Send Message button.</span>
        </div>
        <div><textarea id="sub" placeholder="" style="height:200px; width:100%;" disabled></textarea></div>
        <div align="center">
            <input  type="button" class="button" value="Send Message">
        </div>
    </form>
</body>
</html>
