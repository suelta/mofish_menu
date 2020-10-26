<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/3
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--http://java.sun.com/jstl/core_rt--%>
<%--http://java.sun.com/jsp/jstl/core--%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>中华小当家</title>
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
    <link rel="stylesheet" href="/assets/css/style.css">
    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
    <!--
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->

    <!--<link rel="stylesheet" href="assets/css/style.min.css">-->
        <style type="text/css">
        /*<--清除底部三像素距离-->*/
        img {
            vertical-align: top;
        }

        .innerbox {
            width: 870px;
            height: 425px;
            margin: 20px auto;
            padding: 5px;
            border: 1px solid #ccc;
            position: relative;
        }

        .inner {
            position: relative;
            width: 870px;
            height: 425px;
            background-color: pink;
            overflow: hidden;
        }

        .inner ul {
            width: 1000%;
            list-style: none;
            position: absolute;
            top: 0;
            left: 0;
        }

        .inner ul li {
            float: left;
        }

        .focusD {
            position: absolute;
            left: 0;
            top: 50%;
            width: 870px;
            padding: 0 10px;
            height: 30px;
            box-sizing: border-box;
            display: none;
        }
        .inner ol {
            position: absolute;
            right: 30px;
            bottom: 10px;
        }
        .inner ol li {
            width: 15px;
            display: inline-block;
            height: 15px;
            margin: 0 3px;
            cursor: pointer;
            line-height: 15px;
            text-align: center;
            background-color: #fff;
        }
        /*当前的高亮的小圆点*/
        .inner ol .current {
            background-color: orange;
            color: #fff;
        }

        .focusD span {
            display: inline-block;
            width: 25px;
            font-size: 24px;
            height: 30px;
            color: #ccc;
            line-height: 30px;
            text-align: center;
            background: rgba(255, 255, 255, 0.3);
            cursor: pointer;
        }

        #left {
            float: left;
        }

        #right {
            float: right;
        }
        .hotmenushow{
            width: 275px;
            height: 275px;
            display: block;
        }
        .mega-menu{
            width:400px;
            height: 330px;
        }
        .daymenushow{
            width: 330px;
            height: 330px;
            display: block;
        }
    </style>
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
                            <a href="${pageContext.request.contextPath}/mainmenu/getMainMenu.do"><img src="/assets/images/logo/logo.png" alt=""></a>
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
                                            <li><a href="#">一日三餐</a>
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



    <!-- 侧边栏 -->
    <div class="hero-slider-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="categories-menu-wrap mt-30">
                        <div class="categories_menu">
                            <div class="categories_title">
                                <h5 class="categori_toggle">食谱分类</h5>
                            </div>
                            <div class="categories_menu_toggle">
                                <ul>
                                    <li class="menu_item_children categorie_list"><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=1&page=1&size=8">川&emsp;菜<i class="fa fa-angle-right"></i></a>
                                        <%--<ul class="categories_mega_menu">
                                            <li><a href="#">Fish</a></li>
                                            <li><a href="#"> Shellfish</a></li>
                                            <li><a href="#">Roe</a></li>
                                        </ul>--%>
                                    </li>
                                    <li class="menu_item_children"><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=2&page=1&size=8">粤&emsp;菜<i class="fa fa-angle-right"></i></a>
                                        <%--<ul class="categories_mega_menu">
                                            <li><a href="#">Compound Butter</a></li>
                                            <li><a href="#">Cultured Butter</a></li>
                                            <li><a href="#">Whipped Butter</a></li>
                                        </ul>--%>
                                    </li>
                                    <li class="menu_item_children"><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=3&page=1&size=8">鲁&emsp;菜<i class="fa fa-angle-right"></i></a>
                                        <%--<ul class="categories_mega_menu">
                                            <li><a href="#">Mango</a></li>
                                            <li><a href="#">Plumsor</a></li>
                                            <li><a href="#">Raisins</a></li>
                                        </ul>--%>
                                    </li>
                                    <li class="menu_item_children"><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=4&page=1&size=8">苏&emsp;菜<i class="fa fa-angle-right"></i></a>
                                        <%--<ul class="categories_mega_menu">
                                            <li><a href="#">Mango</a></li>
                                            <li><a href="#">Plumsor</a></li>
                                            <li><a href="#">Raisins</a></li>
                                        </ul>--%>
                                    </li>
                                    <li class="menu_item_children"><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=5&page=1&size=8">浙&emsp;菜<i class="fa fa-angle-right"></i></a>
                                        <%-- <ul class="categories_mega_menu">
                                             <li><a href="#">Mango</a></li>
                                             <li><a href="#">Plumsor</a></li>
                                             <li><a href="#">Raisins</a></li>
                                         </ul>--%>
                                    </li>
                                    <li class="menu_item_children"><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=6&page=1&size=8">徽&emsp;菜<i class="fa fa-angle-right"></i></a>
                                        <%--<ul class="categories_mega_menu">
                                            <li><a href="#">Mango</a></li>
                                        </ul>--%>
                                    </li>
                                    <li class="menu_item_children"><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=7&page=1&size=8">闵&emsp;菜<i class="fa fa-angle-right"></i></a>
                                        <%--<ul class="categories_mega_menu">
                                            <li><a href="#">Mango</a></li>
                                            <li><a href="#">Plumsor</a></li>
                                        </ul>--%>
                                    </li>
                                    <li class="menu_item_children"><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=8&page=1&size=8">湘&emsp;菜<i class="fa fa-angle-right"></i></a>
                                        <%--<ul class="categories_mega_menu">
                                            <li><a href="#">Mango</a></li>
                                            <li><a href="#">Raisins</a></li>
                                        </ul>--%>
                                    </li>
                                    <li class="hide-child"><a href="shop.html">Fruits</a></li>
                                    <%--<li class="categories-more-less ">
                                        <a class="more-default"><span class="c-more"></span>+ More Categories</a>
                                        <a class="less-show"><span class="c-more"></span>- Less Categories</a>
                                    </li>--%>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                <div class="innerbox">
                <div id="box" class="all">
                    <div class="inner">  <!-- 相框-->
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=1&mid=81"><img src="/assets/images/slider/slide-bg-1.jpg" width="870" height="450" alt=""></a></li>
                            <li><a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=1&mid=71"><img src="/assets/images/slider/slide-bg-2.jpg" width="870" height="450" alt=""></a></li>
                            <li><a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=1&mid=1"><img src="/assets/images/slider/slide-bg-3.jpg" width="870" height="450" alt=""></a></li>
                            <li><a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=1&mid=65"><img src="/assets/images/slider/slide-bg-4.jpg" width="870" height="450" alt=""></a></li>

                        </ul>
                        <ol> <!--里面存放小圆点-->

                        </ol>
                    </div>
                    <div class="focusD" id="arr">
                        <span id="left"><</span>
                        <span id="right">></span>
                    </div>
                </div>
                </div>
                </div>
            </div>
        </div>


    </div>
    <!-- Hero Section End -->

    <!-- 最热门菜谱 -->
    <div class="product-area section-pt-30">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <!-- Section Title Start -->
                    <div class="section-title">
                        <h3>最热菜谱</h3>
                    </div>
                    <!-- Section Title End -->
                </div>
                <div class="col-lg-6 col-md-6">
                    <!-- Section Title Start -->
                    <div class="view-all-product text-right">
                        <a href="${pageContext.request.contextPath}/search/searchMenu.do?page=1&size=8">显示所有的菜谱 <i class="icon-chevrons-right"></i></a>
                    </div>
                    <!-- Section Title End -->
                </div>
            </div>

            <div class="row row-8 product-two-row-4">
            <%-- 事件：查询最热菜谱 --%>
            <c:forEach begin="0" end="${popMenuLikeList.size()-1}" var="num">
                <div class="product-col">
                    <!-- Single Product Start -->
                    <div class="single-product-wrap mt-10">
                        <%-- 菜谱展示 --%>
                        <div class="product-image">
                            <a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${popUserInfoList.get(num).uid}&mid=${popMenuInfoList.get(num).mid}">
                                <img class="hotmenushow" src="/assets/data/${popMenuInfoList.get(num).mid}/main.jpg" alt=""></a>
                            <%--<span class="onsale">Sale!</span>--%>
                        </div>
                        <div class="product-button">
                            <a href="#" class="add-to-wishlist">点赞数${popMenuLikeList.get(num).mlcount}
                                <div >
                                    <i onclick="heartchang()" name="iconheart" class="icon-heart"></i>
                                </div></a>
                        </div>
                        <div class="product-content">
                            <h6 class="product-name">${popMenuInfoList.get(num).mname}</h6>
                            <h6 class="product-name">${popUserInfoList.get(num).uname}</h6>

                            <div class="product-button-action">
                                <a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${popUserInfoList.get(num).uid}&mid=${popMenuInfoList.get(num).mid}" class="add-to-cart">点我查看做法</a>
                            </div>
                        </div>
                    </div>
                    <!-- Single Product End -->
                </div>
            </c:forEach>
            </div>

        </div>
    </div>
    <!-- Product Area Start -->

    <!-- 每日推荐 -->
    <div class="deals-offer-area section-pt-100 section-pb-40 dealis-offer-bg">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-lg-3 col-md-4">
                    <div class="deals-offer-title mb-20">
                        <h2>每日推荐</h2>
                        <p>让你不再为吃什么而苦恼</p>
                    </div>
                </div>
                <div class="col-xl-10 col-lg-9 col-md-8">
                    <div class="row row-8 product-active-lg-4">
                        <%--事件：每日推荐--%>
                        <c:forEach begin="0" end="${dayMenuInfoList.size()-1}" var="num2">
                        <div class="product-col">
                            <!-- Single Product Start -->
                            <div class="single-product-wrap mt-30">
                                <div class="product-image">
                                    <a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${dayUserInfoList.get(num2).uid}&mid=${dayMenuInfoList.get(num2).mid}">
                                    <img class="daymenushow" src="/assets/data/${dayMenuInfoList.get(num2).mid}/main.jpg" alt=""></a>
                                    <!-- countdown start -->
                                    <%--<div class="countdown-deals" data-countdown="2020/03/01"></div>--%>
                                    <!-- countdown end -->
                                </div>
                                <div class="product-button">
                                    <a href="#" class="add-to-wishlist">点赞数${dayMenuLikeList.get(num2).mlcount}<i class="icon-heart"></i></a>
                                </div>
                                <div class="product-content">
                                    <h6 class="product-name">${dayMenuInfoList.get(num2).mname}</h6>
                                    <h6 class="product-name">${dayUserInfoList.get(num2).uname}</h6>
                                    <div class="product-button-action">
                                        <a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${dayUserInfoList.get(num2).uid}&mid=${dayMenuInfoList.get(num2).mid}" class="add-to-cart">点我查看详情</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Product End -->
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Deals Off Area End -->

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
<script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
<!-- jQuery JS -->
<script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
<!-- Bootstrap JS -->
<script src="assets/js/vendor/popper.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>

<!-- Plugins JS -->
<script src="assets/js/plugins/slick.min.js"></script>
<script src="assets/js/plugins/swiper.min.js"></script>
<script src="assets/js/plugins/jquery.nice-select.min.js"></script>
<script src="assets/js/plugins/countdown.min.js"></script>
<script src="assets/js/plugins/image-zoom.min.js"></script>
<script src="assets/js/plugins/fancybox.js"></script>
<script src="assets/js/plugins/scrollup.min.js"></script>
<script src="assets/js/plugins/jqueryui.min.js"></script>
<script src="assets/js/plugins/ajax-contact.js"></script>

<!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
<!--
<script src="assets/js/vendor/vendor.min.js"></script>
<script src="assets/js/plugins/plugins.min.js"></script>
-->

<!-- Main JS -->
<script src="assets/js/main.js"></script>
<script>
    var index=0;
    //获取最外面的div
    var box = my$("box");
    //获取相框
    var inner = box.children[0];
    //获取去相框的宽度
    var imgWidth = inner.offsetWidth;
    // 获取ul
    var ulObj = inner.children[0];
    //获取ul中所有的li
    var list = ulObj.children;
    //获取ol
    var olObj = inner.children[1];
    //获取焦点
    var arr = my$("arr");

    //创建小按钮-----根据ul中li的个数
    for (var i = 0; i < list.length; i++) {
        var liObjs = document.createElement("li");
        olObj.appendChild(liObjs);
        liObjs.innerHTML = (i + 1);
        //在ol中每个li中增加自定义属性，添加索引值
        liObjs.setAttribute("index", i);
        //注册鼠标进入事件
        liObjs.onmouseover = function () {
            //先干掉所有背景颜色
            for (var j = 0; j < olObj.children.length; j++) {
                olObj.children[j].removeAttribute("class");
            }
            //设置当前鼠标进来的类样式
            this.className = "current";
            //获取ol中li的索引值
            index = this.getAttribute("index");
            //移动ul
            animate(ulObj, -index * imgWidth); //移动动画函数
        };
    }
    //设置第一个ol中li的背景颜色
    olObj.children[0].className = "current";
    //克隆ol中第一个li放到最后一个
    ulObj.appendChild(ulObj.children[0].cloneNode(true));


    var timeId=setInterval(clickHandle,3000);

    my$("box").onmouseover=function(){
        arr.style.display="block";
        clearInterval(timeId);
    };
    //点击右边按钮
    my$("right").onclick=clickHandle;
    function clickHandle() {
        if (index==ulObj.children.length-1){
            ulObj.style.left=0+"px";
            index=0;
        }
        index++;
        animate(ulObj,-index*imgWidth);
        if (index==list.length-1){
            olObj.children[0].className="current";
            olObj.children[olObj.children.length-1].className="";
        }else {
            for (var i=0;i<olObj.children.length;i++){
                olObj.children[i].className="";
            }
            olObj.children[index].className="current";
        }
    };
    //点击左边按钮
    my$("left").onclick=function () {
        if (index==0){
            index=list.length-1;
            ulObj.style.left=-index*imgWidth+"px";
        }
        index--;
        animate(ulObj,-index*imgWidth);
        for (var i=0;i<olObj.children.length;i++){
            olObj.children[i].className="";
        }
        olObj.children[index].className="current";
    };

    my$("box").onmouseout=function(){
        arr.style.display="none";
        timeId=setInterval(clickHandle,3000);
    };



    // 设置一个元素，移动到指定位置
    function animate(element, target) {
        clearInterval(element.timeId);
        element.timeId = setInterval(function () {
            var current = element.offsetLeft;
            var step = 9;
            step = current > target ? -step : step;
            current += step;
            if (Math.abs(target - current) > Math.abs(step)) {
                element.style.left = current + "px";
            } else {
                clearInterval(element.timeId);
                element.style.left = target + "px";
            }
        }, 10);
    }
    function my$(id) {
        return document.getElementById(id);
    }


    function heartchang(event) {
        alert("hhhhh");
        // event.style.backgroundColor="#F000";

        // alert(event.id);
        var allstar = document.getElementsByName("iconheart");
        alert(allstar.length);
        for(var i = 0; i< allstar.length;i++){
            allstar.item(i).style.backgroundColor = "#F00";
        }
    }
</script>
</body>

</html>
