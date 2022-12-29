<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	
	<%
	String id = request.getParameter("username");
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "20wh1a1256";
	String userId = "root";
	String password = "1234";
	
	try {
	Class.forName(driverName);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
	<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
	<table align="center" cellpadding="5" cellspacing="5" border="1">
	<tr>
	
	</tr>
	<tr bgcolor="#A52A2A">
	<td><b>uname</b></td>
	<td><b>password</b></td>
	<td><b>email</b></td>
	</tr>
	<%
	
	try{ 
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	String sql ="SELECT * FROM details";
	
	resultSet = statement.executeQuery(sql);
	
	
	while(resultSet.next()){
	%>
	<tr bgcolor="#DEB887">
	
	<td><%=resultSet.getString("username") %></td>
	<td><%=resultSet.getString("password") %></td>
	<td><%=resultSet.getString("email") %></td>
	
	</tr>
	<% 
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	</table>
