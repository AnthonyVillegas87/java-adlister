<%--
  Created by IntelliJ IDEA.
  User: anthonyvillegas
  Date: 10/15/21
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%

Person j = new Person(5, "Karen", "Doe", 30);
request.setAttribute("j", j);
%>

<ul>
    <li>${j.id}</li>
    <li>${j.firstName}</li>
    <li>${j.lastName}</li>
    <li>${j.age}</li>
</ul>

</body>
</html>
