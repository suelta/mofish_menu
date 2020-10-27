<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="/assets/css/style.css">
    <!--<link rel="stylesheet" href="assets/css/style.min.css">-->
    <style>
        .bbtitles {
            height: 120px;
            line-height: 120px;
            font-size: 24px;
            color: #222;
            text-align: center;
            font-family: Microsoft Yahei;
            position: relative;
            display: block;
        }
        .menudesc{
            background-color: #FAE8C8;
            padding-bottom: 30px;
            padding-top: 20px;
        }
        .uploaditem{
            padding-top: 30px;
        }
        .uploadbox{
            margin-top: 20px;
        }
        .upload_tips_style3 {
            margin-top: 30px;
            background: #eee;
            color: #999;
            font-size: 16px;
            line-height: 18px;
            padding:  10px 14px 14px;
        }
        .textareabig{
            width: 555px;
            height: 210px;
        }
        .bzphoto{
            width: 520px;
            height: auto;
        }
        .bzdiv{
            margin-bottom: 20px;
            padding-bottom: 20px;
        }
        .fontsizemid{
            font-size: 18px;
        }
        .alignmiddle{
            margin: 10px;
            text-align: center;
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
                                            <li><a href="#">我的账户</a></li>
                                            <li><a href="#">登陆 &amp; 注册</a></li>
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
                        <li class="breadcrumb-item"><a href="index.html">我的主页</a></li>
                        <li class="breadcrumb-item active">上传菜谱</li>
                    </ul>
                    <!-- breadcrumb-list end -->
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb-area end -->


    <form id="test_form" action="${pageContext.request.contextPath}/uploadtool/addReport.do" method="post" enctype="multipart/form-data">
        <h3 class="bbtitles">欢迎发布新菜谱，先介绍一下你的大作！</h3>
        <div class="container menudesc">
            <div >

            </div>
            <div class="upload_tips_style3">
                <strong>小提示：</strong><br>
                1、上传的图片必须时jpg格式的图片<br>
                2、“适量、少许”尽量少用或者不用，用量精确对别人更有帮助
            </div>
            <div class="col-lg-12">
                <div class="col-lg-6">
                    <div class="uploadbox">
                        <div class="uploaditem">
                            <h4>菜谱名称</h4>
                            <div class="row1_box">
                                <div class="input_text_item">
                                    <input type="text" class="form-control" title="title" value="" name="mname1" placeholder="请填写菜谱名称，10字以内" >
                                    <div class="upload_tips" style="bottom:54px;left:0px;">1、菜谱名称中不加特殊符号如：“，。【】”<span class="upload_tips_arrow"></span></div>
                                </div>
                            </div>
                        </div>
                        <div class="uploadbox">
                            <h4>菜谱标签</h4>
                            <div class="fontsizemid">
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox1" value="1"> 川 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox2" value="2"> 粤 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox3" value="3"> 鲁 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox4" value="4"> 苏 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox5" value="5"> 浙 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox6" value="6"> 徽 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox7" value="7"> 闽 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags"  id="inlineCheckbox8" value="8"> 湘 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox9" value="9"> 海 鲜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox10" value="10"> 热 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox11" value="11"> 凉 菜
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox12" value="12"> 素 食
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox13" value="13"> 早 餐
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox14" value="14"> 午 餐
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox15" value="15"> 晚 餐
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" name="menutags" id="inlineCheckbox16" value="16"> 夜 宵
                                </label>
                            </div>
                        </div>
                        <div class="uploaditem">
                            <h4>菜谱主食材：</h4>
                            <div class="input_text_item">
                                <textarea name="mdingredients" placeholder="请填写菜谱主食材，不超过200字" rows="2" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="uploaditem">
                            <h4>菜谱辅食材：</h4>
                            <div class="input_text_item">
                                <textarea name="mdexcipient" placeholder="请填写菜谱辅食材，不超过200字" rows="2" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="uploaditem">
                            <h4>菜谱描述：</h4>
                            <div class="input_text_item">
                                <textarea name="mddesc" placeholder="请填写菜谱描述，不超过200字" rows="2" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="uploaditem">
                            <h4>上传你菜谱的成品图: </h4>
                            <div class="latest-blog-image">
                                <img class="cpphoto" id="cropedBigImg0" src="/assets/images/tools/upload-540.png" alt="">
                                <div class="post-category-tag">
                                    <input id="chooseImage0" class="form-control-file"  onchange="showphoto(this)" type="file" id="test-image-file" name="attachs" accept="image/gif, image/jpeg, image/png, image/jpg" >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <h3 class="bbtitles bzdiv">开始写步骤了！能否简单易学就看你怎么写了，加油！</h3>

        <div class="container menudesc" >
            <div id="bzbox">
                <div class="row ">
                    <div class="col-lg-6 bzdiv">
                        <img class="bzphoto" src="/assets/images/tools/upload-bz-540.png" id="cropedBigImg1" alt="">
                        <div class="post-category-tag">
                            <input class="form-control-file" id="chooseImage1" type="file" name="attachs" accept="image/gif, image/jpeg, image/png, image/jpg" >
                        </div>
                    </div>
                    <div class="col-lg-6>">
                        <textarea name="step" rows="7" class="form-control textareabig" placeholder="请填写详细步骤"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 bzdiv">
                        <img class="bzphoto" id="cropedBigImg2" src="/assets/images/tools/upload-bz-540.png" alt="">
                        <div class="post-category-tag">
                            <input class="form-control-file" id="chooseImage2" onchange="showphoto(this)" type="file" id="photo-bz2" name="attachs" accept="image/gif, image/jpeg, image/png, image/jpg" >
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <textarea name="step" rows="7" class="form-control textareabig" placeholder="请填写详细步骤"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 bzdiv">
                        <img class="bzphoto" id="cropedBigImg3" src="/assets/images/tools/upload-bz-540.png" alt="">
                        <div class="post-category-tag">
                            <input class="form-control-file" id="chooseImage3" onchange="showphoto(this)" type="file" id="photo-bz3" name="attachs" accept="image/gif, image/jpeg, image/png, image/jpg" >
                        </div>
                    </div>
                    <div class="col-lg-6> ">
                        <textarea name="step" rows="7" class="form-control textareabig" placeholder="请填写详细步骤"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 bzdiv">
                        <img class="bzphoto" id="cropedBigImg4" src="/assets/images/tools/upload-bz-540.png" alt="">
                        <div class="post-category-tag">
                            <input class="form-control-file" id="chooseImage4" onchange="showphoto(this)" type="file" id="photo-bz4" name="attachs" accept="image/gif, image/jpeg, image/png, image/jpg" >
                        </div>
                    </div>
                    <div class="col-lg-6>">
                        <textarea name="step" rows="7" class="form-control textareabig" placeholder="请填写详细步骤"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 bzdiv">
                        <img class="bzphoto" id="cropedBigImg5" src="/assets/images/tools/upload-bz-540.png" alt="">
                        <div class="post-category-tag">
                            <input class="form-control-file" id="chooseImage5" onchange="showphoto(this)" type="file" id="photo-bz5" name="attachs" accept="image/gif, image/jpeg, image/png, image/jpg" >
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <textarea name="step" rows="7" class="form-control textareabig" placeholder="请填写详细步骤"></textarea>
                    </div>
                </div>
            </div>
            <%-- 事件 --%>
            <button class="login-btn btn" id="addbz">添加步骤</button>
        </div>
        <div class="alignmiddle">
            <div class="button-box">
                <button class="login-btn btn" type="button"  id="sumbmitmenuinfo"><span>上传菜谱</span></button>
            </div>
        </div>
    </form>

    <footer>
        <div class="footer-top section-pb section-pt-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">

                        <div class="widget-footer mt-40">
                            <h6 class="title-widget">Contact Info</h6>

                            <div class="contact-call-wrap">
                                <img src="assets/images/icon/img-headphone.png" alt="">
                                <div class="footer-call">
                                    <p>Hotline Free 24/24:</p>
                                    <h6>(+800) 123 456 789</h6>
                                </div>
                            </div>
                            <div class="footer-addres">
                                <p>No2C, Ullenhall, Henley in Arden B578 5C, USA</p>
                                <p>Contact@roadthemes.com</p>
                            </div>

                            <ul class="social-icons">
                                <li>
                                    <a class="facebook social-icon" href="#" title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a class="twitter social-icon" href="#" title="Twitter" target="_blank"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a class="instagram social-icon" href="#" title="Instagram" target="_blank"><i class="fa fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a class="linkedin social-icon" href="#" title="Linkedin" target="_blank"><i class="fa fa-linkedin"></i></a>
                                </li>
                                <li>
                                    <a class="rss social-icon" href="#" title="Rss" target="_blank"><i class="fa fa-rss"></i></a>
                                </li>
                            </ul>

                        </div>

                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="widget-footer mt-40">
                            <h6 class="title-widget">Information</h6>
                            <ul class="footer-list">
                                <li><a href="#">我的主页</a></li>
                                <li><a href="#">关于我们</a></li>
                                <li><a href="#">Quick Contact</a></li>
                                <li><a href="#">Blog Pages</a></li>
                                <li><a href="#">Concord History</a></li>
                                <li><a href="#">Client Feed</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="widget-footer mt-40">
                            <h6 class="title-widget">Extras</h6>
                            <ul class="footer-list">
                                <li><a href="#">我的主页</a></li>
                                <li><a href="#">关于我们</a></li>
                                <li><a href="#">Quick Contact</a></li>
                                <li><a href="#">Blog Pages</a></li>
                                <li><a href="#">Concord History</a></li>
                                <li><a href="#">Client Feed</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="widget-footer mt-40">
                            <h6 class="title-widget">Get the app</h6>
                            <p>GreenLife App is now available on Google Play & App Store. Get it now.</p>
                            <ul class="footer-list">
                                <li><img src="/assets/images/brand/img-googleplay.jpg" alt=""></li>
                                <li><img src="/assets/images/brand/img-appstore.jpg" alt=""></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="newletter-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="newletter-wrap">
                            <div class="row align-items-center">
                                <div class="col-lg-3 col-md-12">
                                    <div class="newsletter-title mb-30">
                                        <h3>Join Our <br><span>Newsletter Now</span></h3>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-5">
                                    <div class="newsletter-dec mb-30">
                                        <p>Join 60.000+ subscribers and get a new discount coupon on every Wednesday.</p>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-7">
                                    <div class="newsletter-footer mb-30">
                                        <input type="text" placeholder="Your email address...">
                                        <div class="subscribe-button">
                                            <button class="subscribe-btn">Subscribe</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="copy-left-text">
                            <p>Copyright &copy; <a href="http://www.bootstrapmb.com/">Origine</a> 2019. All Right Reserved.</p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="copy-right-image">
                            <img src="/assets/images/icon/img-payment.png" alt="">

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

<script>
    $(function () {
        $("#addbz").click(function () {

            $('#bzbox').append(
                '<div class="row ">'+
                '   <div class="col-lg-6 bzdiv">'+
                '       <img class="bzphoto" src="/assets/images/tools/upload-bz-540.png" alt="">'+
                '           <div class="post-category-tag">'+
                '               <input class="form-control-file" onclick="showphoto()" type="file" id="photo-bz1" name="attachs" accept="image/gif, image/jpeg, image/png, image/jpg" >'+
                '          </div>'+
                '   </div>'+
                '   <div class="col-lg-6>">'+
                '      <textarea name="step" rows="7" class="form-control textareabig" placeholder="请填写详细步骤"></textarea>'+
                '  </div>'+
                '</div>');

            return false;
        });
    });

    $(function () {
        $("#sumbmitmenuinfo").click(function () {

            var mname = document.getElementsByName("mname1")[0].value;
            var mdingredients = document.getElementsByName("mdingredients")[0].value;
            var mdexcipient = document.getElementsByName("mdexcipient")[0].value;
            var mddesc = document.getElementsByName("mddesc")[0].value;
            var step = document.getElementsByName("step");
            // var mycars=new Array();
            var tags = document.getElementsByName("menutags");
            var filephoto = document.getElementsByName("attachs");
            var attachs = new Array();
            var count = 0;
            var menuTags =new Array();        //装tag的所有标签
            // alert(mname+" "+mdingredients+" "+mdexcipient+" "+mddesc+" ");
            //获取用户选择的标签
            for(var i = 0; i<tags.length;i++){
                if(tags[i].checked){
                    menuTags[count]=tags[i].value;
                    count = count+1;
                }
            }

            count = 1;
            var menumethod="";
            //拼接步骤字符串
            for(var i = 0;i<step.length;i++){
                // alert(step[i].value);
                menumethod = menumethod+step[i].value+"\n";
                if(filephoto[i+1].value != ""){
                    menumethod = menumethod+ "meunphotosteps"+(count)+"\n";
                    count++;
                }
            }

            $.ajax({
                url:"${pageContext.request.contextPath}/addMenu/addMenu.do",
                data:{mname:mname, mdingredients:mdingredients, mdexcipient:mdexcipient, mddesc:mddesc,
                    mmdesc:menumethod,menuTags:menuTags,attachs:attachs},
                type:"post",
                traditional: true,
                dataType:"json",
                success:function(data){
                    if(data.flag=="ok"){
                        alert("菜谱上传成功！");
                        var form = document.getElementById('test_form');
                        form.submit();
                    }
                    else if(data.flag == "nulltext"){
                        alert("输入框不能为空！");
                    }
                    else if(data.flag == "nulltag"){
                        alert("标签不能为空！");
                    }
                }
            })
        });
    })


    $('#chooseImage1').on('change',function(){
        var filePath = $(this).val(),         //获取到input的value，里面是文件的路径
            fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src = window.URL.createObjectURL(this.files[0]); //转成可以在本地预览的格式
        /*alert(src);

        alert(filePath);*/
        // 检查是否是图片
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('请选择图片');
            return;
        }
        var tt="";
        $("#cropedBigImg1").attr('src',src);
    });

    $('#chooseImage2').on('change',function(){
        var filePath = $(this).val(),         //获取到input的value，里面是文件的路径
            fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src = window.URL.createObjectURL(this.files[0]); //转成可以在本地预览的格式
        /*alert(src);

        alert(filePath);*/
        // 检查是否是图片
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('请选择图片');
            return;
        }
        var tt="";
        $("#cropedBigImg2").attr('src',src);
    });
    $('#chooseImage3').on('change',function(){
        var filePath = $(this).val(),         //获取到input的value，里面是文件的路径
            fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src = window.URL.createObjectURL(this.files[0]); //转成可以在本地预览的格式
        /*alert(src);

        alert(filePath);*/
        // 检查是否是图片
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('请选择图片');
            return;
        }
        var tt="";
        $("#cropedBigImg3").attr('src',src);
    });
    $('#chooseImage4').on('change',function(){
        var filePath = $(this).val(),         //获取到input的value，里面是文件的路径
            fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src = window.URL.createObjectURL(this.files[0]); //转成可以在本地预览的格式
        /*alert(src);

        alert(filePath);*/
        // 检查是否是图片
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('请选择图片');
            return;
        }
        var tt="";
        $("#cropedBigImg4").attr('src',src);
    });
    $('#chooseImage5').on('change',function(){
        var filePath = $(this).val(),         //获取到input的value，里面是文件的路径
            fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src = window.URL.createObjectURL(this.files[0]); //转成可以在本地预览的格式
        /*alert(src);

        alert(filePath);*/
        // 检查是否是图片
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('请选择图片');
            return;
        }
        var tt="";
        $("#cropedBigImg5").attr('src',src);
    });

    $('#chooseImage0').on('change',function(){
        var filePath = $(this).val(),         //获取到input的value，里面是文件的路径
            fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src = window.URL.createObjectURL(this.files[0]); //转成可以在本地预览的格式
        /*alert(src);

        alert(filePath);*/
        // 检查是否是图片
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('请选择图片');
            return;
        }
        var tt="";
        $("#cropedBigImg0").attr('src',src);
    });

   /* function showphoto(obj) {
        var filepath1 = document.getElementById(obj.id).value;
        alert(filepath1);
        // alert($(this).val());
        //  var filePath = filepath1,         //获取到input的value，里面是文件的路径
        //    fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src = ".jpg"; //转成可以在本地预览的格式

        // alert(filePath);
        // 检查是否是图片
        // if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
        //     alert('请选择图片');
        //     return;
        // }
        // alert(document.getElementById("cropedBigImg1").src);
        $('#cropedBigImg1').attr('.jpg',filepath1);
        // document.getElementById("cropedBigImg1").src="timg.jpg";
    }*/

</script>
</body>

</html>