<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/6
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/4
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
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
    <script src="/assets/js/vendor/vendor.min.js"></script>
    <script src="/assets/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="/assets/css/style.css">
    <!--<link rel="stylesheet" href="/assets/css/style.min.css">-->
    <style>
        .hotmenushow{
            width: 275px;
            height: 275px;
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
                    <div class="col-lg-6 d-none d-lg-block">

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
                                    <li><a href="${pageContext.request.contextPath}/skip/tocontactus.do">联系我们</a></li>
                                </ul>
                            </nav>

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


        <%--<!-- off-canvas menu start -->--%>
        <%--<aside class="off-canvas-wrapper">--%>
        <%--<div class="off-canvas-overlay"></div>--%>
        <%--<div class="off-canvas-inner-content">--%>
        <%--<div class="btn-close-off-canvas">--%>
        <%--<i class="icon-x"></i>--%>
        <%--</div>--%>

        <%--<div class="off-canvas-inner">--%>

        <%--<div class="search-box-offcanvas">--%>
        <%--<form>--%>
        <%--<input type="text" placeholder="Search product...">--%>
        <%--<button class="search-btn"><i class="icon-search"></i></button>--%>
        <%--</form>--%>
        <%--</div>--%>

        <%--<!-- mobile menu start -->--%>
        <%--<div class="mobile-navigation">--%>

        <%--<!-- mobile menu navigation start -->--%>
        <%--<nav>--%>
        <%--<ul class="mobile-menu">--%>
        <%--<li class="current"><a class="link pngFix" href="index.jsp"></a> </li>--%>
        <%--&lt;%&ndash;<li class="menu-item-has-children"><a href="#">Home</a>--%>
        <%--<ul class="dropdown">--%>
        <%--<li><a href="index.html">Home Page 1</a></li>--%>
        <%--<li><a href="index-2.html">Home Page 2</a></li>--%>
        <%--<li><a href="index-3.html">Home Page 3</a></li>--%>
        <%--<li><a href="index-4.html">Home Page 4</a></li>--%>
        <%--</ul>--%>
        <%--</li>&ndash;%&gt;--%>
        <%--<li class="menu-item-has-children"><a href="#">菜谱大全</a>--%>
        <%--&lt;%&ndash;<ul class="megamenu dropdown">--%>
        <%--<li class="mega-title has-children"><a href="#">Shop Layouts</a>--%>
        <%--<ul class="dropdown">--%>
        <%--<li><a href="shop.html">Shop Left Sidebar</a></li>--%>
        <%--<li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>--%>
        <%--<li><a href="shop-list-left.html">Shop List Left Sidebar</a></li>--%>
        <%--<li><a href="shop-list-right.html">Shop List Right Sidebar</a></li>--%>
        <%--<li><a href="shop-fullwidth.html">Shop Full Width</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="mega-title has-children"><a href="#">Product Details</a>--%>
        <%--<ul class="dropdown">--%>
        <%--<li><a href="product-details.html">Single Product Details</a></li>--%>
        <%--<li><a href="variable-product-details.html">Variable Product Details</a></li>--%>
        <%--<li><a href="external-product-details.html">External Product Details</a></li>--%>
        <%--<li><a href="gallery-product-details.html">Gallery Product Details</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="mega-title has-children"><a href="#">Shop Pages</a>--%>
        <%--<ul class="dropdown">--%>
        <%--<li><a href="error404.html">Error 404</a></li>--%>
        <%--<li><a href="compare.html">Compare Page</a></li>--%>
        <%--<li><a href="cart.html">Cart Page</a></li>--%>
        <%--<li><a href="checkout.html">Checkout Page</a></li>--%>
        <%--<li><a href="wishlist.html">Wish List Page</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--</ul>&ndash;%&gt;--%>
        <%--</li>--%>
        <%--&lt;%&ndash;<li class="menu-item-has-children "><a href="#">Blog</a>--%>
        <%--<ul class="dropdown">--%>
        <%--<li><a href="blog.html">Blog Left Sidebar</a></li>--%>
        <%--<li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>--%>
        <%--<li><a href="blog-grid.html">Blog Grid Page</a></li>--%>
        <%--<li><a href="blog-largeimage.html">Blog Large Image</a></li>--%>
        <%--<li><a href="blog-details.html">Blog Details Page</a></li>--%>
        <%--</ul>--%>
        <%--</li>&ndash;%&gt;--%>
        <%--<li class="menu-item-has-children "><a href="#">Pages</a>--%>
        <%--<ul class="dropdown">--%>
        <%--<li><a href="frequently-questions.html">FAQ</a></li>--%>
        <%--<li><a href="my-account.html">My Account</a></li>--%>
        <%--<li><a href="login-register.html">login &amp; register</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li><a href="about-us.html">About Us</a></li>--%>
        <%--<li><a href="contact-us.html">Contact</a></li>--%>
        <%--</ul>--%>
        <%--</nav>--%>
        <%--<!-- mobile menu navigation end -->--%>
        <%--</div>--%>
        <%--<!-- mobile menu end -->--%>


        <%--<div class="header-top-settings offcanvas-curreny-lang-support">--%>
        <%--<h5>My Account</h5>--%>
        <%--<ul class="nav align-items-center">--%>
        <%--<li class="language">English <i class="fa fa-angle-down"></i>--%>
        <%--<ul class="dropdown-list">--%>
        <%--<li><a href="#">English</a></li>--%>
        <%--<li><a href="#">French</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="curreny-wrap">Currency <i class="fa fa-angle-down"></i>--%>
        <%--<ul class="dropdown-list curreny-list">--%>
        <%--<li><a href="#">$ USD</a></li>--%>
        <%--<li><a href="#"> € EURO</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--</ul>--%>
        <%--</div>--%>

        <%--<!-- offcanvas widget area start -->--%>
        <%--<div class="offcanvas-widget-area">--%>
        <%--<div class="top-info-wrap text-left text-black">--%>
        <%--<h5>My Account</h5>--%>
        <%--<ul class="offcanvas-account-container">--%>
        <%--<li><a href="my-account.html">My account</a></li>--%>
        <%--<li><a href="cart.html">Cart</a></li>--%>
        <%--<li><a href="wishlist.html">Wishlist</a></li>--%>
        <%--<li><a href="checkout.html">Checkout</a></li>--%>
        <%--</ul>--%>
        <%--</div>--%>

        <%--</div>--%>
        <%--<!-- offcanvas widget area end -->--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</aside>--%>
        <%--<!-- off-canvas menu end -->--%>
    </header>



    <!-- breadcrumb-area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- breadcrumb-list start -->
                    <ul class="breadcrumb-list">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">${whichtag}</li>
                    </ul>
                    <!-- breadcrumb-list end -->
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb-area end -->


    <!-- main-content-wrap start -->
    <div class="main-content-wrap shop-page section-ptb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 order-lg-1 order-1">
                    <!-- shop-product-wrapper start -->
                    <div class="shop-product-wrapper">
                        <%-- 这里是顶部的排序啥的--%>
                        <div class="row align-itmes-center">
                            <div class="col">
                                <!-- shop-top-bar start -->
                                <div class="shop-top-bar">
                                    <!-- product-view-mode start -->

                                    <div class="product-mode">
                                        <!--shop-item-filter-list-->
                                        <ul class="nav shop-item-filter-list" role="tablist">
                                            <li class="active"><a class="active grid-view" data-toggle="tab" href="#grid"><i class="ion-ios-keypad-outline"></i></a></li>
                                            <li><a class="list-view" data-toggle="tab" href="#list"><i class="ion-ios-list-outline"></i></a></li>
                                        </ul>
                                        <!-- shop-item-filter-list end -->
                                    </div>
                                    <!-- product-view-mode end -->
                                    <!-- product-short start -->
                                    <div class="product-short">
                                        <p>Sort By :</p>
                                        <select class="nice-select" name="sortby">
                                            <option value="trending">相关性</option>
                                            <option value="sales">名称顺序</option>
                                            <option value="sales">名称逆序</option>
                                            <option value="rating">价格由低到高</option>
                                            <option value="date">Rating(Lowest)</option>
                                        </select>
                                    </div>
                                    <!-- product-short end -->
                                </div>
                                <!-- shop-top-bar end -->
                            </div>
                        </div>

                        <!-- shop-products-wrap start -->
                        <%-- 菜谱概要信息 --%>
                        <div class="shop-products-wrap">
                            <div class="tab-content">
                                <div class="tab-pane active" id="grid">
                                    <div class="shop-product-wrap">
                                        <div class="row row-8">

                                            <%-- 事件：单个菜谱信息--%>

                                            <c:forEach begin="0" end="${menuInfoPage.list.size()-1}" var="num">
                                                <div class="product-col col-lg-3 col-md-4 col-sm-6">
                                                    <div class="product-col">
                                                        <!-- Single Product Start -->
                                                        <div class="single-product-wrap mt-10">
                                                                <%-- 菜谱展示 --%>
                                                            <div class="product-image">
                                                                <a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${userInfoPage.list.get(num).uid}&mid=${menuInfoPage.list.get(num).mid}">
                                                                    <img class="hotmenushow" src="/assets/data/${menuInfoPage.list.get(num).mid}/main.jpg" alt=""></a>
                                                                    <%--<span class="onsale">Sale!</span>--%>
                                                            </div>
                                                            <div class="product-button">
                                                                <a href="#" class="add-to-wishlist">点赞数${menuLikePage.list.get(num).mlcount}<i class="icon-heart"></i></a>
                                                            </div>
                                                            <div class="product-content">
                                                                <h6 class="product-name">${menuInfoPage.list.get(num).mname}</h6>
                                                                <h6 class="product-name">${userInfoPage.list.get(num).uname}</h6>

                                                                <div class="product-button-action">
                                                                    <a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${userInfoPage.list.get(num).uid}&mid=${menuInfoPage.list.get(num).mid}" class="add-to-cart">点我查看做法</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- Single Product End -->
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="list">
                                    <c:forEach begin="0" end="${menuInfoPage.list.size()-1}" var="num">
                                        <div class="shop-product-list-wrap">
                                            <div class="row product-layout-list">
                                                <div class="col-lg-3 col-md-3">
                                                    <!-- single-product-wrap start -->
                                                    <div class="single-product">
                                                        <div class="product-image">
                                                            <a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${userInfoPage.list.get(num).uid}&mid=${menuInfoPage.list.get(num).mid}">
                                                                <img class="hotmenushow" src="/assets/data/${menuInfoPage.list.get(num).mid}/main.jpg" alt="">
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- single-product-wrap end -->
                                                </div>

                                                <div class="col-lg-6 col-md-6">
                                                    <div class="product-content-list text-left">
                                                        <div class="price-box">
                                                            <span class="new-price"> ${menuInfoPage.list.get(num).mname}	</span>
                                                        </div>
                                                        <p>${userInfoPage.list.get(num).uname}</p>
                                                        <div class="product-button">
                                                            <a href="#" class="add-to-wishlist">点赞数${menuLikePage.list.get(num).mlcount}<i class="icon-heart"></i></a>
                                                        </div>

                                                        <a class="detail-link quickview" href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${userInfoPage.list.get(num).uid}&mid=${menuInfoPage.list.get(num).mid}"> <i class="icon-eye2"></i> 查看该菜谱</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            </div>
                        </div>
                        <!-- shop-products-wrap end -->

                            <%-- 事件：分页 --%>
                            <!-- paginatoin-area start -->
                            <input type="hidden" id="keyword" value="${searchString}">
                            <div class="paginatoin-area">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <ul class="pagination-box">
                                            <%--<li><a aria-label="Previous" href="${pageContext.request.contextPath}/search/searchMenu.do?mname=${searchString}&page=1&size=8" >Fist</a></li>--%>
                                            <li><a aria-label="Previous" onclick="first()">Fist</a></li>
                                            <li><a aria-label="Previous" onclick="previous()">Previous</a></li>
                                            <c:forEach begin="1" end="${menuInfoPage.pages}" var="pagenum">
                                                <li><a onclick="middle(${pagenum})">${pagenum}</a></li>
                                            </c:forEach>
                                            <li><a class="Next" onclick="next()">Next</a></li>
                                            <li><a class="last-elem" onclick="last()" aria-label="Last">Last</a></li>
                                                <li><a>第${menuInfoPage.pageNum}页</a> </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <script type="text/javascript">
                                function first(){
                                    var keyword = document.getElementById("keyword");
                                    var searchText= jQuery.trim(keyword.value);
                                    var searchUrl ="${pageContext.request.contextPath}/search/searchMenu.do?mname=" + encodeURI(encodeURI(searchText)) + "&page=1&size=8";   //使用encodeURI编码
                                    window.location.href =searchUrl;
                                }

                                function previous(){
                                    var keyword = document.getElementById("keyword");
                                    var searchText= jQuery.trim(keyword.value);
                                    var searchUrl ="${pageContext.request.contextPath}/search/searchMenu.do?mname=" + encodeURI(encodeURI(searchText)) + "&page=${menuInfoPage.pageNum - 1}&size=8";   //使用encodeURI编码
                                    window.location.href =searchUrl;
                                }

                                function middle(pagenum){
                                    var keyword = document.getElementById("keyword");
                                    var searchText= jQuery.trim(keyword.value);
                                    var searchUrl ="${pageContext.request.contextPath}/search/searchMenu.do?mname=" + encodeURI(encodeURI(searchText)) + "&page="+pagenum+"&size=8";   //使用encodeURI编码
                                    window.location.href =searchUrl;
                                }

                                function next(){
                                    var keyword = document.getElementById("keyword");
                                    var searchText= jQuery.trim(keyword.value);
                                    var searchUrl ="${pageContext.request.contextPath}/search/searchMenu.do?mname=" + encodeURI(encodeURI(searchText)) + "&page=${menuInfoPage.pageNum + 1}&size=8";   //使用encodeURI编码
                                    window.location.href =searchUrl;
                                }

                                function last(){
                                    var keyword = document.getElementById("keyword");
                                    var searchText= jQuery.trim(keyword.value);
                                    var searchUrl ="${pageContext.request.contextPath}/search/searchMenu.do?mname=" + encodeURI(encodeURI(searchText)) + "&page=${menuInfoPage.pages}&size=8";   //使用encodeURI编码
                                    window.location.href =searchUrl;
                                }
                            </script>

                        <!-- paginatoin-area end -->
                    </div>
                    <!-- shop-product-wrapper end -->
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
                                <li><a href="#">我的主页</a></li>
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
<script src="/assets/js/vendor/vendor.min.js"></script>
<script src="/assets/js/plugins/plugins.min.js"></script>
-->

<!-- Main JS -->
<script src="/assets/js/main.js"></script>


</body>

</html>