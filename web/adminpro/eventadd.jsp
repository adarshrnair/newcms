<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
    PreparedStatement ps = null;
    PreparedStatement ps2 = null;
    String event = null ;
    event = request.getParameter("dlt");
    ps=con.prepareStatement("SELECT * FROM user_reg WHERE rno= ? ");
             ps.setString(1, session.getAttribute("user").toString());
      //preparedStmt.executeUpdate();
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
                 if(rs1.getString(9)==null)
                 {
                     ps2=con.prepareStatement("update user_reg set A=? where rno = ?");
                      ps2.setString(2, session.getAttribute("user").toString());
                      ps2.setString(1, event);
                       ps2.executeUpdate();
                       response.sendRedirect("events.jsp");
                 }
                 else if(rs1.getString(10)==null)
                 {
                     ps2=con.prepareStatement("update user_reg set B=? where rno = ?");
                      ps2.setString(2, session.getAttribute("user").toString());
                      ps2.setString(1, event);
                       ps2.executeUpdate();
                       response.sendRedirect("events.jsp");
                 }
                  else if(rs1.getString(11)==null)
                 {
                     ps2=con.prepareStatement("update user_reg set C=? where rno = ?");
                      ps2.setString(2, session.getAttribute("user").toString());
                      ps2.setString(1, event);
                       ps2.executeUpdate();
                       response.sendRedirect("events.jsp");
                 }
                  else if(rs1.getString(12)==null)
                 {
                     ps2=con.prepareStatement("update user_reg set D=? where rno = ?");
                      ps2.setString(2, session.getAttribute("user").toString());
                      ps2.setString(1, event);
                       ps2.executeUpdate();
                       response.sendRedirect("eventsjsp");
                 }
                  else if(rs1.getString(13)==null)
                 {
                     ps2=con.prepareStatement("update user_reg set E=? where rno = ?");
                      ps2.setString(2, session.getAttribute("user").toString());
                      ps2.setString(1, event);
                       ps2.executeUpdate();
                       response.sendRedirect("events.jsp");
                 }
                  else if(rs1.getString(14)==null)
                 {
                     ps2=con.prepareStatement("update user_reg set F=? where rno = ?");
                      ps2.setString(2, session.getAttribute("user").toString());
                      ps2.setString(1, event);
                       ps2.executeUpdate();
                       response.sendRedirect("events.jsp");
                 }
                 out.println("ERROR");
             }
                 
    %>