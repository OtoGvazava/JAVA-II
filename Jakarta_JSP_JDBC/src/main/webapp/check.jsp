<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/25/2023
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                     url="jdbc:mysql://localhost:3306/DB_JAVA"
                     user="admin" password="pass"/>
  <%
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
  %>
  <C:set var="first_name" value="<%=firstName%>"/>
  <C:set var="last_name" value="<%=lastName%>"/>
  <sql:update dataSource="${db}" var="table">
    INSERT INTO STUDENT(FIRST_NAME, LAST_NAME) VALUES(?, ?);
    <sql:param value="${first_name}"/>
    <sql:param value="${last_name}"/>
  </sql:update>
</body>
</html>
