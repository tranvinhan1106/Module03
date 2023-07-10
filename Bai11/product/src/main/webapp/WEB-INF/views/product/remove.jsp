<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <style>
        fieldset{
            width: 300px;
        }
    </style>
</head>
<body>
<fieldset>
    <legend><h1>Delete customer</h1></legend>

    <form method="post">
        <input type="number" name="id">
        <input type="submit" value="Delete product">
        <input type="hidden" name="action" value="delete">
        <p>
            <button> <a href="/product">Back to customer list</a></button>
        </p>
</fieldset>
</body>
</html>
