<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
    <html> 
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Login Check</title> 
        </head> 
        <body> 
            <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String type = request.getParameter("type");
            String msg = request.getParameter("message");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/survey","root","");
        Statement st=conn.createStatement();
        String sql="insert into contact (name,email,type,message) values(?,?,?,?);";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,name);
        ps.setString(2,email);
        ps.setString(3,type);
        ps.setString(4,msg);
        ps.executeUpdate();
        
        String redirectURL  = "contact.html";
        response.sendRedirect(redirectURL);
    }

    catch(ClassNotFoundException e){

        e.printStackTrace();
         

          }
            


            %>
    </body> 
    </html>