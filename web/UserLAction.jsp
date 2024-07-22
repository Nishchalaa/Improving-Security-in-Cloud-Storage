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
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enabling","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from user where emailid='"+email+"' and password='"+password+"'");
while(rs.next()){    
  session.setAttribute("email",email);
%>
    <script type="text/javascript">
        window.alert("successfully login");
        window.location="User_Home.jsp";
        </script>
<%    }
%>
    <script type="text/javascript">
        window.alert("login Failed");
        window.location="User.jsp";
        </script>
<% 
  
}catch(Exception e){
    out.println(e);
}%>