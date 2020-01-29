<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Form Submission</title>
   </head>
   <body>
   <
<%
String user=(String)session.getAttribute("reg");  
String degree=request.getParameter("cmb_int_degree");
String year=request.getParameter("cmb_int_passing_year");
String gender=request.getParameter("rb_int_gender");
String gpa=request.getParameter("txt_int_cgpa");
String description=request.getParameter("cmb_int_status");
String statusother=request.getParameter("txt_int_statusOther");
String math=request.getParameter("rb_ee_qas_maths");
String phy= request.getParameter("rb_ee_qas_phy_sci");
String hum= request.getParameter("rb_ee_qas_hum_man");
String c_engg= request.getParameter("rb_ee_qas_co_engg");
String o_engg= request.getParameter("rb_ee_qas_oth_engg");
String q_class= request.getParameter("rb_ee_qof_class");
String lab= request.getParameter("rb_ee_qof_lab");
String comp_fac= request.getParameter("rb_ee_qof_comp_fac");
String lib = request.getParameter("rb_ee_qof_lib");
String o_lab = request.getParameter("rb_ee_qof_oth_lab");
String admiss= request.getParameter("rb_ee_qoss_adm_cell");
String admin= request.getParameter("rb_ee_qoss_adminst");
String exam= request.getParameter("rb_ee_qoss_exam");
String services= request.getParameter("rb_ee_qoss_mentor");
String train= request.getParameter("rb_ee_qoss_train_place");
String hostel= request.getParameter("rb_ee_qoss_hostel");
String canteen= request.getParameter("rb_ee_qoss_canteen");
String transport= request.getParameter("rb_ee_qoss_transport");
String sports= request.getParameter("rb_ee_qoss_recre_sport");
String security= request.getParameter("rb_ee_qoss_recre_cam_sec");
String c_science= request.getParameter("rb_ee_ci_cir");
String gen= request.getParameter("rb_ee_ci_gen");
String use_core= request.getParameter("rb_ee_ci_program");
String use_ele= request.getParameter("rb_ee_ci_elective");
String use_comp= request.getParameter("rb_ee_ci_comp_tech");
String use_cir= request.getParameter("rb_ee_ci_sat_cir");
String conf= request.getParameter("rb_ee_ope_grad");
String oral= request.getParameter("rb_ee_ope_write_oral");
String proj= request.getParameter("rb_ee_ope_project_acad");
String acad= request.getParameter("rb_ee_ope_acad_prog");
String sat_skill= request.getParameter("rb_ee_ope_sat_skills");
String ethic= request.getParameter("rb_ee_ope_ethic");
String extra= request.getParameter("rb_ee_ope_extracir");
String l_skill= request.getParameter("rb_ee_ope_effect");
String prof= request.getParameter("rb_ee_ope_prof_dev");
String sat_exp= request.getParameter("rb_ee_ope_sat_exp");
String o_advice= request.getParameter("rb_ee_ope_advice");
String c_benefit= request.getParameter("txt_sec3_coursebenifitted");
String c_exp= request.getParameter("txt_sec3_coursepracticalexperience");
String advice= request.getParameter("txt_sec3_advice");
String o_sugg= request.getParameter("txt_sec3_otherSuggestion");
try{
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/survey","root","");
        Statement st=conn.createStatement();
        String sql="insert into clgsurvey_table (degree,year,gender,gpa,description,statusother,math,phy,hum,c_engg,o_engg,q_class, lab, comp_fac, lib, o_lab, admiss, admin, exam, services, train, hostel, canteen, transport, sports, security, c_science,gen,use_core, use_ele, use_comp, use_cir, conf, oral, proj, acad, sat_skill, ethic, extra, l_skill, prof, sat_exp, o_advice,c_benefit,c_exp,advice,o_sugg) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,degree);
        ps.setString(2,year);
        ps.setString(3,gender);
        ps.setString(4,gpa);
        ps.setString(5,description);
        ps.setString(6,statusother);
        ps.setString(7,math);
        ps.setString(8,phy);
        ps.setString(9,hum);
        ps.setString(10,c_engg);
        ps.setString(11,o_engg);
        ps.setString(12,q_class);
        ps.setString(13,lab);
        ps.setString(14,comp_fac);
        ps.setString(15,lib);
        ps.setString(16,o_lab);
        ps.setString(17,admiss);
        ps.setString(18,admin);
        ps.setString(19,exam);
        ps.setString(20,services);
        ps.setString(21, train );
        ps.setString(22, hostel );
        ps.setString(23, canteen );
        ps.setString(24,  transport);
        ps.setString(25, sports );
        ps.setString(26, security );
        ps.setString(27, c_science );
        ps.setString(28, gen );
        ps.setString(29, use_core );
        ps.setString(30,  use_ele);
        ps.setString(31,  use_comp);
        ps.setString(32,  use_cir);
        ps.setString(33, conf );
        ps.setString(34,  oral);
        ps.setString(35, proj );
        ps.setString(36, acad );
        ps.setString(37, sat_skill );
        ps.setString(38, ethic );
        ps.setString(39,  extra);
        ps.setString(40,  l_skill);
        ps.setString(41,  prof);
        ps.setString(42,  sat_exp);
        ps.setString(43,  o_advice);
        ps.setString(44,  c_benefit);
        ps.setString(45,  c_exp);
        ps.setString(46,  advice);
        ps.setString(47,  o_sugg);
        ps.executeUpdate();
        Statement st1 = conn.createStatement();
      st1.executeUpdate("UPDATE master_student_data SET survey_status=1 WHERE reg_no='"+user+"'");
        String redirectURL  = "index.html";
        response.sendRedirect(redirectURL);
    }

    catch(ClassNotFoundException e){

        e.printStackTrace();
         

          }


%>
        
   </body>
</html>