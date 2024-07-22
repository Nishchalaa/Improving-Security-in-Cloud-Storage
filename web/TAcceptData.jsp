<%-- 
    Document   : KgcAction
    Created on : Mar 27, 2018, 3:52:21 PM
    Author     : admin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String id=request.getParameter("id");

try{
     Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enabling","root","root");
    Statement st=con.createStatement();
    int r=st.executeUpdate("update request set status1='Approved' where fid='"+id+"'");
if(r>0){    
%>
    <script type="text/javascript">
        window.alert("Approved SUccessfully..!!");
        window.location="CViewAuditReq.jsp";
        </script>
<%    }else{
%>
    <script type="text/javascript">
        window.alert("Failed");
        window.location="CViewAuditReq.jsp";
        </script>
<% }
  
}catch(Exception e){
    out.println(e);
}%>