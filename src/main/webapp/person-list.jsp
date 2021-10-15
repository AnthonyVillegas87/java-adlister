<%--
  Created by IntelliJ IDEA.
  User: anthonyvillegas
  Date: 10/14/21
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.util.List" %>
<%@ page import="entity.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%

    List<Person> people = new ArrayList<>(Arrays.asList(
            new Person(1, "jp","doe", 25),
            new Person(2, "jake","doe", 35),
            new Person(3, "john","doe", 45)

    ));
    request.setAttribute("person", people);

%>

<html>
<head>
    <title>My List Example</title>
</head>
<body>

<h1>List of people</h1>

<table>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>


    <c:forEach var="person" items="${people}">
        <tr>
            <td>${person.id}</td>
            <td>${person.firstName}</td>
            <td>${person.lastName}</td>
            <td>${person.age}</td>
        </tr>
    </c:forEach>
</table>
<%@ include file="partials/extra-person.jsp" %>


</body>
</html>
