<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/4
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Origine - Organic Food Bootstrap 4 Template</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/assets/images/favicon.ico">

    <!-- CSS
	============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/assets/css/vendor/bootstrap.min.css">
    <!-- Icon Font CSS -->
    <link rel="stylesheet" href="/assets/css/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/css/vendor/plaza-font.css">

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="/assets/css/plugins/slick.css">
    <link rel="stylesheet" href="/assets/css/plugins/swiper.min.css">
    <link rel="stylesheet" href="/assets/css/plugins/animation.css">
    <link rel="stylesheet" href="/assets/css/plugins/nice-select.css">
    <link rel="stylesheet" href="/assets/css/plugins/fancy-box.css">
    <link rel="stylesheet" href="/assets/css/plugins/jqueryui.min.css">

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
    <!--
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="/assets/css/style.css">
    <!--<link rel="stylesheet" href="assets/css/style.min.css">-->

</head>

<body>

<div class="main-wrapper">


    <!-- 头部 -->
    <header class="header">

        <!-- Header Top Start -->
        <div class="header-top-area d-none d-lg-block text-color-white bg-gren border-bm-1">

            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header-top-settings">
                            <ul class="nav align-items-center">
                                <li class="language">中文 <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list">
                                        <li><a href="#">中文</a></li>
                                        <li><a href="#">English</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="top-info-wrap text-right">
                            <ul class="my-account-container">
                                <%-- 事件：登录注册 --%>
                                <% if(request.getSession().getAttribute("userinfo")== null){%>
                                <li><a href="${pageContext.request.contextPath}/skip/tologinandregister.do">登录</a></li>
                                <li><a href="${pageContext.request.contextPath}/skip/tologinandregister.do">注册</a></li>
                                <%
                                }else{
                                %>
                                <li><a href="#">${userinfo.uname}</a></li>
                                <li><a href="${pageContext.request.contextPath}/user/homepage.do">我的主页</a></li>
                                <li><a href="${pageContext.request.contextPath}/user/personlogout.do">注销</a></li>
                                <%
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Header Top End -->

        <!-- haeader Mid Start -->
        <div class="haeader-mid-area bg-gren border-bm-1 d-none d-lg-block ">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-5">
                        <div class="logo-area">
                            <a href="index.jsp"><img src="/assets/images/logo/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="search-box-wrapper">
                            <div class="search-box-inner-wrap">
                                <div class="search-title text-white d-flex">
                                    <p>热门标签：</p>
                                    <ul>
                                        <li>川菜</li>
                                        <li>粤菜</li>
                                    </ul>
                                </div>
                                <%-- 事件：搜索 --%>
                                <form class="search-box-inner" action="${pageContext.request.contextPath}/search/searchMenu.do?page=1&size=8" method="post">
                                    <div class="search-field-wrap">
                                        <input type="text" name="mname" class="search-field" placeholder="请输入菜谱">

                                        <div class="search-btn">
                                            <button type="submit"><i class="icon-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <%

                    %>
                    <%!
                        Calendar now = Calendar.getInstance();
                    %>
                    <div class="col-lg-4">
                        <div class="customer-wrap green-bg">
                            <div class="single-costomer-box">
                                <div class="single-costomer text-white">
                                    <h5 class="text-white"> <%= now.get(Calendar.YEAR)+"年"%><%= (now.get(Calendar.MONTH)+1)+"月"%><%= now.get(Calendar.DAY_OF_MONTH)+"日"%>,今天也是元气满满的一天</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- haeader Mid End -->

        <!-- haeader bottom Start -->
        <div class="haeader-bottom-area bg-gren header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-9 d-none d-lg-block">

                        <div class="main-menu-area white_text">
                            <!--  Start Mainmenu Nav-->
                            <nav class="main-navigation">
                                <ul>
                                    <li class="active"><a href="${pageContext.request.contextPath}/mainmenu/getMainMenu.do">主页 <i class="fa fa-angle-down"></i></a>
                                        <%--<ul class="sub-menu">
                                            <li><a href="index.html">Home Page 1</a></li>
                                            <li><a href="index-2.html">Home Page 2</a></li>
                                            <li><a href="index-3.html">Home Page 3</a></li>
                                            <li><a href="index-4.html">Home Page 4</a></li>
                                        </ul>--%>
                                    </li>

                                    <li><a href="#">菜谱大全 <i class="fa fa-angle-down"></i></a>
                                        <ul class="mega-menu">
                                            <li><a href="#">八大菜系</a>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=1&page=1&size=8">川&emsp;菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=2&page=1&size=8">粤&emsp;菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=3&page=1&size=8">鲁&emsp;菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=4&page=1&size=8">苏&emsp;菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=5&page=1&size=8">浙&emsp;菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=6&page=1&size=8">徽&emsp;菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=7&page=1&size=8">闽&emsp;菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=8&page=1&size=8">湘&emsp;菜</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">家常菜谱</a>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=9&page=1&size=8">海&emsp;鲜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=10&page=1&size=8">热&emsp;菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=11&page=1&size=8">凉&emsp;菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=12&page=1&size=8">素&emsp;食</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">一日四餐</a>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=13&page=1&size=8">早&emsp;餐</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=14&page=1&size=8">午&emsp;餐</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=15&page=1&size=8">晚&emsp;餐</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=16&page=1&size=8">夜&emsp;宵</a></li>
                                                </ul>
                                            </li>
                                        </ul>

                                    </li>

                                    <li><a href="#">相关 <i class="fa fa-angle-down"></i></a>
                                        <ul class="sub-menu">
                                            <li><a href="#">FAQ</a></li>
                                            <li><a href="#">My Account</a></li>
                                            <li><a href="#">login &amp; register</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/skip/toaboutus.do">关于我们</a></li>
                                    <li><a href="${pageContext.request.contextPath}/skip/tocontactus.do">联系我们</a></li>
                                </ul>
                            </nav>

                        </div>
                    </div>

                    <div class="col-5 col-md-6 d-block d-lg-none">
                        <div class="logo"><a href="index.html"><img src="/assets/images/logo/logo.png" alt=""></a></div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-7">
                        <div class="right-blok-box text-white d-flex">

                            <div class="mobile-menu-btn d-block d-lg-none">
                                <div class="off-canvas-btn">
                                    <a href="#"><img src="/assets/images/icon/bg-menu.png" alt=""></a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- haeader bottom End -->


        <!-- off-canvas menu start -->
        <aside class="off-canvas-wrapper">
            <div class="off-canvas-overlay"></div>
            <div class="off-canvas-inner-content">
                <div class="btn-close-off-canvas">
                    <i class="icon-x"></i>
                </div>

                <div class="off-canvas-inner">

                    <div class="search-box-offcanvas">
                        <form>
                            <input type="text" placeholder="Search product...">
                            <button class="search-btn"><i class="icon-search"></i></button>
                        </form>
                    </div>

                    <!-- mobile menu start -->
                    <div class="mobile-navigation">

                        <!-- mobile menu navigation start -->
                        <nav>
                            <ul class="mobile-menu">
                                <li class="current"><a class="link pngFix" href="index.jsp"></a> </li>
                                <%--<li class="menu-item-has-children"><a href="#">Home</a>
                                    <ul class="dropdown">
                                        <li><a href="index.html">Home Page 1</a></li>
                                        <li><a href="index-2.html">Home Page 2</a></li>
                                        <li><a href="index-3.html">Home Page 3</a></li>
                                        <li><a href="index-4.html">Home Page 4</a></li>
                                    </ul>
                                </li>--%>
                                <li class="menu-item-has-children"><a href="#">菜谱大全</a>
                                    <%--<ul class="megamenu dropdown">
                                        <li class="mega-title has-children"><a href="#">Shop Layouts</a>
                                            <ul class="dropdown">
                                                <li><a href="shop.html">Shop Left Sidebar</a></li>
                                                <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                                <li><a href="shop-list-left.html">Shop List Left Sidebar</a></li>
                                                <li><a href="shop-list-right.html">Shop List Right Sidebar</a></li>
                                                <li><a href="shop-fullwidth.html">Shop Full Width</a></li>
                                            </ul>
                                        </li>
                                        <li class="mega-title has-children"><a href="#">Product Details</a>
                                            <ul class="dropdown">
                                                <li><a href="product-details.html">Single Product Details</a></li>
                                                <li><a href="variable-product-details.html">Variable Product Details</a></li>
                                                <li><a href="external-product-details.html">External Product Details</a></li>
                                                <li><a href="gallery-product-details.html">Gallery Product Details</a></li>
                                            </ul>
                                        </li>
                                        <li class="mega-title has-children"><a href="#">Shop Pages</a>
                                            <ul class="dropdown">
                                                <li><a href="error404.html">Error 404</a></li>
                                                <li><a href="compare.html">Compare Page</a></li>
                                                <li><a href="cart.html">Cart Page</a></li>
                                                <li><a href="checkout.html">Checkout Page</a></li>
                                                <li><a href="wishlist.html">Wish List Page</a></li>
                                            </ul>
                                        </li>
                                    </ul>--%>
                                </li>
                                <%--<li class="menu-item-has-children "><a href="#">Blog</a>
                                    <ul class="dropdown">
                                        <li><a href="blog.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-grid.html">Blog Grid Page</a></li>
                                        <li><a href="blog-largeimage.html">Blog Large Image</a></li>
                                        <li><a href="blog-details.html">Blog Details Page</a></li>
                                    </ul>
                                </li>--%>
                                <li class="menu-item-has-children "><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="frequently-questions.html">FAQ</a></li>
                                        <li><a href="my-account.html">My Account</a></li>
                                        <li><a href="login-register.html">login &amp; register</a></li>
                                    </ul>
                                </li>
                                <li><a href="about-us.html">About Us</a></li>
                                <li><a href="contact-us.html">Contact</a></li>
                            </ul>
                        </nav>
                        <!-- mobile menu navigation end -->
                    </div>
                    <!-- mobile menu end -->


                    <div class="header-top-settings offcanvas-curreny-lang-support">
                        <h5>My Account</h5>
                        <ul class="nav align-items-center">
                            <li class="language">English <i class="fa fa-angle-down"></i>
                                <ul class="dropdown-list">
                                    <li><a href="#">English</a></li>
                                    <li><a href="#">French</a></li>
                                </ul>
                            </li>
                            <li class="curreny-wrap">Currency <i class="fa fa-angle-down"></i>
                                <ul class="dropdown-list curreny-list">
                                    <li><a href="#">$ USD</a></li>
                                    <li><a href="#"> € EURO</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <!-- offcanvas widget area start -->
                    <div class="offcanvas-widget-area">
                        <div class="top-info-wrap text-left text-black">
                            <h5>My Account</h5>
                            <ul class="offcanvas-account-container">
                                <li><a href="my-account.html">My account</a></li>
                                <li><a href="cart.html">Cart</a></li>
                                <li><a href="wishlist.html">Wishlist</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- offcanvas widget area end -->
                </div>
            </div>
        </aside>
        <!-- off-canvas menu end -->
    </header>



    <!-- breadcrumb-area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- breadcrumb-list start -->
                    <ul class="breadcrumb-list">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">About Us</li>
                    </ul>
                    <!-- breadcrumb-list end -->
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb-area end -->


    <!-- main-content-wrap start -->
    <div class="main-content-wrap">
        <div class="about-us-wlc section-pt section-pb">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="about-us-wrapper">
                            <div class="title text-center mb-30">
                                <h2>About Us</h2>
                            </div>
                            <div class="about-shop-image">
                                <img src="/assets/images/other/about-us-banner1.jpg" alt="">
                            </div>
                            <div class="about-welcome-text section-pt text-center">
                                <h2>We are a food agency focused on delivering content and utility user-experiences.</h2>
                                <p class="welcome-dec">Adipiscing lacus ut elementum, nec duis, tempor litora turpis dapibus. Imperdiet cursus odio tortor in elementum. Egestas nunc eleifend feugiat lectus laoreet, vel nunc taciti integer cras. Hac pede dis, praesent nibh ac dui mauris sit. Pellentesque mi, facilisi mauris, elit sociis leo sodales accumsan. Iaculis ac fringilla torquent lorem consectetuer, sociosqu phasellus risus urna aliquam, ornare.</p>
                                <div class="signature">
                                    <img src="/assets/images/other/about-us-signature.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="service-area section-pt section-pb-30 service-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <!-- single-service Start -->
                        <div class="single-service mb-20 text-center">
                            <div class="service-image">
                                <img src="/assets/images/icon/about-us-policy1.png" alt="">
                            </div>
                            <div class="service-content mt-15">
                                <h5>Creative Design</h5>
                                <p>Erat metus sodales eget dolor consectetuer, porta ut purus at et alias, nulla ornare velit amet enim</p>
                            </div>
                        </div>
                        <!-- single-service End -->
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <!-- single-service Start -->
                        <div class="single-service mb-20 text-center">
                            <div class="service-image">
                                <img src="/assets/images/icon/about-us-policy2.png" alt="">
                            </div>
                            <div class="service-content mt-15">
                                <h5>100% Money Back Guarantee</h5>
                                <p>Erat metus sodales eget dolor consectetuer, porta ut purus at et alias, nulla ornare velit amet enim</p>
                            </div>
                        </div>
                        <!-- single-service End -->
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <!-- single-service Start -->
                        <div class="single-service mb-20 text-center">
                            <div class="service-image">
                                <img src="/assets/images/icon/about-us-policy3.png" alt="">
                            </div>
                            <div class="service-content mt-15">
                                <h5>Online Support 24/7</h5>
                                <p>Erat metus sodales eget dolor consectetuer, porta ut purus at et alias, nulla ornare velit amet enim</p>
                            </div>
                        </div>
                        <!-- single-service End -->
                    </div>
                </div>
            </div>
        </div>


        <div class="mission-area section-pb section-pt-30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <!-- single-mission Start -->
                        <div class="single-mission mt-30">
                            <div class="image-thum">
                                <img src="/assets/images/other/about-us-banner2-1.jpg" alt="">
                            </div>
                            <div class="content mt-15 text-center">
                                <h4>What do we do?</h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto</p>
                            </div>
                        </div>
                        <!-- single-mission End -->
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <!-- single-mission Start -->
                        <div class="single-mission mt-30">
                            <div class="image-thum">
                                <img src="/assets/images/other/about-us-banner2-2.jpg" alt="">
                            </div>
                            <div class="content mt-15 text-center">
                                <h4>Our Mission</h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto</p>
                            </div>
                        </div>
                        <!-- single-mission End -->
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <!-- single-mission Start -->
                        <div class="single-mission mt-30">
                            <div class="image-thum">
                                <img src="/assets/images/other/about-us-banner2-3.jpg" alt="">
                            </div>
                            <div class="content mt-15 text-center">
                                <h4>History Of Us</h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto</p>
                            </div>
                        </div>
                        <!-- single-mission End -->
                    </div>
                </div>
            </div>
        </div>

        <div class="faq-client-say-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="section-title mb-30">
                            <h3>Why You Choose Us ?</h3>
                        </div>
                        <div class="faq-style-wrap section-pb" id="faq-five">

                            <!-- Panel-default -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        <a id="octagon" class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse1" aria-expanded="true" aria-controls="faq-collapse1"> <span class="button-faq"></span>Fast Free Delivery</a>
                                    </h5>
                                </div>
                                <div id="faq-collapse1" class="collapse show" aria-expanded="true" role="tabpanel" data-parent="#faq-five">
                                    <div class="panel-body">
                                        <p>Nam liber tempor cum soluta nobis eleifend option.</p>
                                        <p>Congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.
                                        </p>
                                        <p> Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                    </div>
                                </div>
                            </div>
                            <!--// Panel-default -->

                            <!-- Panel-default -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse2" aria-expanded="false" aria-controls="faq-collapse2"> <span class="button-faq"></span>More Than 30 Years In The Business</a>
                                    </h5>
                                </div>
                                <div id="faq-collapse2" class="collapse" aria-expanded="false" role="tabpanel" data-parent="#faq-five">
                                    <div class="panel-body">
                                        <p>Nam liber tempor cum soluta nobis eleifend option.</p>
                                        <p>Congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.
                                        </p>
                                        <p> Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                    </div>
                                </div>
                            </div>
                            <!--// Panel-default -->

                            <!-- Panel-default -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse3" aria-expanded="false" aria-controls="faq-collapse3"> <span class="button-faq"></span>100% Organic Foods</a>
                                    </h5>
                                </div>
                                <div id="faq-collapse3" class="collapse" role="tabpanel" data-parent="#faq-five">
                                    <div class="panel-body">
                                        <p>Nam liber tempor cum soluta nobis eleifend option.</p>
                                        <p>Congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.
                                        </p>
                                        <p> Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                    </div>
                                </div>
                            </div>
                            <!--// Panel-default -->

                            <!-- Panel-default -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse4" aria-expanded="false" aria-controls="faq-collapse4"> <span class="button-faq"></span>Best Shopping Strategies</a>
                                    </h5>
                                </div>
                                <div id="faq-collapse4" class="collapse" role="tabpanel" data-parent="#faq-five">
                                    <div class="panel-body">
                                        <p>Nam liber tempor cum soluta nobis eleifend option.</p>
                                        <p>Congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.
                                        </p>
                                        <p> Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                    </div>
                                </div>
                            </div>
                            <!--// Panel-default -->
                        </div>

                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="testimonials-area section-pb">
                            <div class="section-title mb-30">
                                <h3>What Clients Say</h3>
                            </div>
                            <div class="row testimonial-two">
                                <div class="col-lg-12">
                                    <div class="testimonial-wrap-two text-center">
                                        <div class="quote-container">
                                            <div class="quote-image">
                                                <img src="/assets/images/testimonial/testimonial-01.jpg" alt="">
                                            </div>
                                            <div class="author">
                                                <h6>Kathy Young</h6>
                                                <p>CEO of SunPark</p>
                                            </div>
                                            <div class="testimonials-text">
                                                <p>Support and response has been amazing, helping me with several issues I came across and got them solved almost the same day. A pleasure to work with them!</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="testimonial-wrap-two text-center">
                                        <div class="quote-container">
                                            <div class="quote-image">
                                                <img src="/assets/images/testimonial/testimonial-02.jpg" alt="">
                                            </div>
                                            <div class="author">
                                                <h6>Kathy Young</h6>
                                                <p>CEO of SunPark</p>
                                            </div>
                                            <div class="testimonials-text">
                                                <p>Support and response has been amazing, helping me with several issues I came across and got them solved almost the same day. A pleasure to work with them!</p>
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


        <div class="our-brand-area section-pt-100 section-pb-100 brand-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="our-brand-active">
                            <div class="brand-group">
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-01.png" alt=""></a>
                                </div>
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-03.png" alt=""></a>
                                </div>
                            </div>
                            <div class="brand-group">
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-02.png" alt=""></a>
                                </div>
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-04.png" alt=""></a>
                                </div>
                            </div>
                            <div class="brand-group">
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-03.png" alt=""></a>
                                </div>
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-01.png" alt=""></a>
                                </div>
                            </div>
                            <div class="brand-group">
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-04.png" alt=""></a>
                                </div>
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-03.png" alt=""></a>
                                </div>
                            </div>
                            <div class="brand-group">
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-06.png" alt=""></a>
                                </div>
                                <div class="brand-item">
                                    <a href="#"><img src="/assets/images/brand/brand-03.png" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- main-content-wrap end -->



    <!-- 底部固定展示 -->
    <footer>
        <div class="footer-top section-pb section-pt-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-6 col-md-6">
                        <div class="widget-footer mt-40">
                            <h6 class="title-widget">联系信息</h6>
                            <div class="contact-call-wrap">
                                <img src="/assets/images/icon/img-headphone.png" alt="">
                                <div class="footer-call">
                                    <p>24小时热线咨询:</p>
                                    <h6>159 0000 0000</h6>
                                </div>
                            </div>
                            <div class="footer-addres">
                                <p>湖北,武汉市,武昌区,和平大道1178号</p>
                                <p>mofish@163.com</p>
                            </div>

                        </div>

                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="widget-footer mt-40">
                            <h6 class="title-widget">信息</h6>
                            <ul class="footer-list">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">关于我们</a></li>
                                <li><a href="#">快速联系</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-6 col-md-6">
                        <div class="copy-left-text">
                            <p>Copyright &copy; MoFish 2019. All Right Reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<!-- JS
============================================ -->

<!-- Modernizer JS -->
<script src="/assets/js/vendor/modernizr-3.6.0.min.js"></script>
<!-- jQuery JS -->
<script src="/assets/js/vendor/jquery-3.3.1.min.js"></script>
<!-- Bootstrap JS -->
<script src="/assets/js/vendor/popper.min.js"></script>
<script src="/assets/js/vendor/bootstrap.min.js"></script>

<!-- Plugins JS -->
<script src="/assets/js/plugins/slick.min.js"></script>
<script src="/assets/js/plugins/swiper.min.js"></script>
<script src="/assets/js/plugins/jquery.nice-select.min.js"></script>
<script src="/assets/js/plugins/countdown.min.js"></script>
<script src="/assets/js/plugins/image-zoom.min.js"></script>
<script src="/assets/js/plugins/fancybox.js"></script>
<script src="/assets/js/plugins/scrollup.min.js"></script>
<script src="/assets/js/plugins/jqueryui.min.js"></script>
<script src="/assets/js/plugins/ajax-contact.js"></script>

<!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
<!--
<script src="assets/js/vendor/vendor.min.js"></script>
<script src="assets/js/plugins/plugins.min.js"></script>
-->

<!-- Main JS -->
<script src="/assets/js/main.js"></script>

</body>

</html>