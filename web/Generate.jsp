<%-- 
    Document   : KgcAction
    Created on : Mar 27, 2018, 3:52:21 PM
    Author     : admin
--%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String id=request.getParameter("id");
Random r1=new Random();
int i=r1.nextInt(100000-400)+500;
String kk=""+i;



try{
     Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enabling","root","root");
    Statement st=con.createStatement();
    int r=st.executeUpdate("update user set pkg='"+kk+"' where id='"+id+"'");
if(r>0){    
%>
    <script type="text/javascript">
        window.alert("Generated SUccessfully..!!");
        window.location="ViewUsers.jsp";
        </script>
<%    }else{
%>
    <script type="text/javascript">
        window.alert("Failed");
        window.location="ViewUsers.jsp";
        </script>
<% }
  
}catch(Exception e){
    out.println(e);
}%>