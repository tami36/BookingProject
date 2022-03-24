<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hotel.aspx.cs" Inherits="BookingProject.Hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            box-sizing: border-box
        }

        body {
            color: grey
        }

        #sidebar {
            width: 20%;
            padding: 10px;
            margin: 0;
            float: left
        }

        #products {
            width: 80%;
            padding: 10px;
            margin: 0;
            float: right
        }

        ul {
            list-style: none;
            padding: 5px
        }

        li a {
            color: darkgray;
            text-decoration: none
        }

            li a:hover {
                text-decoration: none;
                color: darksalmon
            }

        .fa-circle {
            font-size: 20px
        }

        #red {
            color: #e94545d7
        }

        #teal {
            color: rgb(69, 129, 129)
        }

        #blue {
            color: #0000ff
        }

        .card {
            width: 250px;
            display: inline-block;
            height: 300px
        }

        .card-img-top {
            width: 250px;
            height: 210px
        }

        .card-body p {
            margin: 2px
        }

        .card-body {
            padding: 0;
            padding-left: 2px
        }

        .filter {
            display: none;
            padding: 0;
            margin: 0
        }

        @media(min-width:991px) {
            .navbar-nav {
                margin-left: 35%
            }

            .nav-item {
                padding-left: 20px
            }

            .card {
                width: 190px;
                display: inline-block;
                height: 300px
            }

            .card-img-top {
                width: 188px;
                height: 210px
            }

            #mobile-filter {
                display: none
            }
        }

        @media(min-width:768px) and (max-width:991px) {
            .navbar-nav {
                margin-left: 20%
            }

            .nav-item {
                padding-left: 10px
            }

            .card {
                width: 230px;
                display: inline-block;
                height: 300px;
                margin-bottom: 10px
            }

            .card-img-top {
                width: 230px;
                height: 210px
            }

            #mobile-filter {
                display: none
            }
        }

        @media(min-width:568px) and (max-width:767px) {
            .navbar-nav {
                margin-left: 20%
            }

            .nav-item {
                padding-left: 10px
            }

            .card {
                width: 205px;
                display: inline-block;
                height: 300px;
                margin-bottom: 10px
            }

            .card-img-top {
                width: 203px;
                height: 210px
            }

            .fa-circle {
                font-size: 15px
            }

            #mobile-filter {
                display: none
            }
        }

        @media(max-width:567px) {
            .navbar-nav {
                margin-left: 0%
            }

            .nav-item {
                padding-left: 10px
            }

            #sidebar {
                width: 100%;
                padding: 10px;
                margin: 0;
                float: left
            }

            #products {
                width: 100%;
                padding: 5px;
                margin: 0;
                float: right
            }

            .card {
                width: 230px;
                display: inline-block;
                height: 300px;
                margin-bottom: 10px;
                margin-top: 10px
            }

            .card-img-top {
                width: 230px;
                height: 210px
            }

            .list-group-item {
                padding: 3px
            }

            .offset-1 {
                margin-left: 8%
            }

            .filter {
                display: block;
                margin-left: 70%;
                margin-top: 2%
            }

            #sidebar {
                display: none
            }

            #mobile-filter {
                padding: 10px
            }
        }

       /* // clander//*/
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
    <br />
    <br />
    <br />

    <div class="filter">
        <button class="btn btn-default" type="button" data-toggle="collapse" data-target="#mobile-filter" aria-expanded="false" aria-controls="mobile-filter">Filters<span class="fa fa-filter pl-1"></span></button>
    </div>

    <section id="sidebar">
        <div>
            <h6 class="p-1 border-bottom">Types of accommodation</h6>
            <ul>
                <li><a href="#">Hotel</a></li>
                <li><a href="#">Apartment</a></li>
                <li><a href="#">Resort</a></li>
                <li><a href="#">villa</a></li>
                <li><a href="#">Cabins</a></li>
                <li><a href="#">Glamping</a></li>
                <li><a href="#">B&B</a></li>
            </ul>
        </div>
        <div>
            <h6 class="p-1 border-bottom">Filter By</h6>
            <p class="mb-2">Country</p>
            <ul class="list-group">
                <li class="list-group-item list-group-item-action mb-2 rounded"><a href="#"><span class="fa fa-circle pr-1" id="red"></span>Red </a></li>
                <li class="list-group-item list-group-item-action mb-2 rounded"><a href="#"><span class="fa fa-circle pr-1" id="teal"></span>Teal </a></li>
                <li class="list-group-item list-group-item-action mb-2 rounded"><a href="#"><span class="fa fa-circle pr-1" id="blue"></span>Blue </a></li>
            </ul>
        </div>
        <div>
            <h6>City</h6>
            <div class="ml-md-2">
                <div class="form-inline border rounded p-sm-2 my-2">
                    <input type="radio" name="type" id="boring">
                    <label for="boring" class="pl-1 pt-sm-0 pt-1">Boring</label>
                </div>
                <div class="form-inline border rounded p-sm-2 my-2">
                    <input type="radio" name="type" id="ugly">
                    <label for="ugly" class="pl-1 pt-sm-0 pt-1">Ugly</label>
                </div>
                <div class="form-inline border rounded p-md-2 p-sm-1">
                    <input type="radio" name="type" id="notugly">
                    <label for="notugly" class="pl-1 pt-sm-0 pt-1">Not Ugly</label>
                </div>
            </div>


        </div>
    </section>
    <section id="products">

        <div class="container">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <itemtemplate>
            <div class="col-lg-3 col-sm-4 ">
                <asp:Image ID="Image1" runat="server" class="card-img-top"  ImageUrl='<%# Eval ("Picture","Picture/{0}") %>' alt="Card image cap"/>
                    <div class="card-body">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval ("Country") %>'></asp:Label>
                        <p>$90</p> <span class="fa fa-circle" id="red"></span> <span class="fa fa-circle" id="teal"></span> <span class="fa fa-circle" id="blue"></span>
                    </div>
                </div>
        
                </itemtemplate>
                </asp:Repeater>
            </div>
        </div>

    </section>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
