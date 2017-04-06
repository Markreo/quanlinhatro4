<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 3/29/2017
  Time: 9:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Not Found!</title>
    <meta name="layout" content="main">
</head>
<body>
<h1 class="text-center" style="color: #eeeeee">Không thể tìm thấy!!!</h1>
<g:if env="development">
    <g:renderException exception="${exception}" />
</g:if>
<g:else>
    <ul class="errors">
        <li>An error has occurred</li>
    </ul>
</g:else>
</body>
</html>
