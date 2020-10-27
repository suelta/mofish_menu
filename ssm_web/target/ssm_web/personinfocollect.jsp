<%@ page import="java.util.Date" %>
<%@ page import="com.mofish.bean.UserInfo" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/4
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link rel="stylesheet" href="assets/css/plugins/jqueryui.min.css">

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
    <!--
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="/assets/css/style.css">
    <!--<link rel="stylesheet" href="assets/css/style.min.css">-->

    <style>
        .myinfoshow{
            background-color: #ff9240;
        }
        .myinfo{
            margin-top: 50px;
        }
        .user_nav ul{}
        .user_nav ul li{display:inline-block;vertical-align:top;*display:inline;*zoom:1;height:50px;line-height:50px;font-size:14px;color:#333;}
        .user_nav ul li a{color:#333;display:inline-block;vertical-align:top;*display:inline;*zoom:1;padding:0px 0px;text-align:center;margin:0px 20px;}
        .user_nav ul li a:hover{color:#ff3232;text-decoration:underline;}
        .user_nav ul li.current a{border-bottom:4px solid #ff3232;color:#ff3232;font-weight:bold;}
        .user_nav ul li.create_cp{float:right;margin:0px;width:120px;background:#f5f5f5;padding:8px;border-left:1px solid #ddd;height:34px;}
        .user_nav ul li.create_cp a{color:#ff3232;font-weight:bold;display:block;background:#f5f5f5;height:34px;line-height:34px;}
        .user_nav ul li.create_cp a:hover{background:#ff3232;color:#fff;}
        .clearfix:after{content:"";display:block;height:0;clear:both;}
        .user_main_index{height:600px;background:#fafafa;}
        .havepadding{padding: 20px}
        /*.taskbox{
            min-height: 200px;
        }*/
        .alignmiddle{
            margin: 0px;
            text-align: center;
        }
        .hotmenushow{
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
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=1&page=1&size=8">川 菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=2&page=1&size=8">粤 菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=3&page=1&size=8">鲁 菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=4&page=1&size=8">苏 菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=5&page=1&size=8">浙 菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=6&page=1&size=8">徽 菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=7&page=1&size=8">闽 菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=8&page=1&size=8">湘 菜</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">家常菜谱</a>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=9&page=1&size=8">海 鲜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=10&page=1&size=8">热 菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=11&page=1&size=8">凉 菜</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=12&page=1&size=8">素 食</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">家常菜谱</a>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=13&page=1&size=8">早 餐</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=14&page=1&size=8">午 餐</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=15&page=1&size=8">晚 餐</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/checksametag/getSameMenu.do?tcid=16&page=1&size=8">夜 宵</a></li>
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

                                <li class="menu-item-has-children"><a href="#">菜谱大全</a>

                                </li>

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
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/skip/tomain.do">Home</a></li>
                        <li class="breadcrumb-item active">Person Infomation</li>
                    </ul>
                    <!-- breadcrumb-list end -->
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb-area end -->

    <h3 class="text-center">欢迎来到我的美食空间</h3>
    <%-- 事件：个人信息 --%>
    <div class="container myinfoshow">
        <div class="row havepadding">
            <%if(((UserInfo)request.getAttribute("userinfo")).getUgender().equals("男")){%>
            <div class="col-lg-4">
                <div class="avatar_w"><a href="#"><img src="${pageContext.request.contextPath}/assets/images/personphoto/photomale-300.png"></a></div>
            </div>
            <%}else{%>
            <div class="col-lg-4">
                <div class="avatar_w"><a href="#"><img src="${pageContext.request.contextPath}/assets/images/personphoto/photofemale-300.png"></a></div>
            </div>
            <% }%>

            <div class="col-lg-4 userh_main">
                <div class="myinfo">
                    <span class="info"><h4>${userinfo.uname}</h4>
                    <h5>账号：${userinfo.uid}</h5>

                    <h5>性别：<%= ((UserInfo)request.getAttribute("userinfo")).getUgender()%></h5>

                    <h5><% Date date =((UserInfo)request.getAttribute("userinfo")).getUrgtime();%>
                            <% DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");  %>
                            <%=  format1.format(date)%>加入中华小当家</h5>
                    <h5>收到的点赞<i class="icon-heart"></i>：${userlike.ulcount}</h5><br>

                    <a href="${pageContext.request.contextPath}/user/toUpdataUser.do"><h5>编辑个人资料</h5></a></span>
                </div>	</div>
        </div>

        <div class="login-register-tab-list nav">
            <div class="user_nav">
                <ul>
                    <li ><a href="${pageContext.request.contextPath}/user/homepage.do">我的食谱</a></li>
                    <li class="current"><a  data-toggle="tab" href="${pageContext.request.contextPath}/user/homepagecollect.do">我的收藏</a></li>
                 </ul>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="product-area section-pt-30">
                <div class="container">
                    <div class="row row-8 product-two-row-4">
                        <%-- 事件：菜谱显示 --%>
                        <c:forEach begin="0" end="${menuInfoList.size()-1}" var="num">
                            <div class="product-col">
                                <!-- Single Product Start -->
                                <div class="single-product-wrap mt-10">
                                        <%-- 菜谱展示 --%>
                                    <div class="product-image">
                                        <a href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${collectUserInfoList.get(num).uid}&mid=${menuInfoList.get(num).mid}">
                                            <img class="hotmenushow" src="/assets/data/${menuInfoList.get(num).mid}/main.jpg" alt=""></a>
                                            <%--<span class="onsale">Sale!</span>--%>
                                    </div>
                                    <div class="product-button">
                                        <a href="#" class="add-to-wishlist">点赞数${menuLikeList.get(num).mlcount}<i class="icon-heart"></i></a>
                                    </div>
                                    <div class="product-content">
                                        <h6 class="product-name">${menuInfoList.get(num).mname}</h6>
                                        <h6 class="product-name">${collectUserInfoList.get(num).uname}</h6>

                                        <div class="product-button-action">
                                            <button class="btn-success btn" onclick="deletecollect('${userinfo.uid}','${menuInfoList.get(num).mid}')">取消收藏</button>
                                            <%--href="${pageContext.request.contextPath}/querymenu/getdetailmenuinfo.do?uid=${collectUserInfoList.get(num).uid}&mid=${menuInfoList.get(num).mid}--%>
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
<%--<script src="/assets/js/plugins/slick.min.js"></script>--%>
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

    function deletecollect(uid,mid){
        var e = window.event;
        //获取元素
        obj = e.target || e.srcElement;
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/user/deleteUserCollect.do",
            data:{uid:uid,mid:mid},
            dataType:"json",
            success:function(data){
                if(data.flag=="success"){
                    obj.innerHTML = "点击收藏";
                    alert("取消收藏成功！");
                    location.href="${pageContext.request.contextPath}/user/homepagecollect.do";
                }else{
                    // obj.innerHTML = "取消收藏";
                    // alert("收藏成功！");
                }
            }
        })
    }
</script>

</body>

</html>

