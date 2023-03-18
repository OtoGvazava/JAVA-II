<%@ page import="java.util.List" %>
<%@ page import="com.example.management_system.models.Person" %>
<%@ page import="com.example.management_system.utils.PersonUtil" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <p>Current Time</p>
    <jsp:include page="time.jsp" flush="true"/>
    <a href="./createForm.jsp">Create User</a>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Person> personList = PersonUtil.getInstance().getListOfPerson();
                for (Person person: personList) {
                    int indexOfPerson = personList.indexOf(person);
                %> <tr>
                    <th><%= indexOfPerson %></th>
                    <th><%= person.getFirstName() %></th>
                    <th><%= person.getLastName() %></th>
                    <th><a href="delete.jsp?id=<%= indexOfPerson %>">Delete</a></th>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>