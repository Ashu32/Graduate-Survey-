<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
    <html> 
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Login Check</title>
            <script type="text/javascript">
        function alertName(){
        alert("Invalid Credentials");
        } 
</script>
        </head> 
        <body> 
            <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
    
            
           

    try{
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/survey","root","");
        PreparedStatement theStatement = conn.prepareStatement("select * from login_details where username=? and password=?");
            theStatement.setString(1,request.getParameter("username"));
            theStatement.setString(2,request.getParameter("password"));
            request.setAttribute("alertMsg", "data");
                ResultSet theResult = theStatement.executeQuery();
                session.setAttribute("userkey","1");
                    if(theResult.next())
                    {
                        session.setAttribute("user",username);  
                        response.sendRedirect("./Admin/html/Admin.jsp");
                    }
                    else
                        {
                                
                               String redirectURL  = "login1.html";
                             
                           response.sendRedirect(redirectURL);
                        
                          
                          //RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");  
                            //rd.include(request, response);
                           
                         }
}


    catch(ClassNotFoundException e){

        e.printStackTrace();
         

          }
            


            %>
    </body> 
    </html>