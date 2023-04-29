<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <form method="post" action="<%=request.getContextPath()%>/student-servlet">
        <input type="text" name="firstName"><br>
        <input type="text" name="lastName">
        <button type="submit">Submit</button>
    </form>
</body>
</html>