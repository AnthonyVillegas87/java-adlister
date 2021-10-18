<%--
  Created by IntelliJ IDEA.
  User: anthonyvillegas
  Date: 10/18/21
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Colors</title>
</head>
<body>
<fieldset>
    <form method="POST">
        <label for="color">Favorite Color:</label>

        <input type="text" id="color" name="color" required
               minlength="4" maxlength="8" size="10">
        <input type="submit" value="submit" />
    </form>

</fieldset>
</body>
</html>
