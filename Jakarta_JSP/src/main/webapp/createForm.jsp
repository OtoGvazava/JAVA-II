<%--
  Created by IntelliJ IDEA.
  User: gvaza
  Date: 3/18/2023
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="./checkForm.jsp" method="get">
        <label>
            First Name
            <input type="text" name="firstName">
        </label>
        <label>
            Last Name
            <input type="text" name="lastName">
        </label>
        <input type="submit" value="Save">
    </form>
</body>
</html>
