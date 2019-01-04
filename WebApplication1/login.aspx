<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />

<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>AMERICAN STAFFING AGENCY</title>

<style>
    .l{
    background-color: black;
    height:60px;
    width:200px;
    border-radius: 6px;
    padding: 15px 32px;
    color: white;
    text-align: center;
    display: inline-block;
    font-family:  sans-serif;
    font-size: 20px;
    cursor: pointer;

}
</style>



</head>


<body style ="background-color:floralwhite; font-family: Arial, Helvetica, sans-serif;">
    
        <img src="login.png" style="width:100%; height:550px;" />
    <div class="form-group">
    <form id="form1" runat="server">
        <div class="clearfix" style="height:10px;"></div>
            <asp:TextBox class="form-control" style="width:100%; height:40px" id="TextBox1" onclick="make_blank();" runat="server" placeholder="Email" />
            <asp:RequiredFieldValidator id="RequiredFieldValidator1"  runat="server" ControlToValidate ="TextBox1" ErrorMessage="You must enter your email address"  ForeColor="Red">
            </asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="You must enter a valid email address" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
            </asp:RegularExpressionValidator>

            <div class="clearfix" style="height:10px;"></div>
            <asp:TextBox class="form-control" TextMode="Password" style="width:100%; height:40px" id="TextBox2" runat="server"  placeholder="Password" />
            <asp:RequiredFieldValidator id="RequiredFieldValidator2"  runat="server" ControlToValidate ="TextBox2" ErrorMessage="You must enter your password" ForeColor="Red">
            </asp:RequiredFieldValidator><br />
       <div class="clearfix" style="height:10px;"></div>
        <div class="container-fluid" style="margin-left: -15px;">
        <div class="row">
            <div class="col-lg-4">
            <asp:Button class=" form-control l" Text="LOGIN" OnClick="Signin" runat="server" />
            <asp:Button class=" form-control l" CausesValidation="false" Text="CANCEL" onclick="cancel_Click" runat="server" />
            </div>
            <div class="col-lg-8">
            <span style="color:blue; font-size:large"> <asp:HyperLink id="hyperlink1"  NavigateUrl="forgot.aspx" Text="Forgot your username or password?" runat="server"/> </span>
            <div class="clearfix" style="height:2px;"></div>
            <span style="color:blue; font-size:large"> <asp:HyperLink id="hyperlink2"  NavigateUrl="create.aspx" Text="Don't have account? Sign up today!" runat="server"/> </span>
             </div>
           
        </div>
        </div>
    </form>
        </div>
</body>
</html>
