<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.MessagingException"%>


<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.net.Socket"%>

<%
     
	
Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
PreparedStatement ps2 = null;
PreparedStatement ps = null;
String fname;
String lname;
String rno;
String branch;
String email;
String phno;
String chest;
String score;

String A="A";
String B="B";
String C="C";
String D="D";
String E="E";
String F="E";


fname= request.getParameter("fname");
lname= request.getParameter("lname");
rno= request.getParameter("rno");
branch= request.getParameter("branch");
email= request.getParameter("email");
phno= request.getParameter("phno");
chest= request.getParameter("chest");
score= request.getParameter("score");
A= request.getParameter("score");
B= request.getParameter("score");
B= request.getParameter("score");
D= request.getParameter("score");
E= request.getParameter("score");
F= request.getParameter("score");
int val=0;
ps=con.prepareStatement("SELECT MAX(CHEST) FROM USER_REG");
         //    ps.setString(1, uname1);
      //preparedStmt.executeUpdate();
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
             
             val= Integer.parseInt(rs1.getString(1));
            val=val+1;
         }

 String query ="Insert into USER_REG values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
 ps= con.prepareStatement(query);
        ps.setString(1, fname);
        ps.setString(2, lname);
        ps.setString(3, rno);
        ps.setString(4, branch);
        ps.setString(5, email);
        ps.setString(6, phno);
        ps.setInt(7, val);
        ps.setInt(8, 0);
        ps.setString(9, null);
        ps.setString(10, null);
        ps.setString(11, null);
        ps.setString(12, null);
        ps.setString(13, null);
        ps.setString(14, null);
        
        
        String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    Random rnd = new Random();
    
   StringBuilder sb = new StringBuilder( 8 );
   for( int i = 0; i < 8; i++ ) 
      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
   String pass=sb.toString();
 String query2 ="Insert into USERS values(?,?,?,?)";    
  ps2= con.prepareStatement(query2);
         ps2.setString(1, rno);
        ps2.setString(2, pass);
        ps2.setString(3, "U");
        ps2.setString(4, email);
             
        ps2.executeUpdate();
        
        int i = ps.executeUpdate();
        if(i!=0)
        {
            System.out.println("USER REGISTERED!!!");
        }
        
        else
        {
            System.out.println("failed!!!");
        }
        
String to=email;//change accordingly  
  
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
   String msg = "You are now made a member of site protected by Vajravyuha. You Username is "+rno+" and password is "+pass+". Your chest no : "+val+"";
   message.setText(msg);  
     
   //send message  
  Transport.send(message);  
  
   System.out.println("message sent successfully");  
   
  } catch (MessagingException e) {throw new RuntimeException(e);}  
            
            
            

        
%>








<html>
    
    <head>
        <title>Successfulll</title>
    
    <style>
        
         @import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);


        
    body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: darkblue;
	font-family: Arial;
	font-size: 12px;
}
    
    
   .body{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-color: white;
	background-size: cover;
	-webkit-filter: blur(5px);
	z-index: 0;
}
mediumseagreen
.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
	z-index: 1;
	opacity: 0.7;
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
	color: black!important;
}

.login{
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=submit]{
	width: 260px;
	height: 35px;
	/*background: #fff;
	border: 1px solid #fff;*/
	cursor: pointer;
	border-radius: 2px;
	color: cornflowerblue;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=submit]:hover{
	opacity: 0.8;
}

.login input[type=submit]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=submit]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
    </style>

    
        <script src="js/prefixfree.min.js"></script>
        
    
    
    
    
    </head>
    
    
    
    <body>
       <div class="body"></div>
		<div class="grad"></div>
        <div class="login">
        <center>
        <br><br><br>
        <h1>
            User Registration  Successful!!!!
            
            </h1>
            <br>
            <div id="login">
            <form action="user_reg.html"> <input type='submit' value="click to register another user " ></form>
            

            </div>
            
        
        
        
        </center>
        
        
        
        
        
        </div>
    </body>
    
    
    
    
    
    
    
    
</html>