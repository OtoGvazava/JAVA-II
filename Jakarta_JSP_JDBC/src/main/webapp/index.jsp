<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/DB_JAVA"
                       user="admin" password="pass"/>
    <sql:query var="rs" dataSource="${db}">
        SELECT * FROM STUDENT;
    </sql:query>
    <a href="add.jsp">Add student</a>
    <table border="2", width="100%">
        <tr>
            <th>ID</th>
            <th>FIRST NAME</th>
            <th>LAST NAME</th>
        </tr>
        <c:forEach var="student" items="${rs.rows}">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.first_name}"/></td>
                <td><c:out value="${student.last_name}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>