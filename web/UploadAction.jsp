<%-- 
    Document   : KgcAction
    Created on : Mar 27, 2018, 3:52:21 PM
    Author     : admin
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email=(String)session.getAttribute("email");
    String name=request.getParameter("name");
String bgroup=request.getParameter("bgroup");
String bp=request.getParameter("bp");
String disease=request.getParameter("disease");
String filename=request.getParameter("filename");
String data=request.getParameter("data");
String signature=request.getParameter("signature");
String pkey=request.getParameter("pkey");

String cipher=request.getParameter("cipher");
String skey=request.getParameter("skey");
%>
<% 
   
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enabling","root","root");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into file values(null,'"+email+"','"+name+"','"+bgroup+"','"+bp+"','"+disease+"','"+filename+"','"+data+"','"+cipher+"','"+skey+"','"+signature+"','"+pkey+"','waiting','waiting')");
            if(i>0)
            {
                %>
                <script type="text/javascript">
                    window.alert("Upload success");
                    window.location="UploadData.jsp";
                    </script>
                <%    
            }else{
%>
                <script type="text/javascript">
                    window.alert("Upload failed");
                    window.location="UploadData.jsp";
                    </script>
                <%  
}
       
    }
catch(Exception e){
    out.println(e);
}%>