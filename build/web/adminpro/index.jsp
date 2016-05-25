 <%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<% 
     String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    Random rnd = new Random();
    
   StringBuilder sb = new StringBuilder( 8 );
   for( int i = 0; i < 8; i++ ) 
      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
   String pass=sb.toString();
   Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
PreparedStatement ps2 = null;
PreparedStatement ps = null;
ps=con.prepareStatement("SELECT email FROM users where uname = ?");
             ps.setString(1, session.getAttribute("head").toString());
      //preparedStmt.executeUpdate();
             session.setAttribute("OTP", pass);
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             
             String to=rs1.getString(1);//change accordingly  
  
  //Get the session object  
  Properties props = new Properties();  
  props.put("mail.smtp.host", "smtp.gmail.com");  
  props.put("mail.smtp.socketFactory.port", "465");  
  props.put("mail.smtp.socketFactory.class",  
            "javax.net.ssl.SSLSocketFactory");  
  props.put("mail.smtp.auth", "true");  
  props.put("mail.smtp.port", "465");  
   
  Session session1 = Session.getInstance(props,  
   new javax.mail.Authenticator() {  
  
       protected PasswordAuthentication getPasswordAuthentication() {  
   return new PasswordAuthentication("r.adarsh1994@gmail.com","9744547214");//change accordingly  
   }  
  });  
   
  //compose message  
  try {  
   MimeMessage message = new MimeMessage(session1);  
   message.setFrom(new InternetAddress("r.adarsh1994@gmail.com"));//change accordingly  
   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
   message.setSubject("REGISTERED");  
   String msg = "OTP is"+pass;
   message.setText(msg);  
     
   //send message  
  Transport.send(message);  
  
   System.out.println("message sent successfully");  
   
  } catch (MessagingException e) {throw new RuntimeException(e);} 
            response.sendRedirect("check.html");
         }

   %>