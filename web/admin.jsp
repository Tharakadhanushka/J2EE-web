<%-- 
    Document   : admin
    Created on : Jun 16, 2019, 12:11:28 PM
    Author     : Tharaka
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trivago</title>
    <link rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="owl-carousel/owl.theme.css">
    <!-- CUSTOM STYLE -->
    <link rel="stylesheet" href="css/template-style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
    <script type="text/javascript" src="js/validation.js"></script> 
    </head>
    <body class="size-1140">
        
         <!-- HEADER -->
    <header role="banner">    
      <!-- Top Bar -->
      <div class="top-bar background-white">
        <div class="line">
          <div class="s-12 m-6 l-6">
            <div class="top-bar-contact">
              
            </div>
          </div>
          <div class="s-12 m-6 l-6">
            <div class="right">
              <ul class="top-bar-social right">
                
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Top Navigation -->
      <nav class="background-white background-primary-hightlight">
        <div class="line">
          <div class="s-12 l-2">
            <a href="homepage.jsp" class="logo"><img src="img/1.jpg" alt=""></a>
          </div>
          <div class="top-nav s-12 l-10">
            <p class="nav-text"></p>
            <ul class="right chevron">
              <li><a href="homepage.jsp">Home</a></li>
              <li><a href="products.html">Categories</a></li>
              <li><a>Services</a>
                <ul>
                  <li><a>Local</a>
                    <ul>
                      <li><a href="userlogoutservlet">Service 1 A</a></li>
                      <li><a>Service 1 B</a></li>
                    </ul>
                  </li>
                  <li><a>Foreign</a><ul>
                      <li><a>Service 1 A</a></li>
                      <li><a>Service 1 B</a></li>
                    </ul>
                  </li>
                  
                </ul>
              </li>
              <li><a href="about.jsp">About</a></li>
              <li><a href="gallery.jsp">Gallery</a></li>
              <li><a>Login/Logout</a>
              <ul>
                   <li><a href="login.jsp">Login</a>
                  </li>
                  <li><a href="logout.jsp">Logout</a>
                  </li>
				  </li>
              
            </ul>
          </div>
        </div>
      </nav>
    </header>
         <!-- MAIN -->
    <main role="main">
      <!-- Content -->
      <article>
        <header class="section background-primary text-center">
            <h1 class="text-white margin-bottom-0 text-size-50 text-thin text-line-height-1">Admin Page</h1>    
        
        </header>
        
		  
        <div class="section background-white"> 
          <div class="line">
            <div class="margin">
         
   
        <table border="5">
            <tr><td><h3><b>Account Details</b></h3></td>
                <td><h3><b>Delete Users</b></h3></td>
                
               </tr> 
          <tr>      
        <td>last login time: <%= new Date(session.getLastAccessedTime())%><br>
            
            <form action="userlogoutservlet" method="GET">
            Logout Admin account<input type="submit" value="logout" name="logout" />
        </form>
        
        
        
        </td><td>
        <form action="userdeleteservlet" method="POST">
            
            Enter username for Delete user : <input type="text" name="duser" value="" /><br>
            <input type="submit" value="Delete" />
        </form></td></tr></table>
        
        
    </body>
</html>
