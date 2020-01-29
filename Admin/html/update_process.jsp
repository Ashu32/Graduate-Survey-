<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/survey";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String gender=request.getParameter("gender");
String cgpa=request.getParameter("cgpa");
String occu=request.getParameter("occu");
String math=request.getParameter("math");
String phy=request.getParameter("phy");
String hum=request.getParameter("hum");
String core=request.getParameter("core");
String engg=request.getParameter("engg");
String lab=request.getParameter("lab");
String comp=request.getParameter("comp");
String lib=request.getParameter("lib");
String olab=request.getParameter("olab");
String admis=request.getParameter("admis");
String admin=request.getParameter("admin");
String exam=request.getParameter("exam");
String ment=request.getParameter("ment");
String train=request.getParameter("train");
String host=request.getParameter("host");
String cant=request.getParameter("cant");
String trans=request.getParameter("trans");
String sport=request.getParameter("sport");
String secur=request.getParameter("secur");
String chum=request.getParameter("chum");
String gen=request.getParameter("gen");
String ccour=request.getParameter("ccour");
String ecour=request.getParameter("ecour");
String secur=request.getParameter("secur");
String csat=request.getParameter("csat");
String confi=request.getParameter("confi");
String ocomm=request.getParameter("ocomm");
String proj=request.getParameter("proj");
String aprog=request.getParameter("aprog");
String ssat=request.getParameter("ssat");
String iprof=request.getParameter("iprof");
String eact=request.getParameter("eact");
String sloc=request.getParameter("sloc");
String cons=request.getParameter("cons");
String exp=request.getParameter("exp");
String ado=request.getParameter("ado");
String list=request.getParameter("list");
String sugg=request.getParameter("sugg");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update clgsurvey_table set id=?,degree=?,year=?,description=?,gender=?,gpa=?,math=?,phy=?,hum=?,c_engg=?,o_engg=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, branch);
ps.setString(3, year);
ps.setString(5, gender);
ps.setString(6, cgpa);
ps.setString(4, occu);
ps.setString(7, math);
ps.setString(8, phy);
ps.setString(9, hum);
ps.setString(10, core);
ps.setString(11, engg);
ps.setString(11, lab);
ps.setString(11, comp);
ps.setString(11, lib);
ps.setString(11, olab);
ps.setString(11, admis);
ps.setString(11, admin);
ps.setString(11, exam);
ps.setString(11, ment);
ps.setString(11, train);
ps.setString(11, host);
ps.setString(11, cant);
ps.setString(11, trans);
ps.setString(11, sport);
ps.setString(11, secur);
ps.setString(11, chum);
ps.setString(11, gen);
ps.setString(11, ccour);
ps.setString(11, ecour);
ps.setString(11, secur);
ps.setString(11, csat);
ps.setString(11, confi);
ps.setString(11, ocomm);
ps.setString(11, proj);
ps.setString(11, aprog);
ps.setString(11, aprogm);
ps.setString(11, ssat);
ps.setString(11, iprof);
ps.setString(11, eact);
ps.setString(11, sloc);
ps.setString(11, cons);
ps.setString(11, exp);
ps.setString(11, ado);
ps.setString(11, list);
ps.setString(11, sugg);

int i = ps.executeUpdate();
if(i > 0)
{
%>
 <script>
        alert("Data Updated Successfull");
        setTimeout(function() {
            document.location = "basic-table.jsp";
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