<%-- 
    Document   : KgcAction
    Created on : Mar 27, 2018, 3:52:21 PM
    Author     : admin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String email=request.getParameter("email");
String password=request.getParameter("password");%>
<%try{
if(email.equalsIgnoreCase("Sanitizer")&&password.equalsIgnoreCase("Sanitizer")){    
%>
    <script type="text/javascript">
        window.alert("successfully login");
        window.location="SanitizerHome.jsp";
        </script>
<%    }else{
%>
    <script type="text/javascript">
        window.alert("login Failed");
        window.location="Sanitizer.jsp";
        </script>
<% }
  
}catch(Exception e){
    out.println(e);
}%>