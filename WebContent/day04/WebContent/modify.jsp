<%@ page import="java.sql.Driver" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=utf-8");
%>
<html>
<body>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String connectSQL="jdbc:sqlserver://localhost:1433;DatabaseName=software";
Connection conn=java.sql.DriverManager.getConnection(connectSQL,"hh","hh");
Statement stmt=conn.createStatement();

int id=Integer.parseInt(request.getParameter("id"));
String sql="select * from student where id ="+id;
ResultSet rs=stmt.executeQuery(sql);

String name="";
int age=0;
String major="";

while(rs.next()){
	name=rs.getString("name");
	age=rs.getInt("age");
	major=rs.getString("major");
}
%>

<form action="updatestudent.jsp" method="post">
<p>ID：<input type="hidden" name="id" value='<%=id%>'/></p>
<p>姓名：<input type="text" name="name" value='<%=name%>'/></p>
<p>年龄：<input type="text" name="age" value='<%=age%>'/></p>
<p>专业：<input type="text" name="major" value='<%=major%>'/></p>
<button type="submit">提交</button>
</form>
</body>
</html>