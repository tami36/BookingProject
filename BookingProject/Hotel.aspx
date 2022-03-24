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
    <style>
        .icon-control {
    margin-top: 5px;
    float: right;
    font-size: 80%;
}



.btn-light {
    background-color: #fff;
    border-color: #e4e4e4;
}

.list-menu {
    list-style: none;
    margin: 0;
    padding-left: 0;
}
.list-menu a {
    color: #343a40;
}

.card-product-grid .info-wrap {
    overflow: hidden;
    padding: 18px 20px;
}

[class*='card-product'] a.title {
    color: #212529;
    display: block;
}

.card-product-grid:hover .btn-overlay {
    opacity: 1;
}
.card-product-grid .btn-overlay {
    -webkit-transition: .5s;
    transition: .5s;
    opacity: 0;
    left: 0;
    bottom: 0;
    color: #fff;
    width: 100%;
    padding: 5px 0;
    text-align: center;
    position: absolute;
    background: rgba(0, 0, 0, 0.5);
}
.img-wrap {
    overflow: hidden;
    position: relative;
}
/*פילטר*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <br />
    <br />
    <br />
    <br />
    <div class="container">
	<div class="row">
	<aside class="col-md-3">
		
<div class="card">
	<article class="filter-group">
		<header class="card-header">
			<a href="#" data-toggle="collapse" data-target="#collapse_1" aria-expanded="true" class="">
				<i class="icon-control fa fa-chevron-down"></i>
				<h6 class="title">Product type</h6>
			</a>
		</header>
		<div class="filter-content collapse show" id="collapse_1" style="">
			<div class="card-body">
				<form class="pb-3">
				<div class="input-group">
				  <input type="text" class="form-control" placeholder="Search">
				  <div class="input-group-append">
				    <button class="btn btn-light" type="button"><i class="fa fa-search"></i></button>
				  </div>
				</div>
				</form>
				
				<ul class="list-menu">
				<li><a href="#">Hotel  </a></li>
				<li><a href="#">Apartment </a></li>
				<li><a href="#">Resort  </a></li>
				<li><a href="#">villa  </a></li>
				<li><a href="#">Cabins </a></li>
				<li><a href="#">Glamping</a></li>
				<li><a href="#">B&B </a></li>
				</ul>

			</div> <!-- card-body.// -->
		</div>
	</article> <!-- filter-group  .// -->
	<article class="filter-group">
		<header class="card-header">
			<a href="#" data-toggle="collapse" data-target="#collapse_2" aria-expanded="true" class="">
				<i class="icon-control fa fa-chevron-down"></i>
				<h6 class="title">Popular Filters </h6>
			</a>
		</header>
		<div class="filter-content collapse show" id="collapse_2" style="">
			<div class="card-body">
				<label class="custom-control custom-checkbox">
				  <input type="checkbox"  class="custom-control-input">
				  <div class="custom-control-label">Breakfast Included
				  	<b class="badge badge-pill badge-light float-right">-+120</b>  </div>
				</label>
				<label class="custom-control custom-checkbox">
				  <input type="checkbox"  class="custom-control-input">
				  <div class="custom-control-label">Indoor pool
				  	<b class="badge badge-pill badge-light float-right">15</b>  </div>
				</label>
				<label class="custom-control custom-checkbox">
				  <input type="checkbox"  class="custom-control-input">
				  <div class="custom-control-label">Wonderful: 9+
				  	<b class="badge badge-pill badge-light float-right">35</b> </div>
				</label>
				<label class="custom-control custom-checkbox">
				  <input type="checkbox" class="custom-control-input">
				  <div class="custom-control-label">Water park 
				  	<b class="badge badge-pill badge-light float-right">89</b> </div>
				</label>
				<label class="custom-control custom-checkbox">
				  <input type="checkbox" class="custom-control-input">
				  <div class="custom-control-label">Hotels
				  	<b class="badge badge-pill badge-light float-right">30</b>  </div>
				</label>
	</div> <!-- card-body.// -->
		</div>
	</article> <!-- filter-group .// -->
	<article class="filter-group">
		<header class="card-header">
			<a href="#" data-toggle="collapse" data-target="#collapse_3" aria-expanded="true" class="">
				<i class="icon-control fa fa-chevron-down"></i>
				<h6 class="title">Price range </h6>
			</a>
		</header>
		<div class="filter-content collapse show" id="collapse_3" style="">
			<div class="card-body">
				<input type="range" class="custom-range" min="0" max="100" name="">
				<div class="form-row">
				<div class="form-group col-md-6">
				  <label>Min</label>
				  <input class="form-control" placeholder="$0" type="number">
				</div>
				<div class="form-group text-right col-md-6">
				  <label>Max</label>
				  <input class="form-control" placeholder="$1,0000" type="number">
				</div>
				</div> <!-- form-row.// -->
				<button class="btn btn-block btn-primary">Apply</button>
			</div><!-- card-body.// -->
		</div>
	</article> <!-- filter-group .// -->
	<article class="filter-group">
		<header class="card-header">
			<a href="#" data-toggle="collapse" data-target="#collapse_4" aria-expanded="true" class="">
				<i class="icon-control fa fa-chevron-down"></i>
				<h6 class="title">Fun Things To Do </h6>
			</a>
		</header>
		<div class="filter-content collapse show" id="collapse_4" style="">
			<div class="card-body">
			  <label class="checkbox-btn">
			    <input type="checkbox">
			    <span class="btn btn-light"> Hiking </span>
			  </label>

			  <label class="checkbox-btn">
			    <input type="checkbox">
			    <span class="btn btn-light"> Massage </span>
			  </label>

			  <label class="checkbox-btn">
			    <input type="checkbox">
			    <span class="btn btn-light"> Spa </span>
			  </label>

			  <label class="checkbox-btn">
			    <input type="checkbox">
			    <span class="btn btn-light"> Beach </span>
			  </label>

				 <label class="checkbox-btn">
			    <input type="checkbox">
			    <span class="btn btn-light"> Kids' club </span>
			  </label>
		</div><!-- card-body.// -->
		</div>
	</article> <!-- filter-group .// -->
	<article class="filter-group">
		<header class="card-header">
			<a href="#" data-toggle="collapse" data-target="#collapse_5" aria-expanded="false" class="">
				<i class="icon-control fa fa-chevron-down"></i>
				<h6 class="title">More filter </h6>
			</a>
		</header>
		<div class="filter-content collapse in" id="collapse_5" style="">
			<div class="card-body">
				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" checked="" class="custom-control-input">
				  <div class="custom-control-label">Any condition</div>
				</label>

				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" class="custom-control-input">
				  <div class="custom-control-label">Brand new </div>
				</label>

				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" class="custom-control-input">
				  <div class="custom-control-label">Used items</div>
				</label>

				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" class="custom-control-input">
				  <div class="custom-control-label">Very old</div>
				</label>
			</div><!-- card-body.// -->
		</div>
	</article> <!-- filter-group .// -->
</div> <!-- card.// -->

	</aside>
	<main class="col-md-9">

<header class="border-bottom mb-4 pb-3">
		<div class="form-inline">
			<span class="mr-md-auto">32 Items found </span>
			<select class="mr-2 form-control">
				<option>Latest items</option>
				<option>Trending</option>
				<option>Most Popular</option>
				<option>Cheapest</option>
			</select>
			<div class="btn-group">
				<a href="#" class="btn btn-outline-secondary" data-toggle="tooltip" title="" data-original-title="List view"> 
					<i class="fa fa-bars"></i></a>
				<a href="#" class="btn  btn-outline-secondary active" data-toggle="tooltip" title="" data-original-title="Grid view"> 
					<i class="fa fa-th"></i></a>
			</div>
		</div>
</header><!-- sect-heading -->

<div class="row">
	<div class="col-md-4">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> NEW </span>
								<img src="http://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/items/7.jpg" class="img-fluid">
				<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="#" class="title">Great item name goes here</a>
					<div class="price-wrap mt-2">
						<span class="price">$1280</span>
						<del class="price-old">$1980</del>
					</div> <!-- price-wrap.// -->
				</div>
				<a href="#" class="btn btn-block btn-primary">Add to cart </a>
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-4">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
							<img src="http://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/items/7.jpg" class="img-fluid">
				<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="#" class="title">Product name goes here just for demo item</a>
					<div class="price-wrap mt-2">
						<span class="price">$1280</span>
					</div> <!-- price-wrap.// -->
				</div>
				<a href="#" class="btn btn-block btn-primary">Add to cart </a>	
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-4">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
								<img src="http://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/items/7.jpg" class="img-fluid">
				<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="#" class="title">Product name goes here just for demo item</a>
					<div class="price-wrap mt-2">
						<span class="price">$1280</span>
					</div> <!-- price-wrap.// -->
				</div>
				<a href="#" class="btn btn-block btn-primary">Add to cart </a>	
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-4">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
							<img src="http://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/items/7.jpg" class="img-fluid">
				<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="#" class="title">Product name goes here just for demo item</a>
					<div class="price-wrap mt-2">
						<span class="price">$1280</span>
					</div> <!-- price-wrap.// -->
				</div>
				<a href="#" class="btn btn-block btn-primary">Add to cart </a>	
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-4">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
							<img src="http://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/items/7.jpg" class="img-fluid">
				<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="#" class="title">Product name goes here just for demo item</a>
					<div class="price-wrap mt-2">
						<span class="price">$1280</span>
					</div> <!-- price-wrap.// -->
				</div>
				<a href="#" class="btn btn-block btn-primary">Add to cart </a>	
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-4">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
							<img src="http://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/items/7.jpg" class="img-fluid">
				<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="#" class="title">Product name goes here just for demo item</a>
					<div class="price-wrap mt-2">
						<span class="price">$1280</span>
					</div> <!-- price-wrap.// -->
				</div>
				<a href="#" class="btn btn-block btn-primary">Add to cart </a>	
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-4">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
							<img src="http://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/items/7.jpg" class="img-fluid">
				<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="#" class="title">Product name goes here just for demo item</a>
					<div class="price-wrap mt-2">
						<span class="price">$1280</span>
					</div> <!-- price-wrap.// -->
				</div>
				<a href="#" class="btn btn-block btn-primary">Add to cart </a>	
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-4">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<img src="http://bootstrap-ecommerce.com/bootstrap-ecommerce-html/images/items/7.jpg" class="img-fluid">
				<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="#" class="title">Product name goes here just for demo item</a>
					<div class="price-wrap mt-2">
						<span class="price">$1280</span>
					</div> <!-- price-wrap.// -->
				</div>
				<a href="#" class="btn btn-block btn-primary">Add to cart </a>	
			</figcaption>
		</figure>
	</div> <!-- col.// -->
</div> <!-- row end.// -->


<nav class="mt-4" aria-label="Page navigation sample">
  <ul class="pagination">
    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item active"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>

	</main>
	</div>
</div>
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
