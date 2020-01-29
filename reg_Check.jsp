<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
    <html> 
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Registration Check</title>
            <script type="text/javascript">
        function alertName(){
        alert("Invalid Credentials");
        } 
</script>
        </head> 
        <body> 
            <%
            String reg_no = request.getParameter("reg_no");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/survey","root","");
        PreparedStatement theStatement = conn.prepareStatement("select * from master_student_data  where reg_no=?");
            theStatement.setString(1,request.getParameter("reg_no"));
           
            request.setAttribute("alertMsg", "data");
                ResultSet rs = theStatement.executeQuery();
                session.setAttribute("userkey","1");
                    if(rs.next())
                    {
                        int survey_status = rs.getInt("survey_status");
                        String name = rs.getString("name");
                        String img = rs.getString("img_url");

                        rs.getInt("survey_status");
                        if(survey_status == 0)
                        {
                            session.setAttribute("reg",reg_no);  
                            session.setAttribute("name", name);
                            session.setAttribute("img",img);
                            response.sendRedirect("takesurvey.jsp");
                        }
                        else
                        {

                            String redirectURL  = "surveylogin2.html";
                            response.sendRedirect(redirectURL);
                        }                   
                    }
                    else
                        {

                            
                          
                          String redirectURL  = "surveylogin1.html";
                            response.sendRedirect(redirectURL);
                           
                         }
}


    catch(ClassNotFoundException e){

        e.printStackTrace();
         

          }
            


            %>
    </body> 
    </html>