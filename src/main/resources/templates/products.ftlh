<!DOCTYPE html>
<html>
<head>
    <title>SELLBUY</title>
</head>
<body>
<h1>SELLBUY</h1><hr>
<#if user.email??>
    <h3>User Name: <i>${user.name}</i> </h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Log out"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin panel</a>
    </#if>
<#else>
    <a href="/login">Sign in</a></h1>
</#if>
<h4>Items from all Russia</h4>
<form action="/" method="get">
    Search by ad name: <input type="text" name="title"><br>
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} rub. | <a href="/product/${product.id}">More..</a></p>
    </div>
<#else>
    <h3>No Items</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Create new Item</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Name Ad: <input type="text" , name="title"/><br><br>
        Description ad: <input type="text" , name="description"/><br><br>
        Price: <input type="number" , name="price"/><br><br>
        City: <input type="text" , name="city"/><br><br>
        First image: <input type="file" , name="file1"/><br><br>
        Second image: <input type="file" , name="file2"/><br><br>
        Third image: <input type="file" , name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add item"/>
    </form>
</#if>
</body>
</html>