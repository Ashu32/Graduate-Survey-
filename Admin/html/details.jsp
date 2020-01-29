<html>

    <body>

    <br><br>

    <table width="200px;" style="border:1px solid #ff0000;background-color:f7f7f7" align="center">

    <tr style="font-weight:bold;">

    <td align="center" align="center" colspan=11 style="border-bottom: 2px solid #000000;">Graduate Survey</td>

    </tr>

 <tr style="font-weight:bold; ">

        <td align="center" style="border-bottom: 2px solid #000000;">Id</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Branch</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Year</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Gender</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Cgpa</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Ocuupation</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Overall Assessement</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Facilities</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Support Service</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Curriculumn</td>
        <td align="center" style="border-bottom: 2px solid #000000;">Program Expreience</td>
    </tr>

    <%@ page import="java.io.*,java.util.*,java.sql.*" %> 

    <%

    

	 String connectionURL = "jdbc:mysql://localhost:3306/survey";

	  String url=request.getParameter("WEB_URL");

	  String Content=new String("");

	  Statement stmt=null;

      Connection con=null;

    try

    {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	con=DriverManager.getConnection(connectionURL,"root",""); 

	stmt=con.createStatement();

	String qry = "select * from clgsurvey_table ";

	ResultSet rst= stmt.executeQuery(qry);

	while(rst.next())

	{

    %>


        <tr align="center" style="padding:50px;">
            <td><%=rst.getInt(1)%></td>
            <td style="padding:10px;" ><%=rst.getString(2)%></td>
            <td><%=rst.getString(3)%></td>
            <td><%=rst.getString(4)%></td>
            <td><%=rst.getString(5)%></td>
            <td><%=rst.getString(6)%></td>
            <% int oa = (Integer.parseInt(rst.getString(8))+Integer.parseInt(rst.getString(9))+Integer.parseInt(rst.getString(10))+Integer.parseInt(rst.getString(11))+Integer.parseInt(rst.getString(12)))/5; %>
            <td><%=oa%></td>
             <% int f = (Integer.parseInt(rst.getString(13))+Integer.parseInt(rst.getString(14))+Integer.parseInt(rst.getString(15))+Integer.parseInt(rst.getString(16))+Integer.parseInt(rst.getString(17)))/5; %>
            <td><%=f%></td>
            <% int qss = (Integer.parseInt(rst.getString(18))+Integer.parseInt(rst.getString(19))+Integer.parseInt(rst.getString(20))+Integer.parseInt(rst.getString(21))+Integer.parseInt(rst.getString(22))+Integer.parseInt(rst.getString(23))+Integer.parseInt(rst.getString(24))+Integer.parseInt(rst.getString(25))+Integer.parseInt(rst.getString(26))+Integer.parseInt(rst.getString(27)))/10; %>
            <td><%=qss%></td>
             <% int ci = (Integer.parseInt(rst.getString(28))+Integer.parseInt(rst.getString(29))+Integer.parseInt(rst.getString(30))+Integer.parseInt(rst.getString(31))+Integer.parseInt(rst.getString(32))+Integer.parseInt(rst.getString(33)))/6; %>
            <td><%=ci%></td>
             <% int ope = (Integer.parseInt(rst.getString(34))+Integer.parseInt(rst.getString(35))+Integer.parseInt(rst.getString(36))+Integer.parseInt(rst.getString(37))+Integer.parseInt(rst.getString(38))+Integer.parseInt(rst.getString(39))+Integer.parseInt(rst.getString(40))+Integer.parseInt(rst.getString(41))+Integer.parseInt(rst.getString(42))+Integer.parseInt(rst.getString(43))+Integer.parseInt(rst.getString(44)))/11; %>
            <td><%=ope%></td>
            
        </tr>


    <%

	}

    

    }

    catch(Exception e){

	e.printStackTrace();

    }

    %>

    </table>

    </body>

    </html>