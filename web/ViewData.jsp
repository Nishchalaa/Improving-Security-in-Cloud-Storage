<%-- 
    Document   : User
    Created on : 20 Mar, 2021, 2:34:21 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
       <link rel="stylesheet" href="table.css">
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
                                                <li> <a href="User_Home.jsp">Home</a> </li>
                                                <li> <a href="UploadData.jsp">Upload Data</a> </li>
                                                <li><a href="ViewData.jsp">View Data</a></li>
                                             <li><a href="AuditRequest.jsp">Audit Request</a></li>
                                             
                                                <li><a href="User.jsp">Logout</a></li>

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
   

    <!-- about -->
    <div id="about" class="about">
        <div class="container" style="margin-bottom:400px;">
            <%String email=(String)session.getAttribute("email");%>
           

                   <h2><span>View Data</span></h2>
                   <table border="1">
                       <tr>
                           <th>Blood Group</th>
                           <th>BP</th>
                           <th>Disease</th>
                           <th>Signature</th>
                           <th>FileName</th>
                       </tr>
                      <%
                      try{
                       Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enabling","root","root");
    Statement st=con.createStatement();
     ResultSet r=st.executeQuery("select * from file where email='"+email+"' and status!='waiting'");                     
       while(r.next()){
           %>
           <tr>
               <td><%=r.getString("bloodgroup")%></td>
                 <td><%=r.getString("bp")%></td>
                   <td><%=r.getString("disease")%></td>
                     <td><%=r.getString("signature")%></td>
                       <td><%=r.getString("filename")%></td>
           </tr> 
           <%
       }                   
                      }catch(Exception e){
                         out.println(e); 
                      }
                      
                      
                      %> 
                       
                       
                       
                   </table>
                   
                   
           
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