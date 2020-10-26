<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="com.mofish.bean.MenuMethod" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mofish.bean.MenuComment" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.mofish.bean.UserInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html class="no-js" lang="en">
<% String path = request.getContextPath();%>
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

    <style>
        .bigmarginbottom{
            margin-bottom: 20px;
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
                                <li><a href="#"><%=((UserInfo)request.getSession().getAttribute("userinfo")).getUname()%></a></li>
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
                        <li class="breadcrumb-item active">Product Details</li>
                    </ul>
                    <!-- breadcrumb-list end -->
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb-area end -->


    <!-- 事件：菜谱基本信息 -->
    <div class="main-content-wrap shop-page section-ptb">
        <div class="container">
            <div class="row single-product-area product-details-inner">
                <div class="col-lg-5 col-md-6">
                    <!-- Product Details Left -->
                    <div class="product-large-slider">
                        <div class="pro-large-img img-zoom">
                            <img src="/assets/data/${menuinfo.mid}/main.jpg" alt="product-details" />
                            <a href="/assets/data/${menuinfo.mid}/main.jpg" data-fancybox="images"><i class="fa fa-search"></i></a>
                        </div>
                       <%-- <div class="pro-large-img img-zoom">
                            <img src="assets/images/product/details-02-600x600.jpg" alt="product-details" />
                            <a href="assets/images/product/details-02-600x600.jpg" data-fancybox="images"><i class="fa fa-search"></i></a>
                        </div>
                        <div class="pro-large-img img-zoom">
                            <img src="assets/images/product/details-03-600x600.jpg" alt="product-details" />
                            <a href="assets/images/product/details-03-600x600.jpg" data-fancybox="images"><i class="fa fa-search"></i></a>
                        </div>
                        <div class="pro-large-img img-zoom">
                            <img src="assets/images/product/details-04-600x600.jpg" alt="product-details" />
                            <a href="assets/images/product/details-04-600x600.jpg" data-fancybox="images"><i class="fa fa-search"></i></a>
                        </div>
                        <div class="pro-large-img img-zoom">
                            <img src="assets/images/product/details-05-600x600.jpg" alt="product-details" />
                            <a href="assets/images/product/details-05-600x600.jpg" data-fancybox="images"><i class="fa fa-search"></i></a>
                        </div>--%>

                    </div>
                   <%-- <div class="product-nav">
                        <div class="pro-nav-thumb">
                            <img src="assets/images/product/01-150x150.jpg" alt="product-details" />
                        </div>
                        <div class="pro-nav-thumb">
                            <img src="assets/images/product/02-150x150.jpg" alt="product-details" />
                        </div>
                        <div class="pro-nav-thumb">
                            <img src="assets/images/product/03-150x150.jpg" alt="product-details" />
                        </div>
                        <div class="pro-nav-thumb">
                            <img src="assets/images/product/04-150x150.jpg" alt="product-details" />
                        </div>
                        <div class="pro-nav-thumb">
                            <img src="assets/images/product/05-150x150.jpg" alt="product-details" />
                        </div>
                    </div>--%>
                    <!--// Product Details Left -->
                </div>

                <div class="col-lg-7 col-md-6">
                    <div class="product-details-view-content">
                        <div class="product-info">
                            <%-- 事件：菜谱主要信息 --%>
                                <h3>${menuinfo.mname}<br>MID:${menuinfo.mid}</h3>
                                <h4> UP：${userinfo.uname}&nbsp;&nbsp;&nbsp;&nbsp;UID:${userinfo.uid}</h4>
                                <div>
                                    <strong>主食材：</strong><p>${menudesc.mdingredients}</p>
                                </div>
                                <div>
                                    <strong>辅食材：</strong><p>${menudesc.mdexcipient}</p>
                                </div>
                                <div>
                                    <strong>菜谱简介</strong><p>${menudesc.mddesc}</p>
                                </div>
                                <div>
                                    <strong>菜谱标签<br></strong>
                                    <c:forEach begin="0" end="${tagList.size()-1}" var="num">
                                        ${tagList.get(num).tcdisc}&emsp;
                                    </c:forEach>
                                </div>

                            <%--<div class="product-rating d-flex">
                                <ul class="d-flex">
                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                </ul>
                                <a href="#reviews">(<span class="count">1</span> customer review)</a>
                            </div>--%>
                            <%--<div class="price-box">
                                <span class="new-price">$70.00</span>
                                <span class="old-price">$78.00</span>
                            </div>--%>
                            <%--这里是描述--%>
                            <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p>--%>

                            <%--<div class="single-add-to-cart">
                                <form action="#" class="cart-quantity d-flex">
                                    <div class="quantity">
                                        <div class="cart-plus-minus">
                                            <input type="number" class="input-text" name="quantity" value="1" title="Qty">
                                        </div>
                                    </div>
                                    <button class="add-to-cart" type="submit">Add To Cart</button>
                                </form>
                            </div>--%>
                            <ul class="single-add-actions">
                                <li class="add-to-wishlist">
                                    <button class="btn-success btn" onclick="addLike('${userinfo.uid}', '${menulike.mid}')"><i class="icon-heart"></i><span id="likecount">${menulike.mlcount}</span></button>

                                    <script type="text/javascript">
                                        function addLike(uid, mid){
                                            $.ajax({
                                                type:"post",
                                                url:"${pageContext.request.contextPath}/toaddlike/addLikeCount.do",
                                                data: {"uid":uid, "mid":mid},
                                                dataType: "json",
                                                success: function(data) {
                                                    if (data.flag == "ok") {
                                                        var menulikecount = parseInt($("#likecount").html()) + 1;
                                                        $('#likecount').html(menulikecount);
                                                    }
                                                }
                                            })
                                        }
                                    </script>
                                    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        <% if(request.getSession().getAttribute("userinfo")!= null){%>
                                    <button class="btn-warning btn" onclick="addCollect('<%=((UserInfo)request.getSession().getAttribute("userinfo")).getUid()%>', '${menulike.mid}')"><i class="icon-shopping-bag2">收藏</i></button>
                                    <script type="text/javascript">
                                        function addCollect(uid, mid){
                                            $.ajax({
                                                type:"post",
                                                url:"${pageContext.request.contextPath}/toaddcollect/addcollect.do",
                                                data: {"uid":uid, "mid":mid},
                                                dataType: "json",
                                                success: function(data) {
                                                    if (data.flag == "success") {
                                                        alert('收藏成功！')
                                                    }
                                                    else if(data.flag == "failure"){
                                                        alert('收藏过啦！');
                                                    }else if(data.flag == "unlogin"){
                                                        alert('请登录后收藏！');
                                                    }
                                                }
                                            })
                                        }
                                    </script>
                                <%
                                }
                                %>

                                </li>

                                        <%-- <li class="add-to-compare">
                                    <div class="compare-button"><a href="compare.html"><i class="icon-sliders"></i> Compare</a></div>
                                </li>--%>
                            </ul>
                            <%--<ul class="stock-cont">
                                <li class="product-sku">Sku: <span>P006</span></li>
                                <li class="product-stock-status">Categories: <a href="#">Butter & Eggs,</a> <a href="#">Cultured Butter</a></li>
                                <li class="product-stock-status">Tag: <a href="#">Man</a></li>
                            </ul>
                            <div class="share-product-socail-area">
                                <p>Share this product</p>
                                <ul class="single-product-share">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                </ul>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>

            <div class="product-description-area section-pt">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product-details-tab">
                            <ul role="tablist" class="nav">
                                <li class="active" role="presentation">
                                    <a data-toggle="tab" role="tab" href="#description" class="active">做法</a>
                                </li>
                                <li role="presentation">
                                    <a data-toggle="tab" role="tab" href="#reviews">评论区</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="product_details_tab_content tab-content">
                            <!-- 事件：做法 -->
                            <div class="product_tab_content tab-pane active" id="description" role="tabpanel">
                                <div class="product_description_wrap  mt-30">
                                    <div class="product_desc mb-30">
                                        <% String[] strs = ((MenuMethod)request.getAttribute("menumethod")).getMmdesc().split("\n");
                                            for(String splitstr:strs){
                                                if(splitstr.startsWith("meunphotosteps")||splitstr.startsWith("menuphotostep")||splitstr.startsWith("Menuphotosteps")){
                                        %>
                                        <img src="/assets/data/${menuinfo.mid}/<%=splitstr%>.jpg">
                                        <%}else{%>
                                        <p><%= splitstr%></p>
                                        <%}}%>
                                    </div>

                                </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div class="product_tab_content tab-pane" id="reviews" role="tabpanel">
                                <div class="review_address_inner mt-30" id="allcomment">
                                    <!-- Start Single Review -->
                                    <!-- 事件：评论 -->
                                    <% List<MenuComment> mcs = ((List<MenuComment>)request.getAttribute("menuconmment"));
                                        for(MenuComment menuComment:mcs){
                                            DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
                                            String datestr = format1.format(menuComment.getMctime());
                                    %>
                                    <div class="pro_review bigmarginbottom">
                                        <div class="review_thumb">
                                            <img alt="review images" src="/assets/images/personphoto/txcomment.png">
                                        </div>
                                        <div class="review_details">
                                            <div class="review_info mb-10">
                                                <!-- 发表评论的日期 -->
                                                <h5><%= menuComment.getUid()%> &nbsp;&nbsp;&nbsp;&nbsp;<span> <%=datestr%></span></h5>

                                            </div>
                                            <p><%= menuComment.getMctext()%></p>
                                        </div>
                                    </div>
                                    <%}%>
                                    <!-- End Single Review -->
                                </div>
                                <!-- Start RAting Area -->

                                <ul class="nav nav-list"><li class="divider"></li></ul>
                                <div class="rating_wrap mt-50">
                                    <h5 class="rating-title-1"> 添加评论 </h5>
                                </div>
                                <!-- End RAting Area -->
                                <% if(request.getSession().getAttribute("userinfo") == null){%>
                                    <p>请登录后进行评论</p>
                                <%
                                }else{
                                %>
                                <div class="comments-area comments-reply-area">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <%-- 事件：上传评论 --%>
                                            <form action="${pageContext.request.contextPath}/toaddmenucomment/addMenuComment.do" method="post">
                                                <div class="comment-form-comment mt-15">
                                                    <label>评 论</label>
                                                    <textarea class="comment-notes" required="required" name="textareacomment"></textarea>
                                                </div>
                                                <div class="comment-form-submit mt-15">
                                                    <button class="comment-submit" type="button" id="buttonclick">提交评论</button>
                                                    <%--<input id="buttonclick" type="button" value="提交评论"  class="comment-submit">--%>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                            <!-- End Single Content -->
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
                                <img src="<%=path%>/assets/images/icon/img-headphone.png" alt="">
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
<%--<script src="https://cdn.bootcss.com/jquery/1.10.0/jquery.js"></script>--%>
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

<script>



    $(function () {
    $("#buttonclick").click(function () {
        var now = new Date();
        var year = now.getFullYear(); //得到年份
        var month = now.getMonth()+1;//得到月份
        var date = now.getDate();//得到日期
        if (month < 10) month = "0" + month ;
        if (date < 10) date = "0" + date;
        var commenttime=year+'-'+month+'-'+date;
        var mctext =document.getElementsByName("textareacomment")[0].value;
        var mid = '${menuinfo.mid}';
        var uid = ${sessionScope.userinfo.uid};

        $('#allcomment').append(
            '<div class="pro_review bigmarginbottom">\n'+
             '                            <div class="review_thumb">\n'+
             '                               <img alt="review images" src="/assets/images/personphoto/txcomment.png">'+
             '                           </div>'+
             '                           <div class="review_details">'+
              '                              <div class="review_info mb-10">'+
              '                                  <h5>'+uid+'&nbsp;&nbsp;&nbsp;&nbsp; <span>'+commenttime+'</span></h5>'+

              '                              </div>'+
              '                              <p>'+mctext+'</p>'+
              '                          </div>'+
              '                      </div>');

        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/toaddmenucomment/addMenuComment.do",
            data:{mctext:mctext,uid:uid,mid:mid},
            dataType:"json",
            success:function(data){

            }
        });
        return false;

            // var url = this.id;
            // var cpuimg=$("#"+url).attr("cpuimg");
            // var cpuprice=$("#"+url).attr("cpuprice");
            // var cpuname=$("#"+url).attr("cpuname")
            // var totalnumber=sessionStorage.getItem('totalnumber');
            // if(totalnumber==null){
            //     totalnumber=0;
            // }
            // totalnumber=parseInt(totalnumber)+1;
            // sessionStorage.setItem('totalnumber',totalnumber);
            // document.getElementById("hardwarenumber").innerText=totalnumber.toString();
            // var totalprice=sessionStorage.getItem('totalprice')
            // if(totalprice==null){
            //     totalprice=0;
            // }
            // var price=parseInt(cpuprice)+parseInt(totalprice)
            // sessionStorage.setItem('totalprice',price);
            // document.getElementById("totalprice").innerHTML=price.toString();
            // alert(cpuimg+cpuprice+cpuname);
            // sessionStorage.setItem('url',url);
            // $('#content').append(' <li>\n' +
            //     '            <a href="product-details-right-sidebar.html" class="minicart-product-image">\n' +
            //     '                <img src='+cpuimg+' alt="cart products">\n' +
            //     '                </a>\n' +
            //     '                <div class="minicart-product-details">\n' +
            //     '                <h6><a href="product-details-right-sidebar.html">'+cpuname+'</a></h6>\n' +
            //     '            <span>'+cpuprice+'</span>\n' +
            //     '            </div>\n' +
            //     '            <button class="close" title="Remove">\n' +
            //     '                <i class="fa fa-close"></i>\n' +
            //     '                </button>\n' +
            //     '                </li>');
        });
    })



    <%--$("#buttonclick").click(function () {--%>
        <%--console.log("ssss");--%>
        <%--var mctext =document.getElementsByName("textareacomment")[0].value;--%>
        <%--var mid = ${menuinfo.mid};--%>
        <%--var uid = ${sessionScope.userinfo.uid};--%>
        // alert(mid+" "+uid+" "+mctext);
        <%--$.ajax({--%>
            <%--type:"post",--%>
            <%--url:"${pageContext.request.contextPath}/toaddmenucomment/addMenuComment.do",--%>
            <%--data:{mctext:mctext,uid:uid,mid:mid},--%>
            <%--dataType:"json",--%>
            <%--success:function(data){--%>
                <%--alert("sdadsad");--%>

                 <%--newcomment ="<div id='"+"allcomment' class='"+"'pro_review bigmarginbottom'> <div class='"+"review_thumb'> <img alt='"+"review images' src='"+"/assets/images/personphoto/txcomment.png'> </div> <div class='"+"review_details'> <div class='"+ "review_info mb-10'><h5>"+data.mid+"<span>"+data.uid+"</span></h5> </div> <p>"+data.comment+"</p></div></div>";--%>


                <%--&lt;%&ndash;${"#allcomment"}.append();&ndash;%&gt;--%>
            <%--}--%>
        <%--})--%>
    <%--})--%>
    <%--function commentmenu() {--%>
        <%--var mctext =document.getElementsByName("textareacomment")[0].value;--%>
        <%--var mid = ${menuinfo.mid};--%>
        <%--var uid = ${sessionScope.userinfo.uid};--%>
        <%--alert(mid+" "+uid+" "+mctext);--%>
        <%--$.ajax({--%>
            <%--type:"post",--%>
            <%--url:"${pageContext.request.contextPath}/toaddmenucomment/addMenuComment.do",--%>
            <%--data:{mctext:mctext,uid:uid,mid:mid},--%>
            <%--dataType:"json",--%>
            <%--success:function(data){var newcomment ="<div id='"+"allcomment' class='"+"'pro_review bigmarginbottom'> <div class='"+"review_thumb'> <img alt='"+"review images' src='"+"/assets/images/personphoto/txcomment.png'> </div> <div class='"+"review_details'> <div class='"+ "review_info mb-10'><h5>"+data.mid+"<span>"+data.uid+"</span></h5> </div> <p>"+data.comment+"</p></div></div>";${"#allcomment"}.append();}--%>
        <%--})--%>
    <%--}--%>


</script>
</body>

</html>