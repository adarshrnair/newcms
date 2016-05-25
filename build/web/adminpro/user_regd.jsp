<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Join event</title>
    
    
    
    
        <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
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



.login input[type=submit]{
	width: 260px;
	height: 35px;
	background-color: mediumseagreen;
	/*border: 1px solid #fff;*/
	cursor: pointer;
	border-radius: 2px;
	color: white;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}
/*
.login input[type=submit]:hover{
	opacity: 0.8;
}

.login input[type=submit]:active{
	opacity: 0.6;
}*/



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
		<div class="header">
			<div>All<span>Events</span></div>
		</div>
		<br>
		<div class="login"><br><br><br>
                    <form name="f1" action="eventadd.jsp">
      <table>
          <tr>
              <th>Event 1</th>
              <th>Event 2</th>
              <th>Event 3</th>
              <th>Event 4</th>
              <th>Event 5</th>
              <th>Event 6</th>
          </tr>
            <%  if(session.getAttribute("user")==null || session.getAttribute("user") == "" || session.getAttribute("user") == " " ) 
          { 
              response.sendRedirect("caught.jsp"); 
          } 
          else 
         {PreparedStatement ps2 = null;
              PreparedStatement ps = null;
String getdpass = null;
String uname1=request.getParameter("uname");
String passd1=request.getParameter("passwd");
 Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/VAJRA", "superuser", "superuser");
 ps=con.prepareStatement("SELECT * FROM user_reg WHERE rno= ? ");
             ps.setString(1, session.getAttribute("user").toString());
      //preparedStmt.executeUpdate();
             ResultSet rs1=ps.executeQuery();
             while(rs1.next())
             {
                %>
                <tr>
                               <td><%= rs1.getString(9).toString() %></td>
                 <td><%= rs1.getString(10).toString() %></td>
                  <td><%= rs1.getString(11).toString() %></td>
                   <td><%= rs1.getString(12).toString() %></td>
                    <td><%= rs1.getString(13).toString() %></td>
                     <td><%= rs1.getString(14).toString() %></td>
                 </tr>
                <% }
                      
         %>
       
            </table></form>
                
		</div>
      
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    
    
    <%}%>
    
  </body>
</html>
