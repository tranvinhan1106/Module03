<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <style>
        fieldset{
            width: 300px;
        }
    </style>
</head>
<body>
<form action="/product" method="post">
<fieldset>
    <legend><h1>Create new product</h1></legend>
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="id"/></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" name="price"/></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><input type="text" name="description"/></td>
        </tr>
        <tr>
            <td>Producer</td>
            <td><input type="text" name="producer"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Add">
            </td>
        </tr>
    </table>
    <input type="hidden" name="action" value="create">
    <button> <a href="/product">Back to customer list</a></button>
</fieldset>
</form>

</body>
</html>
