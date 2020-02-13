<%-- 
    Document   : login
    Created on : Jun 16, 2019, 11:01:45 AM
    Author     : Tharaka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
  <head>
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
            <h1 class="text-white margin-bottom-0 text-size-50 text-thin text-line-height-1">Login / Register</h1>    
        
        </header>
        
		  
        <div class="section background-white"> 
          <div class="line">
            <div class="margin">
              
              <!-- register Information -->
              <div class="s-12 m-12 l-6">
<div class="float-left"> </div>
                <div class="margin-left-80 margin-bottom"> </div>
                <div class="float-left"> </div>
                <div class="margin-left-80 margin-bottom"> </div>
                <div class="float-left"> </div>
                <div class="margin-left-80"> </div>
                
              </div>
              
           
                           
              
              <form action="userloginservlet" method="POST">
			    <h1><b>Login</b></h1>
         <table border="3">
            
            <tbody>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="uname" value="" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" value="" /></td>
                </tr>
                <tr>
                    <td><input type="reset" value="Reset" /></td>
                    <td><input type="submit" value="Login" /></td>
                </tr>
            </tbody>
         </table>
        </form>
                            <br><br><br>
 
                            

              <!-- reg Form -->
              <div class="s-12 m-12 l-6">
                <h2 class="text-uppercase text-strong margin-bottom-30">Register new member</h2>
                <form class="customform" method="post" action="userdetailservlet">
                  <div class="line">
                    <div class="margin">
                      <div class="s-12 m-12 l-6">
                        <input name="email" class="required email border-radius" placeholder="Your e-mail" title="Your e-mail" type="text" />
                      </div>
                      <div class="s-12 m-12 l-6">
                        <input name="phone" class="name border-radius" placeholder="Mobile Number" title="mobile number" type="text" />
                      </div>
                    </div>
                  </div>
                  <div class="s-12"> 
                    <input name="fname" class="subject border-radius" placeholder="First Name" title="firstname" type="text" />
                  </div>
                  <div class="s-12">
                    <input name="lname" class="required message border-radius" placeholder="Last Name" title="lastname" type="text" />
                   
                   <div class="s-12 m-12 l-6">
                        <input name="uname" class="uname border-radius" placeholder="Username" title="uname" type="text" />
                  </div><br><br><br><br>
                      
                      <div class="s-12 m-12 l-6">
                        <input name="password" class="password border-radius" placeholder="Password" title="password" type="password" />
                      </div><br><br><br>
                      Local <input type="radio" name="region" value="local" />
                      Forign <input type="radio" name="region" value="forign" />
                      <br>
                      <br>
                   
                   
                   
                  <div class="s-12 m-12 l-4"><button class="submit-form button background-primary border-radius text-white" type="submit">Submit Button</button></div> 
                </form>
              </div>  
            </div>  
          </div> 
        </div> 
      </article>
      <div class="background-primary padding text-center">
                                                                             
      </div>
      <!-- MAP -->
      <div class="s-12 grayscale center"> </div>
    </main>
    
    <!--FOOTER -->
    <footer>
      <!-- Social -->
      <div class="background-primary padding text-center">
        <a href="/"><i class="icon-facebook_circle icon2x text-white"></i></a> 
        <a href="/"><i class="icon-twitter_circle icon2x text-white"></i></a>
        <a href="/"><i class="icon-google_plus_circle icon2x text-white"></i></a>
        <a href="/"><i class="icon-instagram_circle icon2x text-white"></i></a>                                                                        
      </div>
      
      <!-- Main Footer -->
      <section class="section background-dark">
        <div class="line">
          <div class="margin">
            <!-- Collumn 1 -->
            <div class="s-12 m-12 l-4 margin-m-bottom-2x">
             
                                         
              <div class="line">
                <h4 class="text-uppercase text-strong margin-top-30"><a href="about.html" class="text-primary-hover">About us</a></h4>
                
              </div>
            </div>
            
            <!-- Collumn 2 -->
            <div class="s-12 m-12 l-4 margin-m-bottom-2x">
              <h4 class="text-uppercase text-strong">Contact Us</h4>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-placepin text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11 margin-bottom-10">
                  <p><b>Adress:</b> NSBM</p>
                </div>
              </div>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-mail text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11 margin-bottom-10">
                  <p><a href="/" class="text-primary-hover"><b>E-mail:</b> dea@nsbm.lk</a></p>
                </div>
              </div>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-smartphone text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11 margin-bottom-10">
                  <p><b>Phone:</b> 011 544 5000</p>
                </div>
              </div>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-twitter text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11 margin-bottom-10">
                  <p><a href="/" class="text-primary-hover"><b>Twitter</b></a></p>
                </div>
              </div>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-facebook text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11">
                  <p><a href="/" class="text-primary-hover"><b>Facebook</b></a></p>
                </div>
              </div>
            </div>
            
            <!-- Collumn 3 -->
            <div class="s-12 m-12 l-4">
              
            </div>
          </div>
        </div>
      </section>
      <hr class="break margin-top-bottom-0" style="border-color: rgba(0, 38, 51, 0.80);">
      
      <!-- Bottom Footer -->
      <section class="padding background-dark">
        <div class="line">
          <div class="s-12 l-6">
            <p class="text-size-12">Copyright 2019</p>
            
          </div>
          <div class="s-12 l-6">
            <a class="right text-size-12" href="http://www.myresponsee.com" title="Responsee - lightweight responsive framework">Design and coding<br> DEA Group</a>
          </div>
        </div>
      </section>
    </footer> 
    <script type="text/javascript" src="js/responsee.js"></script>
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="js/template-scripts.js"></script>   
   </body>
</html>