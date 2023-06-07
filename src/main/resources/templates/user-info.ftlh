<!DOCTYPE html>
<html>
<head>
    <title>SELLBUY</title>
</head>
<body>
<h1>SELLBUY</h1><hr>
<h3>More information about user..  ${user.name}</h3>
<b>Number phone: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>User items ${user.name}</h4>
<#list products as products>
<#else>
    <div>
        <p><b>${product.title}</b> ${product.price} rub. | <a href="/product/${product.id}">More..</a></p>
    </div>
    <h3>User don't have items</h3>
</#list>
<#if errorMessage??>
    <h2> style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>