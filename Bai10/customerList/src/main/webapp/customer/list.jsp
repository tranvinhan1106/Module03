<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List </title>
    <style>
        #test {
            width: 100px;
            height: 150px;
        }

        h1 {
            text-align: center;
        }

        .grid-container {
            display: grid;
            grid-template-columns: auto auto auto auto;
            background-color: white;
            padding: 10px;
        }

        .grid-item {
            background-color: rgba(255, 255, 255, 0.8);
            border: 1px solid rgba(0, 0, 0, 0.8);
            padding: 20px;
            font-size: 30px;
            text-align: left;
        }
    </style>
</head>
<body>
<h1>Danh sách khách hàng</h1>
<div class="grid-container">
    <div class="grid-item">Tên</div>
    <div class="grid-item">Ngày sinh</div>
    <div class="grid-item">Địa chỉ</div>
    <div class="grid-item">Ảnh</div>
    <c:forEach items="${customerList}" var="c">
    <div class="grid-item"><c:out value="${c.name}"></c:out></div>
    <div class="grid-item">${c.date}</div>
    <div class="grid-item">${c.address}</div>
    <div class="grid-item"><img src="${c.image}" id="test"></div>
    </c:forEach>
</body>
</html>