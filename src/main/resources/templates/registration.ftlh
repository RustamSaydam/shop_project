<!DOCTYPE html>
<html>
<head>
    <title>SELLBUY</title>
</head>
<body>
<h1>SELLBUY</h1><hr>
<h4>Registration</h4>
<form action="/registration" method="post">
    User name: <input type="text" name="name"><br><br>
    Email: <input type="email" name="email"><br><br>
    Number phone: <input type="text" name="phoneNumber"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Registration"/>
</form>
<#if errorMessage??>
    <h2> style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>