<!DOCTYPE html>
<html>
<head>
    <title>SELLBUY</title>
</head>
<body>
<h1>SELLBUY</h1><hr>
<h4>Admin panel</h4>
<h4>Items from all Russia</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Activity</th>
        <th>Roles</th>
        <th>Ban</th>
        <th>More Information</th>
        <th>Editing</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th><form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Editing</a></th>
            <th><a href="/user/${user.id}">More information</a> </th>
        </tr>
        <#else>
        <h3>Users are not</h3>
    </#list>
</table>
    <hr>
</body>
</html>