<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/7
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table width="100%" height="90%" border="0" cellpadding="10"
       cellspacing="0" class="main_tabbor">
    <tr valign="top">
        <td>
            <form id="documentForm" name="documentForm"
                  action="${pageContext.request.contextPath}/uploadtool/addReport.do"
                  enctype="multipart/form-data" method="post">
                <!-- 隐藏表单，flag表示添加标记 -->
                <input type="hidden" name="flag" value="2"> <input
                    type="hidden" name="method" value="upload">
                <table width="100%" border="0" cellpadding="0" cellspacing="10"
                       class="main_tab">
                    <tr>
                        <td class="main_tdbor"></td>
                    </tr>

                    <tr>
                        <td class="font3 fftd">新闻图片：<br /> <input type="file"
                                                                  name="attachs" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td class="font3 fftd">新闻图片：<br /> <input type="file"
                                                                  name="attachs" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td class="main_tdbor"></td>
                    </tr>
                    <tr>
                        <td class="font3 fftd"><input type="submit" id="btn"
                                                      value="上传"> <input type="reset" value="重置"></td>
                    </tr>
                    <tr>
                        <td class="main_tdbor"></td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>

</body>
</html>
