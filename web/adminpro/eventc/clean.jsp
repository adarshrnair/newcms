<%@page import="java.lang.String"%>
<%@page import="java.sql.*"%>
<%
  try{  
Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
    Statement st=con.createStatement();
    PreparedStatement ps= con.prepareStatement ("Truncate table SUPERUSER.EVENTADD;");
    /*PreparedStatement ps1= con.prepareStatement("delete from SUPERUSER.EVENT_ADD where EVENT_NAME in('"+var+"')");
    PreparedStatement ps2= con.prepareStatement("delete from SUPERUSER.EVENT_ADD where EVENT_NAME in('"+var+"')");

    int i=ps.executeUpdate();
    out.print(i);
    out.println("Deleted");
  }
catch(Exception e)
{
    System.out.println(e);
    
}*/
   String sql= "truncate table EVENTADD";
   ps.executeUpdate(sql);
   
  /* sql="DELETE FROM eventadd";
   ps.executeUpdate(sql);*/
  }
  catch(Exception e)
                {
                    out.println("exception"+e);
                }
%>

