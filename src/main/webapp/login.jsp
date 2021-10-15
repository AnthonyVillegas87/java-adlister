<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: anthonyvillegas
  Date: 10/15/21
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
 if(request.getParameter("username") != null && request.getParameter("psw") != null) {
     String username = request.getParameter("username");
     String password = request.getParameter("psw");
     response.sendRedirect("/profile.jsp?username=" + URLEncoder.encode(username, "UTF-8") + "&password=" + URLEncoder.encode(password, "UTF-8"));
 }

%>


<html>
<head>
    <title>Forms</title>
</head>
<body>
    <h1>Login Form</h1>
    <form action="" method="post">
        <label for="username"><b>Username</b></label>
        <input type="text" id="username" placeholder="Enter Username" name="username">
        <br>
        <label for="psw"><b>Password</b></label>
        <input type="password" id="psw" placeholder="Enter Password" name="psw">
        <br>
        <button type="submit">Login</button>
    </form>
    <%@ include file="partials/head.jsp"%>
</body>
</html>
