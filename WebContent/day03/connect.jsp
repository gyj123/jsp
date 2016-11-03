<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*,java.io.*"%>
<html>
<body>


		<%
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=student";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","");
  String sql="insert into softstudent values (?,?,?,?)"; 
  PreparedStatement rs=conn.prepareStatement(sql);
  
  String number=request.getParameter("number");
  String name=request.getParameter("name");
  String age=request.getParameter("age");
  String major=request.getParameter("major");
  
  rs.setInt(1, Integer.parseInt(number));
  rs.setString(2, name);
  rs.setInt(3, Integer.parseInt(age));
  rs.setString(4, major);
  
  rs.executeUpdate();
  
  System.out.println(rs.toString());
  
  rs.close();
  conn.close();
  
  
  //String sql = "select * from goods where min_name = ? and age = ?";  // 含有参数
  //PreparedStatement st = conn.prepareStatement(sql);
  //st.setString(1, "儿童"); // 参数赋值
  //st.setInt(2, 22);
  //System.out.println(st.toString()); //com.mysql.jdbc.JDBC4PreparedStatement@d704f0: select * from goods where min_name = '儿童'
  %>

</body>
</html>
