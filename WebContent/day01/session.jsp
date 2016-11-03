<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>session对象实例应用</title>
</head>
<body>
<hr>
session的创建时间是:<%=session.getCreationTime() %>
<%=newDate(session.getCreationTime()) %>
<br>
session的ID号:<%=session.getID() %>
<br>
客户最近一次的访问时间是：<%=session.getLastAccessedTime() %>
<%=new java.sql.Time(session.getLastAccessedTime()) %>
<br>
两次请求间隔多长时间session将被取消(ms);
<%=session.getMaxInactiveInterval() %>
<br>
是否是新创建的session:<%=session.isNew()?"是":"否" %>
<hr>
<%
session.setAttribute("name","小妹儿");
session.setAttribute("password","1234567");
%>
姓名:<%=session.getAttribute("name")%>
<br>
密码:<%=session.getAttribute("password") %>
<br>
ID号:<%=session.getID() %>
<br>
<%session.setMaxInactiveInterval(500);
 %>
 最大有效时间:<%=session.getMaxInactiveInterval() %>
 <br>
 <%
 session.removeAttribute("name");
 %>
 姓名:<%=session.getAttribute("name") %>
 <hr>

</body>
</html>