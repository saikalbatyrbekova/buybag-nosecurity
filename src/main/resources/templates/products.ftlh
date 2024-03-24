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
            background-color: #f2f2f2;
            color: #333;
        }
        h1, h4, h3 {
            text-align: center;
            color: #008000;
        }
        form {
            text-align: center;
            margin-bottom: 20px;
        }
        input[type="text"],
        input[type="number"],
        input[type="file"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            width: auto;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .product {
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }
        .product a {
            text-decoration: none;
            color: #007bff;
        }
        @media (min-width: 768px) {
            /* Responsive styles for larger screens */
            body {
                padding: 20px;
            }
            form, .product {
                max-width: 600px;
                margin-left: auto;
                margin-right: auto;
            }
        }
    </style>
</head>
<body>
<h1>Bags US/EU - Michael Kors</h1>
<hr>
<h4>Luxury Brands' bags, purses, shoes from United States and Europe</h4>
<form action="/" method="get">
    <p>Searching by Name of a Product: <input type="text" name="title"></p>
    <input type="submit" value="Search">
</form>
<#list products as product>
    <div class="product">
        <p><b>${product.title}</b> ${product.price} $ | <a href="/product/${product.id}">More...</a></p>
    </div>
<#else>
    <h3>No products available</h3>
</#list>
<hr>
<h3>Create a new product</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    <p>Name of a product: <input type="text" name="title"></p>
    <p>Description of a product: <input type="text" name="description"></p>
    <p>Price: <input type="number" name="price"></p>
    <p>City: <input type="text" name="city"></p>
    <p>Name: <input type="text" name="author"></p>
    <p>First image: <input type="file" name="file1"></p>
    <p>Second image: <input type="file" name="file2"></p>
    <p>Third image: <input type="file" name="file3"></p>
    <input type="submit" value="Add a product">
</form>
</body>
</html>
