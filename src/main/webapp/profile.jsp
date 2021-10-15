<%--
  Created by IntelliJ IDEA.
  User: anthonyvillegas
  Date: 10/15/21
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3><%=request.getParameter("username")%></h3>
<h3><%=request.getParameter("password")%></h3>
<%@ include file="partials/head.jsp"%>
<%@ include file="partials/navbar.jsp"%>
</body>
</html>
