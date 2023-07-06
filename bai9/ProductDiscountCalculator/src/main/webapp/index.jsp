<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
    <style>
        .C {
            height: 300px;
            width: 230px;
            margin: auto;
            padding: 10px;
            border: 1px #CCC solid;
        }

        .C input {
            padding: 5px;
            margin: 10px;
        }

        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
<form action="/display-discount" method="post">
    <div class="C">
        <h2> Product Discount Calculator</h2>
        <input type="text" name="ProductDescription" placeholder="Product Description :">
        <input type="number" name="ListPrice" placeholder="List Price:">
        <input type="number" name="DiscountPercent" placeholder="Discount Percent (%):">
        <input type="submit" value="Calculate Discount">
    </div>
</form>
</body>
</html>