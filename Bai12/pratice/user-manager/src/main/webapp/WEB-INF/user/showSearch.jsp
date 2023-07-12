<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Search User</title>
</head>
<body>
<div align="center">
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>email</th>
            <th>country</th>

        </tr>
        <c:forEach items="${listCountry}" var="c">
            <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>${c.email}</td>
                <td>${c.country}</td>
            </tr>
        </c:forEach>
    </table>
    <h2>
        <a href="users?action=users">List All Users</a>
    </h2>
</div>

</body>
</html>
