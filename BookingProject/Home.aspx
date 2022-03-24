<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BookingProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css?ver=1.0">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" />

	
    <style> 
	 .search-sec{padding:2rem}
.search-slt{display:block;width:100%;font-size:.875rem;line-height:1.5;color:#55595c;background-color:#fff;background-image:none;border:1px solid #ccc;height:calc(3rem + 2px)!important;border-radius:0}
.wrn-btn{width:100%;font-size:16px;font-weight:400;text-transform:capitalize;height:calc(3rem + 2px)!important;border-radius:0 4px 4px 0;}
.wrn-btn:focus{outline:none;box-shadow:none;border:none;}
@media (min-width:992px){.search-sec{position:absolute;bottom:0px;width:100%;background:rgba(26,70,104,.51);z-index:9;}
}
@media (max-width:992px){.search-sec{position:relative;bottom:0px;width:100%;background:#1a4668;z-index:9;}
.owl-carousel.main_banner{position:relative !important;}
.custom_header{position:relative !important;top:0;z-index:99;width:100%;background: rgba(26,70,104,.51) !important;border-radius:0;}
}
.custom-search-input-2{background-color:#fff;-webkit-border-radius:5px;-moz-border-radius:5px;-ms-border-radius:5px;border-radius:5px;margin-top:15px;box-shadow: 0 0 0 6px rgba(255,255,255,.25);}
@media (max-width: 991px){.custom-search-input-2{background:none;-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none}
}
.custom-search-input-2 input{border:0;height:50px;padding-left:15px;border-right:1px solid #d2d8dd;font-weight:500}
@media (max-width: 991px){.custom-search-input-2 input{border:none}
}
.custom-search-input-2 input:focus{box-shadow:none;border-right:1px solid #d2d8dd}
@media (max-width: 991px){.custom-search-input-2 input:focus{border-right:none}
}
.custom-search-input-2 select{display:none}
.custom-search-input-2 .nice-select .current{font-weight:500;color:#6f787f}
.custom-search-input-2 .form-group{margin:0}
@media (max-width: 991px){.custom-search-input-2 .form-group{margin-bottom:5px}
}
.custom-search-input-2 i{-webkit-border-radius:3px;-moz-border-radius:3px;-ms-border-radius:3px;border-radius:3px;font-size:18px;font-size:1.125rem;position:absolute;background-color:#fff;line-height:50px;top:0;right:1px;padding-right:15px;display:block;width:20px;box-sizing:content-box;height:50px;z-index:9;color:#999}
@media (max-width: 991px){.custom-search-input-2 i{padding-right:10px}
}
.custom-search-input-2 input[type='submit']{-moz-transition:all 0.3s ease-in-out;-o-transition:all 0.3s ease-in-out;-webkit-transition:all 0.3s ease-in-out;-ms-transition:all 0.3s ease-in-out;transition:all 0.3s ease-in-out;color:#fff;font-weight:600;font-size:14px;font-size:0.875rem;border:0;padding:0 25px;height:50px;cursor:pointer;outline:none;width:100%;-webkit-border-radius:0 3px 3px 0;-moz-border-radius:0 3px 3px 0;-ms-border-radius:0 3px 3px 0;border-radius:0 3px 3px 0;background-color:#fc5b62;margin-right:-1px}
@media (max-width: 991px){.custom-search-input-2 input[type='submit']{margin:20px 0 0 0;-webkit-border-radius:3px;-moz-border-radius:3px;-ms-border-radius:3px;border-radius:3px}
}
.custom-search-input-2 input[type='submit']:hover{background-color:#FFC107;color:#222}
.custom-search-input-2.inner{margin-bottom:30px;-webkit-box-shadow:0px 0px 30px 0px rgba(0,0,0,0.1);-moz-box-shadow:0px 0px 30px 0px rgba(0,0,0,0.1);box-shadow:0px 0px 30px 0px rgba(0,0,0,0.1)}
@media (max-width: 991px){.custom-search-input-2.inner{margin:0 0 20px 0;-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none}
}
.custom-search-input-2.inner-2{margin:0 0 20px 0;-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none;background:none}
.custom-search-input-2.inner-2 .form-group{margin-bottom:10px}
.custom-search-input-2.inner-2 input{border:1px solid #ededed}
.custom-search-input-2.inner-2 input[type='submit']{-webkit-border-radius:3px;-moz-border-radius:3px;-ms-border-radius:3px;border-radius:3px;margin-top:10px}
.custom-search-input-2.inner-2 i{padding-right:10px;line-height:48px;height:48px;top:1px}
.custom-search-input-2.inner-2 .nice-select{border:1px solid #ededed}
.panel-dropdown{position:relative;text-align:left;padding:15px 10px 0 15px}
@media (max-width: 991px){.panel-dropdown{background-color:#fff;-webkit-border-radius:3px;-moz-border-radius:3px;-ms-border-radius:3px;border-radius:3px;height:50px}
}
.panel-dropdown a{color:#727b82;font-weight:500;transition:all 0.3s;display:flex;align-items:center;justify-content:flex-start;position:relative}
.panel-dropdown a:after{content:"\25BE";font-size:1.7rem;color:#999;font-weight:500;-moz-transition:all 0.3s ease-in-out;-o-transition:all 0.3s ease-in-out;-webkit-transition:all 0.3s ease-in-out;-ms-transition:all 0.3s ease-in-out;transition:all 0.3s ease-in-out;position:absolute;right:0;top:-8px;}
.panel-dropdown.active a:after{transform:rotate(180deg);}
.panel-dropdown .panel-dropdown-content{opacity:0;visibility:hidden;transition:all 0.3s;position:absolute;top:58px;left:0px;z-index:99;background:#fff;border-radius:4px;padding:15px 15px 0 15px;white-space:normal;width:280px;box-shadow: 0 1rem 3rem rgba(0,0,0,.175)!important;border:none;}
.panel-dropdown .panel-dropdown-content:after{bottom:100%;left:15px;border:solid transparent;content:" ";height:0;width:0;position:absolute;pointer-events:none;border-bottom-color:#fff;border-width:7px;margin-left:-7px}
.panel-dropdown .panel-dropdown-content.right{left:auto;right:0}
.panel-dropdown .panel-dropdown-content.right:after{left:auto;right:15px}
.panel-dropdown.active .panel-dropdown-content{opacity:1;visibility:visible}
.qtyButtons{display:flex;margin:0 0 13px 0}
.qtyButtons input{outline:0;font-size:16px;font-size:1rem;text-align:center;width:50px;height:36px !important;color:#333;line-height:36px;margin:0 !important;padding:0 5px !important;border:none;box-shadow:none;pointer-events:none;display:inline-block;border:none !important}
.qtyButtons label{font-weight:400;line-height:36px;padding-right:15px;display:block;flex:1;color:#626262}
.qtyInc,.qtyDec{width:36px;height:36px;line-height:36px;font-size:28px;font-size:1.75rem;background-color:#f2f2f2;-webkit-text-stroke:1px #f2f2f2;color:#333;display:inline-block;text-align:center;border-radius:50%;cursor:pointer;}
.qtyInc:hover,.qtyDec:hover{background:#DC3545;}
.qtyInc:hover:before, .qtyDec:hover:before{color:#fff}
.qtyInc:before{content:"\002B";font-size:32px;font-weight:900;line-height: 30px;}
.qtyDec:before{content:"\2212";font-size:32px;font-weight:900;line-height: 30px;}
.qtyTotal{background-color:#66676b;border-radius:50%;color:#fff;display:inline-block;font-size:11px;font-weight:600;font-family:"Open Sans", sans-serif;line-height:18px;text-align:center;position:relative;top:1px;left:7px;height:18px;width:18px}
.rotate-x{animation-duration:.5s;animation-name:rotate-x}
@keyframes rotate-x{from{transform:rotateY(0deg)}
to{transform:rotateY(360deg)}
}
.daterangepicker{box-shadow:0 1rem 3rem rgba(0,0,0,.175)!important;border:none;}
.daterangepicker td.in-range{background-color:#dc354529;}
.daterangepicker td.active, .daterangepicker td.active:hover {background-color:#DC3545;border-color:transparent;color:#fff;}
.daterangepicker td.available:hover, .daterangepicker th.available:hover{background-color:#dc3545e0;color:#fff;}
.btn-primary:not(:disabled):not(.disabled).active, .btn-primary:not(:disabled):not(.disabled):active, .show>.btn-primary.dropdown-toggle{background-color:#c82333;border-color:#c82333;}
.ripple{position:relative;overflow:hidden;transform:translate3d(0,0,0)}
.ripple:after{content:"";display:block;position:absolute;width:100%;height:100%;top:0;left:0;pointer-events:none;background-image:radial-gradient(circle,#000 10%,transparent 10.01%);background-repeat:no-repeat;background-position:50%;transform:scale(10,10);opacity:0;transition:transform .5s,opacity 1s}
.ripple:active:after{transform:scale(0,0);opacity:.2;transition:0s}
.btn-primary{color:#fff;background-color:#DC3545;border-color:#DC3545;}
.btn-primary:hover{background-color:#c82333;border-color:#bd2130;}
.btn-primary:focus{background-color:#c82333;border-color:#bd2130;box-shadow:0 0 0 0.2rem rgba(200, 35, 51, 0.5)!important;}
.nice-select.wide{width:100%}
.nice-select.wide .list{left:0 !important;right:0 !important}
.custom-select-form .nice-select{-webkit-border-radius:3px;-moz-border-radius:3px;-ms-border-radius:3px;border-radius:3px;border:1px solid #d2d8dd;height:45px;line-height:42px}
.custom-select-form .nice-select:hover{border-color:#d2d8dd}
.custom-select-form .nice-select:active,.custom-select-form .nice-select.open,.custom-select-form .nice-select:focus{border-color:#80bdff;outline:0;box-shadow:0 0 0 0.2rem rgba(0,123,255,0.25)}
.custom-select-form select{display:none}
section.banner{position:relative;}
.custom-select-form .nice-select{border:none;height:50px;line-height:50px;border-radius:4px 0 0 4px;border-right:1px solid #d2d8dd !important;}
.nice-select .list{box-shadow:0 1rem 3rem rgba(0,0,0,.175)!important;width:100%;}
.nice-select.open .list{height:250px;overflow-y:auto;}
.custom-select-form .nice-select:active, .custom-select-form .nice-select.open, .custom-select-form .nice-select:focus {border-color:#fff;outline:0;box-shadow:none;}
.wrn-btn span{cursor:pointer;display:inline-block;position:relative;transition:.5s}
.wrn-btn span:after{content:'\00bb';position:absolute;opacity:0;top:-8px;right:-20px;transition:.5s;font-size:24px;}
.wrn-btn:hover span{padding-right:20px}
.wrn-btn:hover span:after{opacity:1;right:0}
.wrapper-grid{padding:0 20px}
.box_grid{background-color:#fff;display:block;position:relative;margin-bottom:30px;-webkit-box-shadow:0px 0px 20px 0px rgba(0,0,0,0.1);-moz-box-shadow:0px 0px 20px 0px rgba(0,0,0,0.1);box-shadow:0px 0px 20px 0px rgba(0,0,0,0.1)}
.box_grid .price{display:inline-block;font-weight:500;color:#999}
.box_grid .price strong{color:#32a067}
.box_grid a.wish_bt{position:absolute;right:15px;top:15px;z-index:1;background-color:#000;background-color:rgba(0,0,0,0.6);padding:7px 10px 7px 10px;display:inline-block;color:#fff;line-height:1;-webkit-border-radius:3px;-moz-border-radius:3px;-ms-border-radius:3px;border-radius:3px}
.box_grid a.wish_bt:after{content:"\2661";-moz-transition:all 0.5s ease;-o-transition:all 0.5s ease;-webkit-transition:all 0.5s ease;-ms-transition:all 0.5s ease;transition:all 0.5s ease;font-size:20px;}
.box_grid a.wish_bt.liked:after{content:"\e089";color:#fc5b62}
.box_grid a.wish_bt:hover.liked:after{color:#fc5b62}
.box_grid a.wish_bt:hover:after{content:"\e089";color:#fff}
.box_grid figure{margin-bottom:0;overflow:hidden;position:relative;height:210px}
.box_grid figure small{position:absolute;background-color:#000;background-color:rgba(0,0,0,0.6);left:20px;top:22px;text-transform:uppercase;color:#ccc;font-weight:600;-webkit-border-radius:3px;-moz-border-radius:3px;-ms-border-radius:3px;border-radius:3px;padding:5px 10px 5px 10px;line-height:1}
.box_grid figure .read_more{position:absolute;top:50%;left:0;margin-top:-12px;-webkit-transform:translateY(10px);-moz-transform:translateY(10px);-ms-transform:translateY(10px);-o-transform:translateY(10px);transform:translateY(10px);text-align:center;opacity:0;visibility:hidden;width:100%;-webkit-transition:all 0.6s;transition:all 0.6s;z-index:2}
.box_grid figure .read_more span{background-color:#fcfcfc;background-color:rgba(255,255,255,0.8);-webkit-border-radius:20px;-moz-border-radius:20px;-ms-border-radius:20px;border-radius:20px;display:inline-block;color:#222;font-size:12px;font-size:0.75rem;padding:5px 10px}
.box_grid figure:hover .read_more{opacity:1;visibility:visible;-webkit-transform:translateY(0);-moz-transform:translateY(0);-ms-transform:translateY(0);-o-transform:translateY(0);transform:translateY(0)}
.box_grid figure a img{position:absolute;left:50%;top:50%;-webkit-transform:translate(-50%, -50%) scale(1.1);-moz-transform:translate(-50%, -50%) scale(1.1);-ms-transform:translate(-50%, -50%) scale(1.1);-o-transform:translate(-50%, -50%) scale(1.1);transform:translate(-50%, -50%) scale(1.1);-webkit-backface-visibility:hidden;-moz-backface-visibility:hidden;-ms-backface-visibility:hidden;-o-backface-visibility:hidden;backface-visibility:hidden;width:100%;-moz-transition:all 0.3s ease-in-out;-o-transition:all 0.3s ease-in-out;-webkit-transition:all 0.3s ease-in-out;-ms-transition:all 0.3s ease-in-out;transition:all 0.3s ease-in-out}
.box_grid figure a:hover img{-webkit-transform:translate(-50%, -50%) scale(1);-moz-transform:translate(-50%, -50%) scale(1);-ms-transform:translate(-50%, -50%) scale(1);-o-transform:translate(-50%, -50%) scale(1);transform:translate(-50%, -50%) scale(1)}
.box_grid .wrapper{padding:25px}
.box_grid .wrapper h3{font-size:20px;font-size:1.25rem;margin-top:0}
.box_grid ul{padding:20px 15px;border-top:1px solid #ededed}
.box_grid ul li{display:inline-block;margin-right:15px}
.box_grid ul li .score{margin-top:-10px}
.box_grid ul li:last-child{margin-right:0;float:right}
.score strong{background-color:#0054a6;color:#fff;line-height:1;-webkit-border-radius:5px 5px 5px 0;-moz-border-radius:5px 5px 5px 0;-ms-border-radius:5px 5px 5px 0;border-radius:5px 5px 5px 0;padding:10px;display:inline-block}
.score span{display:inline-block;position:relative;top:7px;margin-right:8px;font-size:12px;font-size:0.75rem;text-align:right;line-height:1.1;font-weight:500}
.score span em{display:block;font-weight:normal;font-size:11px;font-size:0.6875rem}
.main_title_2 h2{margin:25px 0 0 0;color:#333;}
.main_title_2 h3{margin:25px 0 0 0;color:#727272;}
.main_title_2 p{margin:8px 0 0 0;color:#727272;}
p{color:#727272;font-size:15px;line-height:20px;}
a{color:#DC3545;}
a:hover{text-decoration:none;color:#bd2130}
.owl-carousel .owl-nav button.owl-next,.owl-carousel .owl-nav button.owl-prev,.owl-carousel button.owl-dot{background:rgba(0, 84, 166, 0.85)!important;color:inherit;border:none;padding:5px 14px!important;position:absolute;top:50%;color:#fff!important;border-radius:3px!important}
.owl-carousel .owl-nav .owl-prev{left:0;}
.owl-carousel .owl-nav .owl-prev span{font-size:20px;line-height:22px;}
.owl-carousel .owl-nav .owl-prev:focus{outline:none;border:none;box-shadow:none}
.owl-carousel .owl-nav .owl-next{right:0}
.owl-carousel .owl-nav .owl-next span{font-size:20px;line-height:22px;}
.owl-carousel .owl-nav .owl-next:focus{outline:none;border:none;box-shadow:none}
#places{margin-top:40px}
@media (max-width: 767px){#places{margin-top:0}
}
#places .item{margin:0 15px}
#places .owl-item{opacity:0.5;transform:scale(0.85);-webkit-backface-visibility:hidden;-moz-backface-visibility:hidden;-ms-backface-visibility:hidden;-o-backface-visibility:hidden;backface-visibility:hidden;-webkit-transform:translateZ(0) scale(0.85, 0.85);transition:all 0.3s ease-in-out 0s;overflow:hidden}
#places .owl-item.active.center{opacity:1;-webkit-backface-visibility:hidden;-moz-backface-visibility:hidden;-ms-backface-visibility:hidden;-o-backface-visibility:hidden;backface-visibility:hidden;-webkit-transform:translateZ(0) scale(1, 1);transform:scale(1)}
#places .owl-item.active.center .item .title h4,#places .owl-item.active.center .item .views{opacity:1}
.owl-theme .owl-dots{margin-top:10px !important;margin-bottom:25px}
.search-sec .tag_line h3{font-size: 2.625rem;text-shadow: 4px 4px 12px rgba(0,0,0,0.3);color:#fff;margin:0;text-transform:uppercase;font-weight:700;}
.search-sec .tag_line p{font-size: 21px;text-shadow: 4px 4px 12px rgba(0,0,0,0.3);color:#fff;margin:5px 0 0 0;font-weight:400;}
.custom_header{position:absolute;top:0;z-index:99;width:100%;background: rgba(26,70,104,.51) !important;border-radius:0;}
.navbar .navbar-brand{color:#fff!important;font-size:30px;}
.navbar .navbar-nav li a{color:#fff!important;}
.navbar .navbar-nav li.active a{color:#DC3545!important;}
#side-menu{display:none;position:fixed;width:320px;top:0;right:-300px;height:100%;overflow-y:auto;z-index:99999;background:#fff;padding:20px 15px;color:#333;transition:.4s;box-shadow:-5px 0 20px rgba(0, 0, 0, 0.2);}
body.side-menu-visible #side-menu{transform:translateX(-300px);overflow:hidden;}
#side-menu .logo{max-width:65%;}
#side-menu .contents{margin-top:00px;border-top:1px solid #eee;padding-top:20px;}
#side-menu li.nav-item:before{content:'\203A';position:absolute;left:2px;top:7px;}
#side-menu li.nav-item{padding-left:20px;}
#side-menu .nav-link{color:#333;font-size:14px;font-weight:600;padding:10px 0}
#side-menu .nav-link:hover{opacity:.8;color:#1b820a;}
#side-menu li.nav-item.dropdown.show{border-bottom:1px solid #eee;padding-bottom:10px;margin-bottom:10px;}
#side-menu .close{font-size:36px;font-weight:400;position:absolute;top:5px;right:15px;}
#side-menu .contact a, #side-menu .contact .fa{padding:5px 0px;background:#fff;font-size:14px;color:#727272;}
#side-menu .contact a:hover, #side-menu .contact .fa:hover{color: #28ab13 !important;}
#side-menu .contact a:focus, #side-menu .contact .fa:focus{color: #28ab13 !important;}





.owl-carousel .owl-item{-webkit-tap-highlight-color:transparent;position:relative}.owl-carousel{display:none;width:100%;z-index:1}.owl-carousel .owl-stage{position:relative;-ms-touch-action:pan-Y;touch-action:manipulation;-moz-backface-visibility:hidden}.owl-carousel .owl-stage:after{content:".";display:block;clear:both;visibility:hidden;line-height:0;height:0}.owl-carousel .owl-stage-outer{position:relative;overflow:hidden;-webkit-transform:translate3d(0,0,0)}.owl-carousel .owl-item,.owl-carousel .owl-wrapper{-webkit-backface-visibility:hidden;-moz-backface-visibility:hidden;-ms-backface-visibility:hidden;-webkit-transform:translate3d(0,0,0);-moz-transform:translate3d(0,0,0);-ms-transform:translate3d(0,0,0)}.owl-carousel .owl-item{min-height:1px;float:left;-webkit-backface-visibility:hidden;-webkit-touch-callout:none}.owl-carousel .owl-item img{display:block;width:100%}.owl-carousel .owl-dots.disabled,.owl-carousel .owl-nav.disabled{display:none}.no-js .owl-carousel,.owl-carousel.owl-loaded{display:block}.owl-carousel .owl-dot,.owl-carousel .owl-nav .owl-next,.owl-carousel .owl-nav .owl-prev{cursor:pointer;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.owl-carousel .owl-nav button.owl-next,.owl-carousel .owl-nav button.owl-prev,.owl-carousel button.owl-dot{background:0 0;color:inherit;border:none;padding:0!important;font:inherit}.owl-carousel.owl-loading{opacity:0;display:block}.owl-carousel.owl-hidden{opacity:0}.owl-carousel.owl-refresh .owl-item{visibility:hidden}.owl-carousel.owl-drag .owl-item{-ms-touch-action:pan-y;touch-action:pan-y;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.owl-carousel.owl-grab{cursor:move;cursor:grab}.owl-carousel.owl-rtl{direction:rtl}.owl-carousel.owl-rtl .owl-item{float:right}.owl-carousel .animated{animation-duration:1s;animation-fill-mode:both}.owl-carousel .owl-animated-in{z-index:0}.owl-carousel .owl-animated-out{z-index:1}.owl-carousel .fadeOut{animation-name:fadeOut}@keyframes fadeOut{0%{opacity:1}100%{opacity:0}}.owl-height{transition:height .5s ease-in-out}.owl-carousel .owl-item .owl-lazy{opacity:0;transition:opacity .4s ease}.owl-carousel .owl-item .owl-lazy:not([src]),.owl-carousel .owl-item .owl-lazy[src^=""]{max-height:0}.owl-carousel .owl-item img.owl-lazy{transform-style:preserve-3d}.owl-carousel .owl-video-wrapper{position:relative;height:100%;background:#000}.owl-carousel .owl-video-play-icon{position:absolute;height:80px;width:80px;left:50%;top:50%;margin-left:-40px;margin-top:-40px;background:url(owl.video.play.png) no-repeat;cursor:pointer;z-index:1;-webkit-backface-visibility:hidden;transition:transform .1s ease}.owl-carousel .owl-video-play-icon:hover{-ms-transform:scale(1.3,1.3);transform:scale(1.3,1.3)}.owl-carousel .owl-video-playing .owl-video-play-icon,.owl-carousel .owl-video-playing .owl-video-tn{display:none}.owl-carousel .owl-video-tn{opacity:0;height:100%;background-position:center center;background-repeat:no-repeat;background-size:contain;transition:opacity .4s ease}.owl-carousel .owl-video-frame{position:relative;z-index:1;height:100%;width:100%}




p {
    margin: 4px
}

.card {
    width: 280px;
    height: 520px;
    box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
    background: #fff;
    transition: all 0.5s ease;
    cursor: pointer;
    user-select: none;
    z-index: 10;
    overflow: hidden
}

.card .backgroundEffect {
    bottom: 0;
    height: 0px;
    width: 100%
}

.card:hover {
    color: #fff;
    transform: scale(1.025);
    box-shadow: rgba(0, 0, 0, 0.24) 0px 5px 10px
}

.card:hover .backgroundEffect {
    bottom: 0;
    height: 320px;
    width: 100%;
    position: absolute;
    z-index: -1;
    background: #1b9ce3;
    animation: popBackground 0.3s ease-in
}

@keyframes popBackground {
    0% {
        height: 20px;
        border-top-left-radius: 50%;
        border-top-right-radius: 50%
    }

    50% {
        height: 80px;
        border-top-left-radius: 75%;
        border-top-right-radius: 75%
    }

    75% {
        height: 160px;
        border-top-left-radius: 85%;
        border-top-right-radius: 85%
    }

    100% {
        height: 320px;
        border-top-left-radius: 100%;
        border-top-right-radius: 100%
    }
}

.card .pic {
    position: relative
}

.card .pic img {
    width: 100%;
    height: 280px;
    object-fit: cover
}

.card .date {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 50px;
    height: 70px;
    background-color: #1b9ce3;
    color: white;
    position: absolute;
    bottom: 0px;
    transition: all ease
}

.card .date .day {
    font-size: 14px;
    font-weight: 600
}

.card .date .month,
.card .date .year {
    font-size: 10px
}

.card .text-muted {
    font-size: 12px
}

.card:hover .text-muted {
    color: #fff !important
}

.card .content {
    padding: 0 20px
}

.card .content .btn {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 5px 10px;
    background-color: #1b9ce3;
    border-radius: 25px;
    font-size: 12px;
    border: none
}

.card:hover .content .btn {
    background: #fff;
    color: #1b9ce3;
    box-shadow: #0000001a 0px 3px 5px
}

.card .content .btn .fas {
    font-size: 10px;
    padding-left: 5px
}

.card .content .foot .admin {
    color: #1b9ce3;
    font-size: 12px
}

.card:hover .content .foot .admin {
    color: #fff
}

.card .content .foot .icon {
    font-size: 12px
}




	</style>

    <script> 

        $(document).ready(function () {
            $('.main_banner').owlCarousel({
                loop: true,
                autoplay: true,
                margin: 0,
                nav: false,
                center: true,
                lazyLoad: true,
                autoWidth: false,
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 1
                    },
                    1000: {
                        items: 1
                    }
                }
            });
            $('#city').niceSelect();
        });
        $(document).ready(function () {
            $('.places').owlCarousel({
                loop: true,
                autoplay: true,
                margin: 0,
                nav: true,
                center: true,
                lazyLoad: true,
                autoWidth: false,
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 2
                    },
                    1000: {
                        items: 5
                    }
                }
            });
        });

        /********** Panel_Dropdown ***********/
        function close_panel_dropdown() {
            $(".panel-dropdown").removeClass("active")
        }
        $(".panel-dropdown a").on("click", function (event) {
            if ($(this).parent().is(".active")) {
                close_panel_dropdown()
            } else {
                close_panel_dropdown();
                $(this).parent().addClass("active")
            };
            event.preventDefault()
        });
        var mouse_is_inside = false;
        $(".panel-dropdown").hover(function () {
            mouse_is_inside = true
        }, function () {
            mouse_is_inside = false
        });
        $("body").mouseup(function () {
            if (!mouse_is_inside) {
                close_panel_dropdown()
            }
        });


        /********** Quality ***********/
        function qtySum() {
            var arr = document.getElementsByName('qtyInput');
            var tot = 0;
            for (var i = 0; i < arr.length; i++) {
                if (parseInt(arr[i].value))
                    tot += parseInt(arr[i].value);
            }
            var cardQty = document.querySelector(".qtyTotal");
            cardQty.innerHTML = tot;
        }
        qtySum();

        $(function () {
            $(".qtyButtons input").after('<div class="qtyInc"></div>');
            $(".qtyButtons input").before('<div class="qtyDec"></div>');
            $(".qtyDec, .qtyInc").on("click", function () {

                var $button = $(this);
                var oldValue = $button.parent().find("input").val();

                if ($button.hasClass('qtyInc')) {
                    var newVal = parseFloat(oldValue) + 1;
                } else {
                    if (oldValue > 0) {
                        var newVal = parseFloat(oldValue) - 1;
                    } else {
                        newVal = 0;
                    }
                }

                $button.parent().find("input").val(newVal);
                qtySum();
                $(".qtyTotal").addClass("rotate-x");
            });

            function removeAnimation() { $(".qtyTotal").removeClass("rotate-x"); }
            const counter = document.querySelector(".qtyTotal");
            counter.addEventListener("animationend", removeAnimation);
        });

        $(function () {
            'use strict';
            $('input[name="dates"]').daterangepicker({
                autoUpdateInput: false,
                locale: {
                    cancelLabel: 'Clear'
                }
            });
            $('input[name="dates"]').on('apply.daterangepicker', function (ev, picker) {
                $(this).val(picker.startDate.format('MM-DD-YYYY') + ' > ' + picker.endDate.format('MM-DD-YYYY'));
            });
            $('input[name="dates"]').on('cancel.daterangepicker', function (ev, picker) {
                $(this).val('');
            });
        });

        /********** Side_Menu ***********/
        $(function () { var e = $("body"), i = $(".navbar-collapse"); e.append('<div class="side-menu-overlay"></div>'); var s = $(".side-menu-overlay"); e.append('<div id="side-menu"></div>'); var n = $("#side-menu"); n.append('Logo <button class="close"><span aria-hidden="true">x</span></button>'); var o = n.find(".close"); n.append('<div class="contents"></div>'); var a = n.find(".contents"); function d() { e.removeClass("side-menu-visible"), s.fadeOut(), setTimeout(function () { n.hide(), e.removeClass("overflow-hidden") }, 400) } i.on("show.bs.collapse", function (i) { i.preventDefault(); var o = $(this).html(); a.html(o), e.addClass("overflow-hidden"), n.show(), setTimeout(function () { e.addClass("side-menu-visible"), s.fadeIn() }, 50) }), o.on("click", function (e) { e.preventDefault(), d() }), s.on("click", function (e) { d() }), $(window).resize(function () { !i.is(":visible") && e.hasClass("side-menu-visible") ? (n.show(), s.show()) : (n.hide(), s.hide()) }) });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
	
	
	<div class="carousel slide">
		<div class="item">
            <img src="Picture/hotel.jpg"   height="850"  width="1000"/>
		</div>
		<div class="item">
            <img src="Picture/plane2.jpg" height="850"/>
		</div>
		<div class="item">
            <img src="Picture/AmusementPark3.jpeg"  height="850"/>
		</div>
	</div>

	<div class="search-sec bg-transparent d-none d-sm-block"">
		<div class="container text-center tag_line">
			<h3>Book unique experiences</h3>
			<p>Expolore top rated tours, hotels and restaurants around the world</p>
		</div>
	</div>
	<div class="search-sec">
		<div class="container">
			<div>
				<div class="row no-gutters custom-search-input-2">
					<div class="col-lg-4">
						<div class="form-group">
							<div class="custom-select-form">
								<select class="w-100" name="city" id="city">
									<option value="" selected>Select your Country, City...</option>
									<option value="Europe">Europe</option>
									<option value="United states">United states</option>
									<option value="South America">South America</option>
									<option value="Oceania">Oceania</option>
									<option value="Asia">Asia</option>
									<option value="Europe">Europe</option>
									<option value="United states">United states</option>
									<option value="South America">South America</option>
									<option value="Oceania">Oceania</option>
									<option value="Asia">Asia</option>
									<option value="Europe">Europe</option>
									<option value="United states">United states</option>
									<option value="South America">South America</option>
									<option value="Oceania">Oceania</option>
									<option value="Asia">Asia</option>
									<option value="Europe">Europe</option>
									<option value="United states">United states</option>
									<option value="South America">South America</option>
									<option value="Oceania">Oceania</option>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>				<option value="Asia">Asia</option>
								</select>
							</div>
							<i class="fa fa-map-marker"></i>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Select Date..."></asp:TextBox>
                         <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary form-control" OnClick="LinkButton1_Click">
<i class="fa fa-calendar"></i> </asp:LinkButton>
							
						</div>
					</div>  
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" Visible="false" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth"   Width="330px" BorderStyle="Solid" CellSpacing="1" OnDayRender="Calendar1_DayRender">
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                <DayStyle BackColor="#CCCCCC" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" /> <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" BorderStyle="Solid" />

                            </asp:Calendar>
					<div class="col-lg-3">
						<div class="panel-dropdown">
							<a href="#">Guests <span class="qtyTotal">1</span></a>
							<div class="panel-dropdown-content">
								<div class="qtyButtons">
									<label>Adults</label>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
								</div>
								<div class="qtyButtons">
									<label>Childrens</label>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2">
						<button type="submit"   class="btn_search btn btn-danger wrn-btn ripple"><span>Search </span></button>
					</div>
				</div>
			</div>
		</div>
	</div>


<section class="container-fluid container-custom margin_80_0 py-4">
	<div class="main_title_2 py-4 text-center">
		<span><em></em></span>
		<h2>Our Popular Tours</h2>
		<p>When they become educated citizens in the financing deterred</p>
	</div>
    <div class="container">
    <div class="d-lg-flex">
        <div class="row">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>

    <div class="col-3">
        <div class="card border-0 me-lg-4 mb-lg-0 mb-4">
            <div class="backgroundEffect"></div>
            <div class="pic"> <asp:Image ID="Image1" runat="server" class="pic" alt="" ImageUrl='<%# Eval ("Picture","Picture/{0}") %>' /> 
                <div class="date"> <span class="day">26</span> <span class="month">June</span> <span class="year">2019</span> </div>
            </div>
            <div class="content">
                               <asp:Label ID="Label4" runat="server" Text='<%# Eval ("NameCountry") %>' ></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text='<%# Eval ("Text") %>'></asp:Label>

                <div class="d-flex align-items-center justify-content-between mt-3 pb-3">
                    <div class="btn btn-primary">Read More<span class="fas fa-arrow-right"></span></div>
                    <div class="d-flex align-items-center justify-content-center foot">
                        <p class="admin">Admin</p>
                        <p class="ps-3 icon text-muted"><span class="fas fa-comment-alt pe-1"></span>3</p>

                     
                    </div>
                </div>
            </div>
        </div>
       </div>
     
            </ItemTemplate>
 </asp:Repeater>
</div>
    </div>
    </div>


	<div class="main_title_2 py-4 text-center">
		<span><em></em></span>
		<h2>About Us</h2>
		<p>Founded in 1996, Booking.com has grown from a small Dutch start-up to one of the world's leading digital travel companies.<br />
			Company as part of the Booking Holdings Inc.<br />
			group (NASDAQ: BKNG), Booking.com aims to help everyone experience the world.</p>
		<p>Booking.com invests in technology that helps neutralize the difficulties involved in travel,<br />
			thus connecting millions of passengers to unforgettable experiences, a variety of transportation options and amazing accommodations - homes, apartments, hotels, B & Bs and more.<br />
			As one of the largest tourism markets in the world,<br />
			Booking.com works with brands and entrepreneurs of all types and sizes, helping venues all over the world reach a global audience and grow their business.</p>
		<p>Booking.com is available in 43 languages and offers more than 28 million reported accommodation units in total,<br /> 
			including 6.2 million homes, apartments and other unique accommodations.<br />
			So no matter where you want to travel and what you plan to do - with Booking.com and customer service Its (running 24/7), it will just be easier.<br /></p>
		<br />
		<br />
		<br />
		<h2>Added Value For Affiliate Accommodations</h2>
		<p>At Booking.com, we believe that every great place to stay deserves to be discovered.<br />
			This is why we make it easier and simpler for hosting providers all over the world to market their hosting,
			<br />reach new customer bases and grow their business through our platform.</p>
	</div>

<div class="backdrop" style="display: none;"></div>
		
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script src="https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/owl.carousel.js"></script>
<script src="https://www.jqueryscript.net/demo/Customizable-Animated-Dropdown-Plugin-with-jQuery-CSS3-Nice-Select/js/jquery.nice-select.js"></script>
    <br />
    <br />
</asp:Content>
