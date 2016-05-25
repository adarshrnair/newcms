<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
 <%@page import="java.sql.*"%>
 <%@page import="com.tracker.database.SqlConnection;"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Delete Users</title>
 </head>
 <%
 SqlConnection connection = new SqlConnection();
 Connection con = connection.getDbConnection();
 String sql = "SELECT * FROM users";
 PreparedStatement ps = con.prepareStatement(sql);
 ResultSet rst = ps.executeQuery();
 int i=0;
 %>
 <body>



 <h1>Will be deleting an Existing User</h1>
 <h4> List of Users</h4>
 <form name=myname method=post
 action="deleteSuccess.jsp">
 <table border="1">
 <tr><td>Select</td>
 <td>EmployeeID</td><td>FirstName</td><td>LastName</td><td>RoleID</td>
 </tr>
 <%
 while(rst.next()){ %>
 <tr>
 <td><input type="checkbox" name="check<%=i%>"
 value=<%=rst.getInt(1)%>></td>
 <td><%=rst.getInt(1)%></td><td><%=rst.getString(2)%></td><td><%=rst.getString(3)%></td><td><%=rst.getInt(4)%></td>
 </tr>
 <%}%>
 </table>
 <input type="submit" value="Delete"></form>
 </body>
 </html>

 2. deleteSuccess.jsp

 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>User Deleted</title>
 </head>
 <%
 String id[] = new String[10];
 for (int i = 0; i < 10; i++) {
 id[i] = request.getParameter("check" + i);
 }
 %>
 <body bgcolor="beige">
 <%
 try {
 Connection conn = null;
 Class.forName("com.mysql.jdbc.Driver").newInstance ();
 conn = DriverManager.getConnection(
 "jdbc:mysql://localhost:3306/tracker", "root", "root");
 ResultSet rs = null;
 Statement st = null;
 st = conn.createStatement();
 for (int a = 0; a < 10; a++) {
 st.executeUpdate("delete from users where empid='" + id[a]
 + "'");
 if(id[a] != null){%>
 <h3><font color="blue">Employee ID : <%= id[a]%> Deleted Successfully</font></h3>
 <% }}
 } catch (SQLException e) {
 System.out.println(e.getMessage());
 }

 %>

 <a href="/TestingMultiple/admin.jsp">Click here to go to Home</a>
 </body>

 </html>
