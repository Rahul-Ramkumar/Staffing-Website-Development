

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html>

<head>

<title> American Staffing Agency</title>

　

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
    .button {
        width: 200px;
        height: 65px;
        padding: 20px;
        cursor: pointer;
        font-weight: bold;
        background: #0a0a02;
        color: #FCFCFC;
        border-radius: 10px;
        font-size: 100%;
    }
</style>
<script>
    function load() {
        alert("Work in progress")
    }


</script>
</head>

<body style="background-color:floralwhite">
  
    <div class="container-fluid" style="margin-top: -20px; margin-left: -15px; margin-right: -15px;">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="crm.jpg" style="height:550px; width:100%;">
      </div>

      <div class="item">
        <img src="professionalImage.jpg"  style="height:550px; width:100%;">
      </div>
    
      <div class="item">
        <img src="BeFunky-design.png"  style="height:550px; width:100%">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

    
    <div style="background-color:gray; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; color:ghostwhite;">
        <marquee> <h1> American Staffing Agency (ASA) </h1> </marquee>
    </div>


<nav class="navbar navbar-inverse">
  <div style="background-color:black; font-family:Calibri; font-size:large;" class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">HOME</a></li>
        <li class="active"><a href="What-we-do.pdf" target="_blank">ABOUT ASA</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">STAFFING SERVICES <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="admin.aspx" target="_blank"><span style="font-family:Calibri; font-size:large;">Adiministrative Staffing</span></a></li>
          <li><a href="legal.aspx" target="_blank"><span style="font-family:Calibri; font-size:large;">Legal Staffing</span></a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">JOB SEEKER RESOURCES <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="tips.aspx" target="_blank"><span style="font-family:Calibri; font-size:large;">Tips and Techniques</span></a></li>
        </ul>
      </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">EMPLOYER RESOURCES <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="advice.aspx" target ="_blank"><span style="font-family:Calibri; font-size:large;">Employer Advice </span></a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>
    
    <div class="form-group">
    <form  id="form1" runat="server">

<div class="container-fluid">

<div class="row">

<div class="col-sm-10">

<p>

<span style="font-family:Calibri; font-size:large;">The Staffing Solutions's difference is being ‘Smart’. It makes it easier. ‘Smart’ isn’t going by the book or standing on ceremony. It’s innovating, evolving, challenging the status quo and setting new standards. <br /> <br />Our strength is our people. As all-purpose staffing suppliers, capable of supplying quality staff in a variety of industries, we are able to leverage the incredible wealth of individual skills, unique attributes and personal experience that our people possess, and provide you with a complete staffing solution. You will find no one else more dedicated to the provision of service excellence.<br /> <br />Staffing Solutions has amassed a wealth of candidates talent suitable to your need already, we are in the incredible position of being able to pick and choose your staff rather than rely on chance or rushed online advertisements. This smart solution results in a quicker turnaround time and more importantly lowers your costs. <br /> <br /> Renowned as an employment provider of choice, we continue to capture only the best possible candidates further enhancing our capacity to deliver only the best results to you.
</span>
</p>

</div>

<div class="col-sm-2">

<div style="font-size:medium; float:right;" class="form-group">

 <asp:Button class=" form-control button " ID="btn1" Text="CREATE ACCOUNT" OnClick="account_Click" runat="server" />

<br/> <br/>

<asp:Button class=" form-control button " id="btn2" Text="LOG IN" OnClick="Login_Click" runat="server" />
<br />
 <br />
 <span style="color:blue; font-size:large"> <center><asp:HyperLink id="hyperlink1"  NavigateUrl="contact.aspx" Text="Contact Us" runat="server"/> </center> </span> 
    
&nbsp <asp:TextBox class="form-control" style="width:200px; height:40px" id="TextBox1" runat="server" placeholder="Job Title or Category" /> <br />

<asp:TextBox class="form-control" style="width:200px; height:40px" id="TextBox2" runat="server" placeholder="City or Postal Code" /> <br />

<asp:Button class=" form-control button " Text="Search" OnClick="sayHelloFromServer" runat="server" />



    </div>
    <div style="float:right;" ><img  src="img/BBB.jpg" " width="200px" height="200px" /></div>



    

</div>

</div>

</div>
                </form>
</div>

</div>

<footer>

<div class="row">

<div class="col-lg-3">
<asp:AdRotator AdvertisementFile="~/ads.xml" ID="AdRotator1" Height="200" Width="100%" runat="server" />
 </div>

<div class="col-lg-3">
<asp:AdRotator AdvertisementFile="~/ads1.xml" ID="AdRotator2" Height="200" Width="100%" runat="server" />
</div>

<div class="col-lg-3">
<asp:AdRotator AdvertisementFile="~/ads2.xml" ID="AdRotator3" Height="200" Width="100%" runat="server" />
</div>

<div class="col-lg-3">
<asp:AdRotator AdvertisementFile="~/ads3.xml" ID="AdRotator4" Height="200" Width="100%" runat="server" />
</div>

</div>

</footer>

</body>

</html>
