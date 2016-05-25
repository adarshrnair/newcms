<%@page import="java.sql.*"%>
<%
PreparedStatement ps = null;
PreparedStatement ps1=null;
//String getdpass = null;
String first=request.getParameter("first");
String second=request.getParameter("second");
String third=request.getParameter("third");
String event=request.getParameter("event");
int f=0; int s=0; int t=0;
 Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
 ps=con.prepareStatement("SELECT * FROM EVENTADD where event_name=?  ");
 ps.setString(1, event);
  ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             
                  f =Integer.parseInt(rs1.getString(4).toString());
                   s =Integer.parseInt(rs1.getString(5).toString());
                 t =Integer.parseInt(rs1.getString(6).toString());
             
             }
              ps1=con.prepareStatement("select score from user_reg where rno = ?");
              ps1.setString(1, first);
              ResultSet rs2= ps1.executeQuery();
              while(rs2.next())
              {
                  int val = rs2.getInt(1);
                  PreparedStatement ps2=con.prepareStatement("update user_reg set score=? where rno = ?");
                  val=val+f;
                  ps2.setInt(1, val);
                  ps2.setString(2, first);
                  ps2.executeUpdate();
              }
               ps1=con.prepareStatement("select score from user_reg where rno = ?");
              ps1.setString(1, second);
              rs2= ps1.executeQuery();
              while(rs2.next())
              {
                  int val = rs2.getInt(1);
                  PreparedStatement ps2=con.prepareStatement("update user_reg set score=? where rno = ?");
                  val=val+s;
                  ps2.setInt(1, val);
                  ps2.setString(2, second);
                  ps2.executeUpdate();
              }
               ps1=con.prepareStatement("select score from user_reg where rno = ?");
              ps1.setString(1, third);
              rs2= ps1.executeQuery();
              while(rs2.next())
              {
                  int val = rs2.getInt(1);
                  PreparedStatement ps2=con.prepareStatement("update user_reg set score=? where rno = ?");
                  val=val+t;
                  ps2.setInt(1, val);
                  ps2.setString(2, third);
                  ps2.executeUpdate();
              }
              PreparedStatement ps3=con.prepareStatement("update eventadd set w1=?, w2=?, w3=? where event_name = ?");
              ps3.setString(1, first);
              ps3.setString(2, second);
              ps3.setString(3, third);
              ps3.setString(4, event);
              ps3.executeUpdate();
              %>