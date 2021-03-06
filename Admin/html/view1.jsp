
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>Survey(Admin)</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- toast CSS -->
    <link href="../plugins/bower_components/toast-master/css/jquery.toast.css" rel="stylesheet">
    <!-- morris CSS -->
    <link href="../plugins/bower_components/morrisjs/morris.css" rel="stylesheet">
    <!-- chartist CSS -->
    
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="css/colors/default.css" id="theme" rel="stylesheet">
    <script src="https://kit.fontawesome.com/eb5ea08954.js" crossorigin="anonymous"></script>
   
</head>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String name=(String)session.getAttribute("user");  
if(name == null)
{

    %>
     <script>
     
          alert("Don't Trespass!!! Login");
        setTimeout(function() {
            document.location = "../../login.html";
        }, 500); // <-- this is the delay in milliseconds
</script>
    <%
}

String sno = request.getParameter("sno");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "survey";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from contact where sno="+sno;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<body class="fix-header">
	<!-- ============================================================== -->
    <!-- Preloader -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    <div id="wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <img src="../../images/SITBBS.png" />
                </div>
                <!-- /Logo -->
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <a class="nav-toggler open-close waves-effect waves-light hidden-md hidden-lg"
                            href="javascript:void(0)"><i class="fa fa-bars"></i></a>
                    </li>
                    <li>

                    </li>
                    <li style="">
                        <i class="fas fa-user"
                            style="color: aliceblue; font-size: 30px; padding-top:15px; margin-left: 10px;"></i>
                        <br>
                        <b class="hidden-xs" style="color: aliceblue; padding-right: 15px;" id="name"><%= name %></b></a>
                      
                    </li>
                    <li>
                    <a style="padding-top:12px;" href="logout.jsp"><i class="fas fa-sign-out-alt"></i> Log Out</a>
                    </li>
                </ul>
                <!-- <button>Logout</button> -->
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- End Top Navigation -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span
                            class="hide-menu">Navigation</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="Admin.jsp" class="waves-effect"><i class="fa fa-clock-o fa-fw"
                                aria-hidden="true"></i>Dashboard</a>
                    </li>
                    
                    <li>
                        <a href="basic-table.jsp" ><i class="fas fa-eye" aria-hidden="true"></i> View Survey</a>
                    </li>
                    <li>
                        <a href="download.jsp" ><i class="fas fa-download" aria-hidden="true"></i> Download Survey</a>
                    </li>
                    <li>
                        <a href="feedback_tbl.jsp" ><i  class="fas fa-comment-alt"  aria-hidden="true"></i> Feedback</a>
                    </li>
                    
                </ul>

            </div>


        </div>
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page Content -->
        <!-- ============================================================== -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Survey</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        
                        <ol class="breadcrumb">
                            <li><a href="Admin.jsp">Dashboard</a></li>
                            <li class="active">view Survey</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">View Survey Data</h3>


<form method="post" action="update_process1.jsp">
<input type="hidden" name="sno" value="<%=resultSet.getInt(1) %>">
Sno:
<%=resultSet.getInt(1) %>
<br>
Name:
<%=resultSet.getString(2) %>
<br>
Type:
<%=resultSet.getString(3) %>
<br>
email:
<%=resultSet.getString(4) %>
<br>
Message:
<%=resultSet.getString(5) %>
<br>



<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</form>
</div>
</div>
</div>
</div>
</div>
 <!-- /.container-fluid -->
             <footer class="footer" style="text-align: center;"> All rights reserved | This is made with
            <i class="fas fa-heart" style="padding-top: 10px;"></i>
            by
            Ashutosh,Sachin & Shriya</footer>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
</body>

</html>




