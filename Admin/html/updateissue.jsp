<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/survey";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String status="1";
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update contact set status=? where sno="+id;
ps = con.prepareStatement(sql);
ps.setString(1, status);
int i = ps.executeUpdate();
if(i > 0)
{
%>
 <script>
        alert("Issue Closed");
        setTimeout(function() {
            document.location = "issue.jsp";
        }, 1000); // <-- this is the delay in milliseconds
</script>
<%
}
else
{
%>
 <script>
        alert("There is a problem in updating Record.");
        setTimeout(function() {
            document.location = "basic-table.jsp";
        }, 1000); // <-- this is the delay in milliseconds
</script>
<%
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>