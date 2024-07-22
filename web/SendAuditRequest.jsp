<%-- 
    Document   : KgcAction
    Created on : Mar 27, 2018, 3:52:21 PM
    Author     : admin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String id=request.getParameter("id");
String email=(String)session.getAttribute("email");
try{
     Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enabling","root","root");
    Statement st=con.createStatement();
    int r=st.executeUpdate("insert into request values(null,'"+id+"','"+email+"',now(),'waiting','waiting')");
if(r>0){    
%>
    <script type="text/javascript">
        window.alert("Sent Successfully..!!");
        window.location="AuditRequest.jsp";
        </script>
<%    }else{
%>
    <script type="text/javascript">
        window.alert("Failed");
        window.location="AuditRequest.jsp";
        </script>
<% }
  
}catch(Exception e){
    out.println(e);
}%>