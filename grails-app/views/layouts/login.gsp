<%--
  Author: niraj
  Date: 10/7/12
  Time: 10:37 AM
  2012 Copyright. Niraj Kumar Pokharel and Associates.
  All rights reserved.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE HTML>
<html dir="ltr" lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Pasal Login</title>

    <!--- CSS --->
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'fallback.css')}" type="text/css">--}%
    <!--- Javascript libraries (jQuery and Selectivizr) used for the custom checkbox --->

    <!--[if (gte IE 6)&(lte IE 8)]>

		<!--<script type="text/javascript" src="selectivizr.js"></script>-->
    <link href="${resource(dir: 'js', file: 'jquery-1.7.1.min.js')}" type="text/javascript">
    <link href="${resource(dir: 'js', file: 'selectivizr-min.js')}" type="text/javascript">

	<![endif]-->
    <g:layoutHead/>

</head>

<body>
<div id="container">
    <g:pageProperty name="login.container"/>
    %{--<g:form>--}%
    <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
        <div class="login">%{--LOGIN--}%<g:message code="springSecurity.login.header"/></div>
        <g:if test='${flash.message}'>
            <div class='login_message'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${flash.message}</div>
        </g:if>

        <div class="username-text">%{--Username:--}%<g:message code="springSecurity.login.username.label"/>:</div>
        <div class="password-text">%{--Password:--}%<g:message code="springSecurity.login.password.label"/>:</div>
        <div class="username-field">
            %{--<input type="text" name="username" value="azmind" />--}%
            <input type='text' class='text_' name='j_username' id='username'/>
        </div>
        <div class="password-field">
            %{--<input type="password" name="password" value="azmind" />--}%
            <input type='password' class='text_' name='j_password' id='password'/>
        </div>
        <input type="checkbox" class='chk' name='${rememberMeParameter}' id="remember_me" /><label for="remember-me">Remember me</label>
        <div class="forgot-usr-pwd"><a href="#"> Forgot username or password</a>?</div>
        <input type="submit" name="submit" value="GO" />
   %{-- </g:form>--}%
    </form>
</div>
<div id="footer">
    &copy;&nbsp;2012 - ${new java.util.Date().format("yyyy")} ${com.pasal.PasalConstants.COMPANY_NAME} </a>
</div>
</body>
</html>