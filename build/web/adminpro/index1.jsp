<!DOCTYPE HTML>

<html>
	<head>
		<title>Admin Profile</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
        
        
        
        
        
        <style>

.navbar-cls-top {
    background: #00CA79;
    border-bottom: none;
    
}
           
.navbar {
    position: relative;
    min-height: 50px;
            }
            
            table {
  border-spacing: 0;
  border-collapse: collapse;
}
td,
th {
  padding: 0;
}
   
            .table {
    border-collapse: collapse !important;
  }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }

        
        
        
        
</style>
		
	</head>
	<body>
        
        
       <!-- <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">-->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            
            </div><br>
            <%
                 if(session.getAttribute("head")==null || session.getAttribute("head") == "" || session.getAttribute("head") == " " ) 
          { 
              response.sendRedirect("caught.jsp"); 
          } 
          else 
         {
                String img = "userimages/admin.jpg";
                %>

		<!-- Header -->
			<div id="header">

				<div class="top">

					<!-- Logo -->
					<div id="logo">
                                            <span class="image avatar48"><img src=<%=img%> alt=" " /></span>
							<h1 id="title">Admin</h1> 
							<p>Event Management System</p>
						</div>

					<!-- Nav -->
						<nav id="nav">
							
							<ul>
								<li ><a href="#top" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Profile</span></a></li>
<li><a href="eventc/create_evt.jsp" id="portfolio-link" class="skel-layers-ignoreHref" target="_blank"><span class="icon fa-plus">Create Event</span></a></li>
<li><a href="eventc/del_evt.html" id="about-link" class="skel-layers-ignoreHref" target="_blank"><span class="icon fa-minus">Delete Event</span></a></li>
<li><a href="../indexeditor.jsp" id="contact-link" class="skel-layers-ignoreHref" target="_blank"><span class="icon fa-book">Appearence</span></a></li>
<li><a href="usr_disp.jsp" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Users</span></a></li>
<li><a href="#profile" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Change Profile Picture</span></a></li>
<li><a href="user_reg.html" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Add User</span></a></li>
<li><a href="admin_reg.html" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Add Admin</span></a></li>
<li><a href="regview.jsp" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-user">View Registrations</span></a></li>
<li><a href="logout.jsp" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Logout</span></a></li>                                                                
							</ul>
						</nav>

				</div>

				<div class="bottom">

					<!-- Social Icons -->
						<!--<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul>-->

				</div>

			</div>

		<!-- Main -->
			<div id="main">
    
				<!-- Intro -->
					<section id="top" class="one dark cover">
						<div class="container">
                        <a href="eventc/create_evt.jsp"><img src="images/reate.png" style="height:120px; width:140px; border-radius:75% " ></a>
                &nbsp;<a href="#portfolio"><img src="images/download%20(4).jpg" style="height:120px; width:140px; border-radius:75% "></a>
                &nbsp;  <a href="eventc/del_evt.html"><img src="images/images%20(3).png" style="height:120px; width:140px; border-radius:75% "></a>
                &nbsp;<a href="#portfolio"><img src="images/images%20(17).jpg" style="height:120px; width:140px; border-radius:75%  "></a>

						</div>
					</section>

				<!-- Portfolio -->
					<section id="portfolio" class="two">
						<div class="container">

							<header>
								<h2><font size="15px">Create Event</font></h2>
							</header>
                            Can Create New Events....

							

						</div>
					</section>

				<!-- About Me -->
					<section id="about" class="three">
						<div class="container">

							<header>
								<h2>Delete Events</h2>
							</header>
                            Can Remove Events...
						
						</div>
					</section>

				<!-- Contact -->
					<section id="contact" class="four" style="background-color:whitesmoke;">
						<div class="container" >

							<header>
								<h2>Appearence</h2>
							</header>
                                                    <font color="grey"> changes the look of a webpage....</font>
						</div>
					</section>
                      <section id="contact" class="four">
						<div class="container1">

							<header>
								<h2>USERS</h2>
							</header>
                                                    <font color="white"> Can view and manage USERS.....</font>
						</div>
					</section>
                                  <section id="profile" class="four">
						<div class="container1">

							<header>
								<h2>Change Profile Picture</h2>
							</header>
                                                    <font color="white"> <h3>File Upload:</h3>
Select a file to upload: <br />
<form action="../filehandler/uploadimage2.jsp" method="post"
                        enctype="multipart/form-data">
<input type="file" name="file"  />
<br />
<input type="submit" value="Upload File" />
</form>
</font>
						</div>
					</section>

			</div>

		

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollzer.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

                        <%
         }
                 %>
        
</body>
</html>