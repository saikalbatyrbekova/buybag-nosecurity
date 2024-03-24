<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bags US/EU</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: whitesmoke;
            color: #333;
        }
        header {
            background-color: darkgreen;
            color: white;
            text-align: center;
            padding: 20px 0;
        }
        header .logo {
            display: inline-block;
            vertical-align: middle;
            margin-right: 10px;
        }
        header h1 {
            display: inline-block;
            vertical-align: middle;
            margin: 0;
        }
        h4 {
            text-align: center;
        }
        form {
            text-align: center;
        }
        input[type="text"],
        input[type="number"],
        input[type="file"],
        textarea {
            width: 80%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: auto;
            cursor: pointer;
            background-color: green;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
        }
        input[type="submit"]:hover {
            background-color: greenyellow;
        }
        hr {
            margin: 20px auto;
            border: 0;
            border-top: 1px solid #ccc;
            width: 80%;
        }
        .product-info {
            text-align: center;
            margin: auto;
            width: 80%;
        }
        .image-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .image-container img {
            display: inline-block;
            width: 200px;
            height: auto;
            margin: 0 10px;
        }
        .product-info b {
            color: green;
        }
    </style>
</head>
<body>
<header>
    <span class="logo"><i class="fas fa-shopping-bag fa-lg"></i></span>
    <h1>Bags US/EU - Michael Kors</h1>
</header>
<hr>
<h4>Detailed information about product</h4>
<div class="product-info">
    <div class="image-container">
        <#list images as img>
            <img src="/images/${img.id}" alt="Product Image">
        </#list>
    </div>
    <b>Name of a product: </b>${product.title}<br>
    <b>Description of a product: </b>${product.description}<br>
    <b>Price: </b>${product.price}<br>
    <b>City: </b>${product.city}<br>
    <b>Author: </b>${product.author}<br>
    <hr>
    <form action="/product/delete/${product.id}" method="post">
        <input type="submit" value="Delete a product">
    </form>
</div>
</body>
</html>
