<%-- 
    Document   : KgcAction
    Created on : Mar 27, 2018, 3:52:21 PM
    Author     : admin
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String name=request.getParameter("name");
String Emailid=request.getParameter("Emailid");
String DateOfBirth=request.getParameter("DateOfBirth");
String gender=request.getParameter("gender");
String mobile=request.getParameter("mobile");
String city=request.getParameter("address");

String username=request.getParameter("username");
String password=request.getParameter("password");
%>
<% 
      Random r=new Random();
     int ii=r.nextInt(100000-5000)-500000;
   String k="DOID"+ii;
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enabling","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select count(*) from user where emailid='"+Emailid+"'");
    if(rs.next())
    {
        int count=rs.getInt(1);
        if(count==0)
        {
            int i=st.executeUpdate("insert into user values('"+k+"','"+name+"','"+Emailid+"','"+DateOfBirth+"','"+gender+"','"+mobile+"','"+city+"','"+username+"','"+password+"','waiting')");
            if(i>0)
            {
                %>
                <script type="text/javascript">
                    window.alert("Register success");
                    window.location="User.jsp";
                    </script>
                <%    
            }else{
%>
                <script type="text/javascript">
                    window.alert("Register failed");
                    window.location="UserRegister.jsp";
                    </script>
                <%  
}
        }else{
%>
                <script type="text/javascript">
                    window.alert("User Already Exist");
                    window.location="UserRegister.jsp";
                    </script>
                <%  
}
    }
}
catch(Exception e){
    out.println(e);
}%>