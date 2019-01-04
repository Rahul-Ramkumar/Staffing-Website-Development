<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication1.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <meta charset="utf-8"/>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head runat="server">
    <title>American Staffing Agency</title>
   <style> 
    .button {
    background-color: black;
    border: none;
    height:auto;
    width:auto;
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
    table,th,td {
  border : 2px solid black;
  border-collapse: collapse;
  width:100%;
  border-color:lightblue;
  font-family:Calibri;
  font-size:20px;
   
}
th,td {
  padding: 5px;
  width: 50%;
}

tr {
    padding: 10px;
}
    </style>
</head>

<script>
    function load() {
        alert("Work in progress")
    }
       window.onload = function loadDoc() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                myFunction(this);
            }
        };

        xhttp.open("GET", "Contact.xml", true);
        xhttp.send();
         };

     function myFunction(xml) {
  var xmlDoc = xml.responseXML;
  var x = xmlDoc.getElementsByTagName("info");
      document.getElementById("demo").innerHTML = "<tr> <td>" + "Mailing Address" + "</td> <td>" + x[0].getAttribute("mailing-address") + "</td> </tr>" + "<tr> <td>" + "Toll Free Phone Number" + "</td><td>" + x[0].getAttribute("toll-free-number") + "</td></tr>" + "<tr><td>" + "Direct Phone Number" + "</td><td>" + x[0].getAttribute("direct-phone-number") + "</td> </tr>" + "<tr> <td>" + "Email Address" + "</td> <td>" + x[0].getAttribute("email") + "</td> </tr>" + "<tr> <td>" + "Web Site" + "</td> <td>" + x[0].getAttribute("website") + "</td> </tr>";
      
     };
</script>

<body>
    <form id="form1" runat="server" style="background-color:floralwhite">
        <div>
            <img src="Contact.jpg" style="width:100%; height:550px;" />
        </div>
        <div style="background-color:#726d72; color:white; font-size:30px; font-family:Calibri;">
        <a href="Default.aspx"><span style="color:white;">HOME</span></a> | CONTACT US
        </div>

<div>
        <table  id="demo"> </table>


    
    </div>

        <div style="text-align:center; font-size:30px; font-family:Calibri;">
            <span style="color:blue">You must be logged in to send us a message</span> 
            <br /> <span style="color:red;">Please type your message below and click the Send Message button.</span>
        </div>
        <div><asp:TextBox class="form-control" TextMode="multiline" width="100%" Rows="8" id="TextBox1" runat="server" /></div>
        <div align="center">
            <asp:Button class=" form-control button " Text="Send Message" onclick="Send_Message" runat="server" />
        </div>
    </form>
</body>
</html>