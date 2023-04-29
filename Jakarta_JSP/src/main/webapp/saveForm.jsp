<%@ page import="com.example.management_system.utils.PersonUtil" %>
<%@ page import="com.example.management_system.models.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: gvaza
  Date: 3/18/2023
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Map<String, String> map = new HashMap<>();
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            String name = cookie.getName();
            String value = cookie.getValue();
            map.put(name, value);
        }

        PersonUtil.getInstance().addPerson(new Person(map.get("firstName"), map.get("lastName")));
    %>
    <h1>Data successfully saved</h1>
    <a href="./index.jsp">Home Page</a>
</body>
</html>
