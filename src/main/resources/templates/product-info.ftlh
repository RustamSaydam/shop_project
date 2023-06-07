<!DOCTYPE html>
<html>
<head>
    <title>SELLBUY</title>
</head>
<body>
<h1>SELLBUY <a href="/login">Sign in</a></h1><hr>
<h4>More info about Item</h4>
<#list images as img>
<img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Name Item: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<form action="/product/delete/${product.id}" method="post">
    <hr>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Delete Item"/>
</form>
</body>
</html>