<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>   Search User</title>
</head>
<body>
<div align="center">
    <h1>
        Search User
    </h1>
    <h2>
        <a href="users?action=users">List All Users</a>
    </h2>
    <form method="post"action="/users">
        <input type="text"name="country">
        <input type="submit"value="Find">
        <input type="hidden" name="action" value="search">
    </form>
</div>

</body>
</html>
