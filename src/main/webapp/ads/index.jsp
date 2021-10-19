<%--
  Created by IntelliJ IDEA.
  User: anthonyvillegas
  Date: 10/19/21
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> View Ads</title>
</head>
<body>
 <h1>Here are your Ads at a glance: </h1>

<c:forEach var="ads" items="${ads}">
    <div class="ads">
        <h2>${ads.title}</h2>
        <p>${ads.id}</p>
        <p>${ads.userId}</p>
        <h3>Description: ${ads.description}</h3>
    </div>

</c:forEach>


</body>
</html>
