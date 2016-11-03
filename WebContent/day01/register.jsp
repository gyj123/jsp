<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册实例</title>
</head>
<body>
用户信息注册
<hr>
<form method="get" action="register.jsp">
<table border="1"bordercolor="blue" >
<tr>
<td>姓名:<input name ="userName" type="text" size="18">
</td>
</tr>
<tr>
<td>年龄:<input name="age"type="text"size="20">
</td>
</tr>
<tr>
<td>密码:<input name="password" type="password" size="18">
</td>
</tr>
<tr>
<td><input type="submit" value="提交">
</td>
</tr>

</table>
</form>

</body>
</html>