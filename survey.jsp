<html>

<head>
   <title>Using GET Method to Read Form Data</title>
</head>

<body>
   <h1>Using GET Method to Read Form Data</h1>
   <ul>
      <li>
         <p>
            <b>degree pursued:</b>
            <%= request.getParameter("cmb_int_degree")%>
         </p>
      </li>
      <li>
         <p>
            <b>starting year:</b>
            <%= request.getParameter("cmb_int_passing_year")%>
         </p>
      </li>
      <li>
         <p>
            <b>gender:</b>
            <%= request.getParameter("rb_int_gender")%>
         </p>
      </li>
      <li>
         <p>
            <b>cgpa upto 6th sem:</b>
            <%= request.getParameter("txt_int_cgpa")%>
         </p>
      </li>
      <li>
         <p>
            <b>status is best descibed by:</b>
            <%= request.getParameter("cmb_int_status")%>
         </p>
      </li>
      <li>
         <p>
            <b>status other:</b>
            <%= request.getParameter("txt_int_statusOther")%>
         </p>
      </li>
      <li>
         <p>
            <b>Mathematics:</b>
            <%= request.getParameter("rb_ee_qas_maths")%>
         </p>
      </li>
      <li>
         <p>
            <b>Physical Science:</b>
            <%= request.getParameter("rb_ee_qas_phy_sci")%>
         </p>
      </li>
      <li>
         <p>
            <b>Humanities Management:</b>
            <%= request.getParameter("rb_ee_qas_hum_man")%>
         </p>
      </li>
      <li>
         <p>
            <b>Core Enginnering:</b>
            <%= request.getParameter("rb_ee_qas_co_engg")%>
         </p>
      </li>
      <li>
         <p>
            <b>Other Enginering:</b>
            <%= request.getParameter("rb_ee_qas_oth_engg")%>
         </p>
      </li>
      <li>
         <p>
            <b>Classrooms:</b>
            <%= request.getParameter("rb_ee_qof_class")%>
         </p>
      </li>
      <li>
         <p>
            <b>Labs:</b>
            <%= request.getParameter("rb_ee_qof_lab")%>
         </p>
      </li>
      <li>
         <p>
            <b>Computing Facility:</b>
            <%= request.getParameter("rb_ee_qof_comp_fac")%>
         </p>
      </li>
      <li>
         <p>
            <b>Library:</b>
            <%= request.getParameter("rb_ee_qof_lib")%>
         </p>
      </li>
      <li>
         <p>
            <b>Other Lab:</b>
            <%= request.getParameter("rb_ee_qof_oth_lab")%>
         </p>
      </li>
      <li>
         <p>
            <b>Admission Cell:</b>
            <%= request.getParameter("rb_ee_qoss_adm_cell")%>
         </p>
      </li>
      <li>
         <p>
            <b>Administration:</b>
            <%= request.getParameter("rb_ee_qoss_adminst")%>
         </p>
      </li>
      <li>
         <p>
            <b>Examination:</b>
            <%= request.getParameter("rb_ee_qoss_exam")%>
         </p>
      </li>
      <li>
         <p>
            <b>Mentoring Services:</b>
            <%= request.getParameter("rb_ee_qoss_mentor")%>
         </p>
      </li>
      <li>
         <p>
            <b>Trainig and Placement:</b>
            <%= request.getParameter("rb_ee_qoss_train_place")%>
         </p>
      </li>
      <li>
         <p>
            <b>Hostel Facility:</b>
            <%= request.getParameter("rb_ee_qoss_hostel")%>
         </p>
      </li>
      <li>
         <p>
            <b>Canteen Facility:</b>
            <%= request.getParameter("rb_ee_qoss_canteen")%>
         </p>
      </li>
      <li>
         <p>
            <b>Transport Facility:</b>
            <%= request.getParameter("rb_ee_qoss_transport")%>
         </p>
      </li>
      <li>
         <p>
            <b>Recreational sports:</b>
            <%= request.getParameter("rb_ee_qoss_recre_sport")%>
         </p>
      </li>
      <li>
         <p>
            <b>Campus Security:</b>
            <%= request.getParameter("rb_ee_qoss_recre_cam_sec")%>
         </p>
      </li>
      <li>
         <p>
            <b>Circular for Science :</b>
            <%= request.getParameter("rb_ee_ci_cir")%>
         </p>
      </li>
      <li>
         <p>
            <b>General Courses of study:</b>
            <%= request.getParameter("rb_ee_ci_gen")%>
         </p>
      </li>
      <li>
         <p>
            <b>Usefulness of core courses:</b>
            <%= request.getParameter("rb_ee_ci_program")%>
         </p>
      </li>
      <li>
         <p>
            <b>Usefulness of elective courses:</b>
            <%= request.getParameter("rb_ee_ci_elective")%>
         </p>
      </li>
      <li>
         <p>
            <b>Usefulness of Computer Technology:</b>
            <%= request.getParameter("rb_ee_ci_comp_tech")%>
         </p>
      </li>
      <li>
         <p>
            <b>Satisfaction Circular:</b>
            <%= request.getParameter("rb_ee_ci_sat_cir")%>
         </p>
      </li>
      <li>
         <p>
            <b>Confident of Knowledge:</b>
            <%= request.getParameter("rb_ee_ope_grad")%>
         </p>
      </li>
      <li>
         <p>
            <b>Oral Skill:</b>
            <%= request.getParameter("rb_ee_ope_write_oral")%>
         </p>
      </li>
      <li>
         <p>
            <b>Project Academics:</b>
            <%= request.getParameter("rb_ee_ope_project_acad")%>
         </p>
      </li>
      <li>
         <p>
            <b>Academsics Program:</b>
            <%= request.getParameter("rb_ee_ope_acad_prog")%>
         </p>
      </li>
      <li>
         <p>
            <b>Satidfied skills trainning:</b>
            <%= request.getParameter("rb_ee_ope_sat_skills")%>
         </p>
      </li>
      <li>
         <p>
            <b>Ethical Understanding:</b>
            <%= request.getParameter("rb_ee_ope_ethic")%>
         </p>
      </li>
      <li>
         <p>
            <b>Extra-Cur Activities:</b>
            <%= request.getParameter("rb_ee_ope_extracir")%>
         </p>
      </li>
      <li>
         <p>
            <b>Learned Skills needed:</b>
            <%= request.getParameter("rb_ee_ope_effect")%>
         </p>
      </li>
      <li>
         <p>
            <b>believe in continuing professional:</b>
            <%= request.getParameter("rb_ee_ope_prof_dev")%>
         </p>
      </li>
      <li>
         <p>
            <b>Satisfied with my experience:</b>
            <%= request.getParameter("rb_ee_ope_sat_exp")%>
         </p>
      </li>
      <li>
         <p>
            <b>Advice Others:</b>
            <%= request.getParameter("rb_ee_ope_advice")%>
         </p>
      </li>
      <li>
         <p>
            <b>courses that benefitted most:</b>
            <%= request.getParameter("txt_sec3_coursebenifitted")%>
         </p>
      </li>
      <li>
         <p>
            <b>courses that provide practical experience:</b>
            <%= request.getParameter("txt_sec3_coursepracticalexperience")%>
         </p>
      </li>
      <li>
         <p>
            <b>advice to students:</b>
            <%= request.getParameter("txt_sec3_advice")%>
         </p>
      </li>
      <li>
         <p>
            <b>other suggestions:</b>
            <%= request.getParameter("txt_sec3_otherSuggestion")%>
         </p>
      </li>
   </ul>
</body>

</html>