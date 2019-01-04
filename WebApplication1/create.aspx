<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create.aspx.cs" Inherits="WebApplication1.create"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />

    

    <title>American Staffing Agency</title>
 <style>

.l{
    font-size:28px;
    color:black;
}
.button {
    background-color: black;
    border-radius: 4px;
    width:auto;
    color: white;
    padding: 15px 32px;
    text-align: center;
    display: inline-block;
    font-family:  sans-serif;
    font-size: 16px;
    cursor: pointer;
}

.e{
    background-color: black;
    height:40px;
    width:90px;
    border-radius: 4px;
    color: white;
    text-align: center;
    display: inline-block;
    font-family:  sans-serif;
    font-size: 20px;
    cursor: pointer;

}

</style>



</head>
<body id="body" runat="server" style ="background-color:floralwhite; font-family: Arial, Helvetica, sans-serif; overflow:hidden; " >

 
   
    <img id="image1" runat="server" src="create.png" style="width:100%; height:520px;" />
    
        <div class="form-group">
       
        <form  id="form1" runat="server">


<div class="row">

<div class=" col-lg-6">
           <label class="l">Enter Your Email to Check Account Existence</label> 
            
            <asp:TextBox class="form-control" style="width: 100%; height:30px"  id="txt1" runat="server" />
            <asp:RequiredFieldValidator id="RequiredFieldValidator1" ValidationGroup="val1" runat="server" ControlToValidate ="txt1" ErrorMessage="You must enter your email to check account existence" ForeColor="Red">
            </asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator id="RegularExpressionValidator1" ValidationGroup="val1" runat="server" ControlToValidate="txt1" ErrorMessage="You must enter a valid email address" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
            </asp:RegularExpressionValidator>

             </div>

            <div class="col-lg-6">
                <br/>  
               <asp:Button style="align-items:flex-start;"  id ="btn1" class=" form-control button" ValidationGroup="val1" Text="CHECK ACCOUNT EXISTENCE" onclick="Check" runat="server" />
            </div>

    </div>

           
        
        <div id="edit1"  runat="server" style="color:white; background-color:#726d72; font-family: calibri;">
            <h1 >Enter Your Personal Information</h1>
        </div>

     <div>
    <p><span style="color:red;">*</span><span style="color:black;"><b>Required field</b></span><span style="float:right;"> 
        <asp:Button ID="edit"  class=" form-conrol e" Text="Edit" onclick="EditInfo" Causesvalidation="false" runat="server" /></span></p>
       
     
     </div>
       
<div class="row">

<div class="col-lg-4">
        <label><span style="color:red;">*</span>First Name </label> 
        <asp:TextBox class="form-control" style="width: 100%; height:30px; " id="firstValidated" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate ="firstValidated" ErrorMessage="You must enter your first name" ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
    <div class="col-lg-3">
        <label>Middle Initials </label> 
        <asp:TextBox class="form-control" style="width: 100%; height:30px" id="middleValidated" runat="server" />
        </div>
    <div class="col-lg-5">
        <label><span style="color:red;">*</span>Last Name </label> 
        <asp:TextBox class="form-control" style="width:100%; height:30px" id="lastValidated" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate ="lastValidated" ErrorMessage="You must enter your last name" ForeColor="Red">
        </asp:RequiredFieldValidator>
        
        </div>
    </div>
    <br/>
    
    <div class="row">

<div class="col-lg-6">
        <label><span style="color:red;">*</span>Email Address 1 </label> 
        <asp:TextBox class="form-control" style="width:100%; height:30px; " id="TextBox1" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate ="TextBox1" ErrorMessage="You must enter your email address" ForeColor="Red">
        </asp:RequiredFieldValidator> <br />
        <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="You must enter a valid email address" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
        </asp:RegularExpressionValidator>

    </div>
    <div class="col-lg-6">
        <label>Email Address 2 </label> 
        <asp:TextBox class="form-control" style="width:100%; height:30px" id="TextBox2" runat="server" />
        <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="You must enter a valid email address" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
        </asp:RegularExpressionValidator>
        </div>
    </div>
       <br/>
          <div class="row">

            

<div class="col-lg-8">
        <label><span style="color:red;">*</span>Home Street Address (no P.O. boxes) </label> 
        <asp:TextBox class="form-control" style="width: 100%; height:30px; " id="TextBox3" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate ="TextBox3" ErrorMessage="You must enter your address" ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
    <div class="col-lg-4">
        <label>Apt# (if applicable) </label> 
        <asp:TextBox class="form-control" style="width:100%; height:30px" id="TextBox4" runat="server" />
        </div>
    </div>

        <br/>

    <div class="row">

<div class="col-lg-4">
        <label><span style="color:red;">*</span>City </label> 
        <asp:TextBox class="form-control" style="width: 100%; height:30px; " id="TextBox5" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate ="TextBox5" ErrorMessage="You must enter your city" ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
    <div class="col-lg-4">
        <label><span style="color:red;">*</span>State </label> 
        <asp:TextBox class="form-control" style="width: 100%; height:30px" id="TextBox6" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate ="TextBox6" ErrorMessage="You must enter your state" ForeColor="Red">
        </asp:RequiredFieldValidator>
        </div>
    <div class="col-lg-4">
        <label><span style="color:red;">*</span>Zip </label> 
        <asp:TextBox class="form-control" style="width:100%; height:30px" id="TextBox7" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate ="TextBox7" ErrorMessage="You must enter your zip" ForeColor="Red">
        </asp:RequiredFieldValidator>
        
        </div>
    </div>

       <br />
<div class="row">

<div class="col-lg-4">
        <label><span style="color:red;">*</span>Home Phone (with area code) </label> 
        <asp:TextBox class="form-control" style="width: 100%; height:30px; " id="TextBox8" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate ="TextBox8" ErrorMessage="You must enter your home phone number" ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
<div class="col-lg-8">
    <label><span style="color:red;">*</span>Password </label> 
        <asp:TextBox class="form-control" TextMode="password" style="width: 100%;  height:30px; " id="TextBox10" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator11" runat="server" ControlToValidate ="TextBox10" ErrorMessage="You must enter password" ForeColor="Red">
        </asp:RequiredFieldValidator>

</div>
    </div>
    <br />

        <label><span style="color:red;">*</span>Job Experience </label> 
        <asp:TextBox class="form-control " TextMode="multiline" width="100%" Rows="6"  id="TextBox9" runat="server" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server" ControlToValidate ="TextBox9" ErrorMessage="This is required field" ForeColor="Red">
        </asp:RequiredFieldValidator>

    <br/>  
    <div class="row">
    <div class="col-lg-4">
 

   <asp:Button class=" form-control button" ID="btnChange" Text="SAVE ACCOUNT INFORMATION" onclick="Loginfo" runat="server" /> 
      
               
            </div>
        <div class="col-lg-4">
            </div>
        <div class="col-lg-4" >
                
               <asp:Button style="float:right;" Causesvalidation="false" class=" form-control button" Text="< BACK TO MAIN PAGE" onclick="back_Click" runat="server" />
            </div>
    </div>
             </form>
    </div>
           

 
   
 
</body>
</html>
