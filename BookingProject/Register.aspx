<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"  UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BookingProject.Register" %>
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
                        <img src="Picture/plane.png" alt=""/>
                        <h3>Welcome.</h3>
                        <input type="submit" name="" value="Login"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <asp:Button ID="hometab"  data-toggle="tab" href="#home"   role="tab" aria-controls="home" aria-selected="true" runat="server" Text="User" OnClick="hometab_Click"/>
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Auditor</a>
                            </li>
                            <li class="nav-item">
                                 <asp:Button ID="Button1" runat="server" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false" Text="Costumer" OnClick="Costumer" />
                                <a class="nav-link" id="profiletab" >Auditi</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
    <asp:Panel ID="Panel1" runat="server" Visible="true">

         <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Apply as a Auditor</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                          <asp:TextBox ID="FirstName" runat="server" name="FirstName" class="form-control" placeholder="aaaaa *"></asp:TextBox>   

                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="LastName" runat="server" name="LastName" class="form-control" placeholder="Last Name *"></asp:TextBox> 

                                        </div>
                                        <div class="form-group">
                                             <asp:TextBox ID="Pass" runat="server" name="Password" class="form-control" placeholder="Password *"></asp:TextBox> 

                                        </div>
                                        <div class="form-group">
                                             <asp:TextBox ID="ConfirmPassword" runat="server"  name="ConfirmPassword" class="form-control"  placeholder="Confirm Password *"></asp:TextBox>  

                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="Email" runat="server" name="Email" class="form-control" placeholder="Email *"></asp:TextBox> 
 
                                        </div>
                                        <div class="form-group">
                                              <asp:TextBox ID="PhoneNumber" runat="server" name="txtEmpPhone" class="form-control" placeholder="Phone Number *"></asp:TextBox> 
 
                                        </div>
                                        <div class="form-group">
                                          <asp:Button  ID="Button2" runat="server" Text="Register" class="btnRegister"   OnClick="Button1_Click"/>
                                        <br />
                                        <br />
                                       <br />
                                        <br />
                                            <asp:Label ID="Error2" runat="server" Text="" ForeColor="#33cccc"></asp:Label>

                                    </div>
                                </div>
                            </div>
                        </div>

    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server"  Visible="false">
   <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Apply as a Auditor</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa*" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control"  placeholder="Confirm Password *" value="" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Phone Number *" value="" />
                                        </div>
                                        <div class="form-group">
                                        <input type="submit" class="btnRegister"  value="Register"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                          
</asp:Panel>
                         
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>
