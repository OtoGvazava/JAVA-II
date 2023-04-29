<%--
  Created by IntelliJ IDEA.
  User: gvaza
  Date: 3/18/2023
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        Cookie firstNameCookie = new Cookie("firstName", firstName);
        Cookie lastNameCookie = new Cookie("lastName", lastName);

        firstNameCookie.setMaxAge(60*60*24);
        lastNameCookie.setMaxAge(60*60*24);

        response.addCookie(firstNameCookie);
        response.addCookie(lastNameCookie);
    %>
    <ul>
        <li>First Name: <%= firstName %></li>
        <li>Last Name: <%= lastName %></li>
    </ul>
    <a href="./saveForm.jsp">Save</a>
</body>
</html>
