<%@ page import="com.example.management_system.utils.PersonUtil" %><%--
  Created by IntelliJ IDEA.
  User: gvaza
  Date: 3/18/2023
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        try {
            String id = request.getParameter("id");
            PersonUtil.getInstance().removePerson(Integer.parseInt(id));
            %> <h1>Person deleted!</h1> <%
        } catch (Exception e) {
            out.print(e);
        }
    %>
    <a href="./index.jsp">Home</a>
</body>
</html>
