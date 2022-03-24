<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BookingProject.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
    <style>
        .register{
    background: -webkit-linear-gradient(left, #2f84d4, #79bfd4);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%; 
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #87CEFA	;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #87CEFA	;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #000000;
    border: 2px solid #87CEFA;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="Picture/plane.png"  alt=""/>
                        <h3>Welcome</h3>
                        <asp:Button ID="Button2" runat="server" Text="Login" href="Login.aspx"/>
                        <br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">customer</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">manager</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Apply as a customer</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group"> 
                                            <asp:TextBox ID="FirstName" runat="server" name="FirstName" class="form-control" placeholder="First Name *"></asp:TextBox>   
                                            <asp:RequiredFieldValidator ID="RequiredFirstName" runat="server" ErrorMessage="Required first name" ControlToValidate="FirstName" ForeColor="#33cccc" ></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="LastName" runat="server" name="LastName" class="form-control" placeholder="Last Name *"></asp:TextBox> 
                                            <asp:RequiredFieldValidator ID="RequiredLastName" runat="server" ErrorMessage="Required last name" ControlToValidate="LastName" ForeColor="#33cccc"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="Pass" runat="server" name="Password" class="form-control" placeholder="Password *"></asp:TextBox> 
                                            <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Required password" ControlToValidate="Pass" ForeColor="#33cccc"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="ComparePass" runat="server" ErrorMessage="The password is not match to the confirm password" ControlToValidate="Pass" ControlToCompare="ConfirmPassword" ForeColor="#33cccc"></asp:CompareValidator>
                                        </div>
                                       
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="ConfirmPassword" runat="server"  name="ConfirmPassword" class="form-control"  placeholder="Confirm Password *"></asp:TextBox>  
                                            <asp:RequiredFieldValidator ID="RequiredConfirmPassword" runat="server" ErrorMessage="Required confirmpassword" ControlToValidate="ConfirmPassword" ForeColor="#33cccc"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="Email" runat="server" name="Email" class="form-control" placeholder="Email *"></asp:TextBox> 
                                            <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ErrorMessage="Required email" ControlToValidate="Email" ForeColor="#33cccc"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionEmail" runat="server" ErrorMessage="Invalid email address" ControlToValidate="Email" ValidationExpression="\w+\@\w+\.com" ForeColor="#33cccc"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="PhoneNumber" runat="server" name="txtEmpPhone" class="form-control" placeholder="Phone Number *"></asp:TextBox> 
                                            <asp:RequiredFieldValidator ID="RequiredPhoneNumber" runat="server" ErrorMessage="Required phone number" ControlToValidate="PhoneNumber" ForeColor="#33cccc"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionNumber" runat="server" ErrorMessage="Invalid phone number" ControlToValidate="PhoneNumber" ValidationExpression="[0-9]{10}" ForeColor="#33cccc"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                             <div class="control-group">
                                     <!-- Button -->
                                    <div class="controls">          
                                        <asp:Button  ID="Button1" runat="server" Text="Register" class="btnRegister"   OnClick="Button1_Click"/>
                                        <br />
                                        <br />
                                       <br />
                                        <br />
                                            <asp:Label ID="Error2" runat="server" Text="" ForeColor="#33cccc"></asp:Label>

                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                           
        </div>
     </div>
     </div>
     </div>
     </div>
</asp:Content>
