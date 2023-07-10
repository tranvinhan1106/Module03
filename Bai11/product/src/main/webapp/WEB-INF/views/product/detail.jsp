<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail Product</title>
</head>
<body>
<h1>View Detail</h1>
<form action="/product" method="get">
    <input type="number" name="id" value="id">
</form>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>description</th>
        <th>producer</th>
    </tr>
    <tr>
        <td>${products.getId()}</td>
        <td>${products.getName()}</td>
        <td>${products.getPrice()}</td>
        <td>${products.getDescription()}</td>
        <td>${products.getProducer()}</td>
    </tr>
    <input type="hidden" name="action" value="detail">
</table>

</body>
</html>
