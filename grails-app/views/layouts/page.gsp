<%--
  Created by IntelliJ IDEA.
  User: niraj
  Date: 10/9/12
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="left">
    %{--<g:render template="/inc/left"/>--}%
    <g:pageProperty name="page.left"/>
</div>
<div class="right" id="body_main">
    <g:pageProperty name="page.right"/>
</div>
</body>
</html>