<%-- 
    Document   : User
    Created on : 20 Mar, 2021, 2:34:21 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Improving Security in Cloud Storage</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
   
</head>
<!-- body -->

<body class="main-layout ">
    
    <!-- end loader -->
    <!-- header -->
    <header>
        <!-- header inner -->
        <div class="header">

            <div class="container">
                <div class="row">
                    <h2 style="color:white;">Improving Security in Cloud Storage: Auditing by Identity, Hidden Data, and Secure Sharing</h2>
                   
                </div>
                <div class="row">
                    <div class="col-md-12 location_icon_bottum">
                       <div class="row">
                            <div class="col-md-8 ">
                                <div class="menu-area">
                                    <div class="limit-box">
                                        <nav class="main-menu">
                                            <ul class="menu-area-main">
                                                <li> <a href="index.html">Home</a> </li>
                                                <li class="active"> <a href="User.jsp">User</a> </li>
                                                <li><a href="Sanitizer.jsp">Sanitizer</a></li>
                                                <li><a href="PKG.jsp">PKG</a></li>
                                                <li><a href="TPA.jsp">TPA</a></li>
                                                <li><a href="Cloud.jsp">Cloud</a></li>

                                            </ul>
                                        </nav>
                                    </div>
                                </div>

                            </div>
                           
                       </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end header inner -->
    </header>
    <!-- end header -->
    <section class="slider_section">
        <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
            <ul class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="first-slide" src="images/banner.jpg" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption relative">
                        
                            <span>Project</span>
                            <p> we  propose  a  remote  data  integrity  auditing  schemethat  realizes  data  sharing  with  sensitive  information  hiding  inthis  paper.  In  this  scheme,  a  sanitizer  is  used  to  sanitize  thedata  blocks  corresponding  to  the  sensitive  information  of  the file and transforms  these data blocks’ signatures into valid onesfor  the  sanitized  file.  </p>

                        </div>
                    </div>
                </div>
               
               
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <i class='fa fa-angle-left'></i>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <i class='fa fa-angle-right'></i>
            </a>
        </div>
    </section>

    <!-- about -->
    <div id="about" class="about">
        <div class="container">
            <div class="row">

                <div class="col-xl-5 col-lg-5 col-md-5 co-sm-l2">
                    <div class="about_box">
                        <h2>About Abstract<br><strong class="black"> </strong></h2>
                       
                        <p align="justify">With  cloud  storage   services,  users  can  remotelystore  their  data  to  the  cloud  and  realize  the  data  sharing  withothers.  Remote  data integrity auditing is  proposed to  guaranteethe  integrity  of  the  data  stored  in  the  cloud.  In  some  commoncloud   storage   systems   such   as   the   electronic   health   recordssystem,  the  cloud  file  might  contain  some  sensitive  information.The sensitive information should not be exposed to others whenthe  cloud  file  is  shared.  Encrypting  the  whole  shared  file  canrealize the sensitive information hiding, but will make this sharedfile unable to be used by others. </p>
                        
                        <a href="#">Read More</a>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-7 co-sm-l2">
                   <h2><span>Private Key Generator Login</span></h2>
          
          <div class="clr">
              <form name="login" action="PKGAction.jsp" method="post">
              <table cellpadding="10px" >
                  
                  <tr><td><font color="green">UserName</font></td><td><input type="text" name="email" placeholder="Enter UserName" required></input></td></tr>
              <tr><td>Password</td><td><input type="password" name="password"  placeholder="Enter Password"  required></input></td></tr>
              <tr><td></td><td><input type="Submit" value="Login"> <input type="Reset" ></input></td></tr>
                </table>
              </form>
                </div>
            </div>
        </div>
    </div>
    <!-- end about -->
   
   

  

    <!-- end product -->
   
   
    
     
        <div class="copyright">
            <div class="container">
                <p>Improving Security in Cloud Storage: Auditing by Identity, Hidden Data, and Secure Sharing</p>
           
        </div>
        </div>


    <!-- end footer -->
    <!-- Javascript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- javascript -->
    <script src="js/owl.carousel.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".fancybox").fancybox({
                openEffect: "none",
                closeEffect: "none"
            });

            $(".zoom").hover(function() {

                $(this).addClass('transition');
            }, function() {

                $(this).removeClass('transition');
            });
        });
    </script>
    <script>
        // This example adds a marker to indicate the position of Bondi Beach in Sydney,
        // Australia.
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 11,
                center: {
                    lat: 40.645037,
                    lng: -73.880224
                },
            });

            var image = 'images/maps-and-flags.png';
            var beachMarker = new google.maps.Marker({
                position: {
                    lat: 40.645037,
                    lng: -73.880224
                },
                map: map,
                icon: image
            });
        }
    </script>
    <!-- google map js -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
    <!-- end google map js -->
</body>

</html>