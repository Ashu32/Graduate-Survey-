
<!DOCTYPE html>
<html lang="en">

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
    <link href="../plugins/bower_components/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="../plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
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
    </div>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <h4 class="page-title" style="padding-top:30px;"  >Dashboard</h4>
                    <h4 class="page-title dropdown" style="float:right;padding:0;margin:0;" >
                  <select class="btn btn-primary">
                  <option value="2021">2021</option>
                <option value="2020">2020</option>
                <option value="2019">2019</option>
                <option value="2018">2018</option>
                <option value="2017">2017</option>
                </select>

                    </h4>
                </div>

            </div>
            <%
                try{
                    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                    statement=connection.createStatement();
                    String sql ="Select count(*) from master_student_data where survey_status = 1; ";
                    resultSet = statement.executeQuery(sql);
                    int total = 300;
                    while(resultSet.next()){
                    
                    %>
            <div class="row">
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">Total No. of Students</h3>
                        <ul class="list-inline two-part">
                            <li>
                                <div id="sparklinedash"></div>
                            </li>
                            <li class="text-right"><i class="ti-arrow-up text-success"></i> <span
                                    class="counter text-success"><%=total %></span></li>
                        </ul>
                        <br>
                    </div>
                </div>
        
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">Surveys answered</h3>
                        <ul class="list-inline two-part">
                            <li>
                                <div id="sparklinedash2"></div>
                            </li>
                                              
                                    
                            <li class="text-right"><i class="ti-arrow-up text-purple"></i> <span
                                    class="counter text-purple"><%=resultSet.getInt(1) %></span></li>
                                
                        </ul>
                        <br>
                        <a href="./basic-table.jsp" style="float:right;">View details</a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="white-box analytics-info">
                        <h3 class="box-title">Remaining</h3>
                        <ul class="list-inline two-part">
                            <li>
                                <div id="sparklinedash3"></div>
                            </li>
                            <li class="text-right"><i class="ti-arrow-up text-info"></i> <span
                                    class="counter text-info"><%=total - resultSet.getInt(1) %></span></li>
                        </ul>
                        <br>
                        
                    </div>
                </div>
            </div>
                <%
                    }
                    connection.close();
                    } catch (Exception e) {
                    e.printStackTrace();
                }
                %>
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <div class="white-box">
                        <h3 class="box-title">Survey Report</h3>
                        <ul class="list-inline text-right">
                            <li>
                                <h5><i class="fa fa-circle m-r-5 text-info"></i>Surveys</h5>
                            </li>
                            
                        </ul>
                        <div id="ct-visits" style="height: 405px;"></div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- chat-listing & recent comments -->
            <!-- ============================================================== -->

      
            <div class="row">

                <div class="col-md-6 col-lg-6 col-sm-0">
                    <div class="white-box">
                        <h3 class="box-title">Suggestion</h3>
                          

                        <div class="comment-center p-t-10">
                        <%
                            try{
                            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                            statement=connection.createStatement();
                            String sql ="Select * from contact where type='s' ORDER BY timestamp DESC; ";
                            resultSet = statement.executeQuery(sql);
                            int i = 0;
                            while(resultSet.next() && i < 5){
                        %>
                             <% String s = "https://robohash.org/" + resultSet.getString("sno"); %>
                            <div class="comment-body">
                                <div class="user-img"> <img src=<%= s %> alt="user"
                                        class="img-circle">
                                </div>
                                <div class="mail-contnet">
                                    <h5><%=resultSet.getString("name") %></h5><span class="time"><%=resultSet.getString("timestamp") %></span>
                                    <br /><span class="mail-desc"><%=resultSet.getString("message") %></span>
                                </div>
                            </div>
                        <%
                        i++;
                            }
                            connection.close();
                            } catch (Exception e) {
                            e.printStackTrace();
                            }
                    %> 
                        </div>
                        <a href="sugg.jsp" class="btn btn-rounded btn-warning" style="float:right;">View more</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title"> Open Issues</h3>
                          

                        <div class="comment-center p-t-10">
                        <%
                            try{
                            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                            statement=connection.createStatement();
                            String sql ="Select * from contact where type='i'and status=0 ORDER BY timestamp DESC; ";
                            resultSet = statement.executeQuery(sql);
                            int  i = 0;
                            while(resultSet.next() && i < 5){
                        %>
                             <% String s = "https://robohash.org/" + resultSet.getString("sno"); %>
                            <div class="comment-body">
                                <div class="user-img"> <img src=<%= s %> alt="user"
                                        class="img-circle">
                                </div>
                                <div class="mail-contnet">
                                    <h5><%=resultSet.getString("name") %></h5><span class="time"><%=resultSet.getString("timestamp") %></span>
                                    <br /><span class="mail-desc"><%=resultSet.getString("message") %></span> 
                                   
                                    <a  href="updateissue.jsp?id=<%=resultSet.getString("sno")%>"><i style="float:right;" class="fa fa-check btn-success btn-outline" ></i></a>
                                </div>
                            </div>
                            
                        <%
                        i++;
                            }
                            connection.close();
                            } catch (Exception e) {
                            e.printStackTrace();
                            }
                    %> 
                        </div>
                        <a href="./issue.jsp" class="btn btn-rounded btn-danger" style="float:right;">View more</a>
                    </div>
                </div>

            </div>
            
        </div>
        

        <!-- /.container-fluid -->
        <footer class="footer" style="text-align: center;"> All rights reserved | This is made with
            <i class="fas fa-heart" style="padding-top: 10px;"></i>
            by
            Ashutosh,Sachin & Shriya</footer>
    </div>
    <!-- ============================================================== -->
    <!-- End Page Content -->
    <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Counter js -->
    <script src="../plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="../plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    
    <!-- Sparkline chart JavaScript -->
    <script src="../plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <script src="js/dashboard1.js"></script>
    <script src="../plugins/bower_components/toast-master/js/jquery.toast.js"></script>
</body>

</html>