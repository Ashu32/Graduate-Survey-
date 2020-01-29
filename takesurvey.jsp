<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Survey</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- CSS import -->
  <style>

  </style>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./progressbar.css">

  <!-- JS import -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script >
      function CheckOther(val){
      var element=document.getElementById('other');
      if(val=='others')
      {
          element.style.display='block';
          element.required='true';
      }  
      else  
        element.style.display='none';
      }

      function handleSubmit() {
          alert("Thank You for your feedback");
      } 

      function fixTop(field) {
          var id = 'text'+ field.id ;
          var element = document.getElementById(id);
          if(!(field.value === ""))
          {
              element.style.top='-170px';
              element.style.fontSize = '14px';
              element.style.color='black';
              
          }
      }
    </script>
  
  <!-- Wave Svg -->
  <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
    viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
    <defs>
    <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
    </defs>
    <g class="parallax">
    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
    </g>
  </svg>
</head>
<body >
<%
String user=(String)session.getAttribute("reg");  
String name=(String)session.getAttribute("name"); 
String img=(String)session.getAttribute("img"); 
if(user == null)
{


    %>   <script>
     
          alert("Don't Trespass!!!");
        setTimeout(function() {
            document.location = "surveylogin.html";
        }, 1000); // <-- this is the delay in milliseconds
</script>
  
    <%
}
%>
<div style="display: none;">
  <span><%= name %></span>
  <span><%= img%></span>
</div>

<% img = "./images/" + img + ".jpg" ;%>
<div class="lc" id="pre" >
	<div class="lw" style="padding-left: 43vw;">
        <p style="font-size:2rem;color:white;padding:0 43px;" >Welcome</p>
		<div >
      
			<img src=<%=img %> alt="user" style="width:200px;height:200px;border-radius: 50%;">
		</div>

		<div style="position:fixed;left:725px;"><strong><%= name %></strong></div>
	</div>
</div>
<script>
  $(window).on('load', function() { // makes sure the whole site is loaded 
    
    $('#pre').delay(2000).fadeOut('slow'); // will fade out the white DIV that covers the website.
})
</script>

<section class="section">
	<h1>__Questionnaire - Graduate Survey__</h1>

	<div class="form-progress">
		<progress class="form-progress-bar" min="0" max="100" value="0" step="33" aria-labelledby="form-progress-completion"></progress>
		
		<div class="form-progress-indicator one active"></div>
		<div class="form-progress-indicator two"></div>
		<div class="form-progress-indicator three"></div>
		<div class="form-progress-indicator four"></div>
		
		<p id="form-progress-completion" class="js-form-progress-completion sr-only" aria-live="polite">0% complete</p>
	</div>
	
	
	<div class="animation-container">
		<!-- Step one -->
		<div class="form-step js-form-step" data-step="1">

		<h1>Introduction</h1>		
    <span>The Silicon Institute of Technology(silicon) in it's strive for excellence considers the opinion/feedback of our graduates as one of the most valuable guiding resources. Silicon graduates feedback on educational experience at Silicon Institute of Technology help us significantly in developing the future direction of our educational program.</span>
<form action="form.jsp" onsubmit="return confirm('Thank You For Taking the Survey!!!');">
    <fieldset action="" name="form-step-1">
          <fieldset id="intro">
          <table style="text-align: left;width:100%">
                  <col width="30">
                  <col width="200">
                  <col width="100">
                  <col width="100">
                  <col width="100">
                  <col width="100">
                  <tr>
                      <th>1)</th>
                      <th><label>What degree you pursued at silicon:</label></th>
                      <th colspan="2">
                              <select name="cmb_int_degree">
                                  <option value="" selected disabled hidden>Select Branch</option>
                                  <option value="CSE">CSE</option>
                                  <option value="ECE">ECE</option>
                                  <option value="EEE">EEE</option>
                                  <option value="AEI">AEI</option>
                                  <option value="MCA">MCA</option>
                              </select>
                      </th>
      
                  </tr>
                  <tr>
                      <th>2)</th>
                      <th><label>Passing Year at silicon:</label></th>
                      <th colspan="2" >
                              <select name="cmb_int_passing_year" id="wgtmsr"  required>
                                      <option value="" selected disabled hidden>Select Year</option>
                                      <option value="2022" >2022</option>
                                      <option value="2021">2021</option>
                                      <option value="2020">2020</option>
                                      <option value="2019">2019</option>
                                      <option value="2018">2018</option>
                                      <option value="2017">2017</option>
                                      <option value="2016">2016</option>
                                      <option value="2015">2015</option>
                                      <option value="2014">2014</option>
                                      <option value="2013">2013</option>
                                      <option value="2012">2012</option>
                                      <option value="2011">2011</option>
                                      <option value="2010">2010</option>
                                      <option value="2009">2009</option>
                                      <option value="2008">2008</option>
                                      <option value="2007">2007</option>
                                      <option value="2006">2006</option>
                                      <option value="2005">2005</option>
                                      <option value="2004">2004</option>
                                      <option value="2003">2003</option>
                                      <option value="2002">2002</option>
                                      <option value="2001">2001</option>
                              </select>
                              </th>
                  </tr>
                  <tr>
                      <th>3)</th>
                      <th><label>Gender:</label></th>
                      <th><input type="radio" name="rb_int_gender" value="male" id="m" required>
                          <label>Male</label>
                      </th>
                      <th>
                          <input type="radio" name="rb_int_gender" value="female" id="f" >
                          <label>Female</label>
                      </th>
                      <th>
                          <input type="radio" name="rb_int_gender" value="other" id="o"  >
                          <label>Other</label>
                      </th> 
                  </tr>
                  
                  <tr>
                      <th>4)</th>
                      <th><label>What is your CGPA upto 6th sem:</label></th>
                      <th colspan="2"><input type="number" name="txt_int_cgpa" min="0" placeholder="0 - 10" max= "10" step="0.01" required></th>
                  </tr>
                  <tr >
                      <th>5)</th>
                      <th colspan="1" style="height: 80px"><label>Which of the following best describes
                          your status?</label></th>
                          <th colspan="2">
                              <select name="cmb_int_status"  onchange='CheckOther(this.value);' required >
                                  <option value="" selected disabled hidden>Choose here</option>
                                  <option value="jcampus">Offered job through campus recruitment</option>
                                  <option value="joff">Offered job through off-campus</option>
                                  <option value="ncampus">Interviewed, no offers</option>
                                  <option value="nint">Have not been Interviewed</option>
                                  <option value="hstud">Qualified for Higher Study</option>
                                  <option value="others">Others(Pi specify)</option>
                              </select>
                              
                          </th>
                          <th colspan="2">
                                  <textarea name="txt_int_statusOther" id="other"  rows="3" style="display: none;" ></textarea>
                          </th>
                              
                  </tr>
              
          </table>
      </fieldset>
          <div class="buttons">
                <button type="button" class="btn btn-alt js-reset">Reset</button>
                <button type="next" class="btn">Continue</button>
          </div>
    </fieldset>
  </div>
		
  <!-- Step two -->
  <div class="form-step js-form-step waiting hidden" data-step="2">
    <h2>Educational Experience at Silicon</h2>
    <span>Please rate the following items with respect to the overall satisfaction that you received/experienced against each item. Please note the scale used.</span>

    <fieldset action="" name="form-step-2">
        <div class="panel-group" >
    <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
             <strong>Quality Assessment of Student Experience</strong>
            </h4>
          </div>
        <fieldset id="collapse1" class="panel-collapse collapse in" >
            <div class="panel-body">
                <table style="width: 100%">
                    <col width="200">
                    <col width="100">
                    <col width="100">
                    <col width="100">
                    <col width="100">
                    <col width="100">
                    <tr class="centerA">
                        <th><strong>Overall Assessment of Student Experience</strong></th>
                        <th><strong>not satisfied</strong></th>
                        <th><strong>some what satisfied</strong></th>
                        <th><strong>satisfied</strong></th>
                        <th><strong>very much satisfied</strong></th>
                        <th><strong>extremely satisfied</strong></th>
                    </tr>
                        <tr>
                            <td>Mathematics</td>
                            <td colspan="5">
                                    <fieldset class="rating">
                                            <input type="hidden" value="1" >
                                            <input type="radio" id="5star" name="rb_ee_qas_maths" value="5" required  />
                                            <label class="full" for="5star" title="Excellent"></label>  
                                            <input type="radio" id="4star" name="rb_ee_qas_maths" value="4" />
                                            <label class="full" for="4star" title="Pretty good"></label> 
                                            <input type="radio" id="3star" name="rb_ee_qas_maths" value="3" />
                                            <label class="full" for="3star" title="Ok"></label>
                                            <input type="radio" id="2star" name="rb_ee_qas_maths" value="2" />
                                            <label class="full" for="2star" title="Bad"></label>
                                            <input type="radio" id="1star" name="rb_ee_qas_maths" value="1" />
                                            <label class="full" for="1star" title="Umm"></label>
                                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                            <td>Physical Science(Physics and Chemistry)</td>
                            <td colspan="5">
                                    <fieldset class="rating">
                                            <input type="hidden" value="2">
                                            <input type="radio" id="5star2" name="rb_ee_qas_phy_sci" value="5" required   />
                                            <label class="full" for="5star2" title="Excellent"></label>
                                            <input type="radio" id="4star2" name="rb_ee_qas_phy_sci" value="4" />
                                            <label class="full" for="4star2" title="Pretty good"></label>
                                            <input type="radio" id="3star2" name="rb_ee_qas_phy_sci" value="3" />
                                            <label class="full" for="3star2" title="Ok"></label>
                                            <input type="radio" id="2star2" name="rb_ee_qas_phy_sci" value="2" />
                                            <label class="full" for="2star2" title="Bad"></label>
                                            <input type="radio" id="1star2" name="rb_ee_qas_phy_sci" value="1" />
                                            <label class="full" for="1star2" title="Umm"></label>
                                    </fieldset>
                        </td>
                    </tr>
                    <tr>
                            <td>Humanities/Management</td>
                            <td colspan="5">
                                    <fieldset class="rating">
                                            <input type="hidden" value="3">
                                            <input type="radio" id="5star3" name="rb_ee_qas_hum_man" value="5" required   />
                                            <label class="full" for="5star3" title="Excellent"></label>
                                            <input type="radio" id="4star3" name="rb_ee_qas_hum_man" value="4" />
                                            <label class="full" for="4star3" title="Pretty good"></label>
                                            <input type="radio" id="3star3" name="rb_ee_qas_hum_man" value="3" />
                                            <label class="full" for="3star3" title="Ok"></label>
                                            <input type="radio" id="2star3" name="rb_ee_qas_hum_man" value="2" />
                                            <label class="full" for="2star3" title="Bad"></label>
                                            <input type="radio" id="1star3" name="rb_ee_qas_hum_man" value="1" />
                                            <label class="full" for="1star3" title="Umm"></label>
                                    </fieldset>
                        </td>
                    </tr>
                    <tr>
                            <td>Core Engineering Courses</td>
                            <td colspan="5">
                                    <fieldset class="rating">
                                            <input type="hidden" value="4">
                                            <input type="radio" id="5star4" name="rb_ee_qas_co_engg" value="5" required   />
                                            <label class="full" for="5star4" title="Excellent"></label>
                                            <input type="radio" id="4star4" name="rb_ee_qas_co_engg" value="4" />
                                            <label class="full" for="4star4" title="Pretty good"></label>
                                            <input type="radio" id="3star4" name="rb_ee_qas_co_engg" value="3" />
                                            <label class="full" for="3star4" title="Ok"></label>
                                            <input type="radio" id="2star4" name="rb_ee_qas_co_engg" value="2" />
                                            <label class="full" for="2star4" title="Bad"></label>
                                            <input type="radio" id="1star4" name="rb_ee_qas_co_engg" value="1" />
                                            <label class="full" for="1star4" title="Umm"></label>
                                    </fieldset>
                        </td>
                    </tr>
                    <tr>
                            <td>Engineering Courses imparted by others</td>
                            <td colspan="5">
                                    <fieldset class="rating">
                                            <input type="hidden" value="5">
                                            <input type="radio" id="5star5" name="rb_ee_qas_oth_engg" value="5" required   />
                                            <label class="full" for="5star5" title="Excellent"></label>
                                            <input type="radio" id="4star5" name="rb_ee_qas_oth_engg" value="4" />
                                            <label class="full" for="4star5" title="Pretty good"></label>
                                            <input type="radio" id="3star5" name="rb_ee_qas_oth_engg" value="3" />
                                            <label class="full" for="3star5" title="Ok"></label>
                                            <input type="radio" id="2star5" name="rb_ee_qas_oth_engg" value="2" />
                                            <label class="full" for="2star5" title="Bad"></label>
                                            <input type="radio" id="1star5" name="rb_ee_qas_oth_engg" value="1" />
                                            <label class="full" for="1star5" title="Umm"></label>
                                    </fieldset>
                             </td>
                        </tr>
                    </table>
                </div>
            </fieldset>
    </div>
    <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
               <strong>Quality of Facilities</strong>
              </h4>
            </div>
            <div id="collapse2" class="panel-collapse collapse">
              <div class="panel-body">
                <table style="width: 100%">
                        <col width="200">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                  <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                  </tr>
                  <tr>
                    <td>Classrooms</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="6">
                            <input type="radio" id="5star6" name="rb_ee_qof_class" value="5" required   />
                            <label class="full" for="5star6" title="Excellent"></label>
                            <input type="radio" id="4star6" name="rb_ee_qof_class" value="4" />
                            <label class="full" for="4star6" title="Pretty good"></label>
                            <input type="radio" id="3star6" name="rb_ee_qof_class" value="3" />
                            <label class="full" for="3star6" title="Ok"></label>
                            <input type="radio" id="2star6" name="rb_ee_qof_class" value="2" />
                            <label class="full" for="2star6" title="Bad"></label>
                            <input type="radio" id="1star6" name="rb_ee_qof_class" value="1" />
                            <label class="full" for="1star6" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Laboratories</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="7">
                            <input type="radio" id="5star7" name="rb_ee_qof_lab" value="5" required   />
                            <label class="full" for="5star7" title="Excellent"></label>
                            <input type="radio" id="4star7" name="rb_ee_qof_lab" value="4" />
                            <label class="full" for="4star7" title="Pretty good"></label>
                            <input type="radio" id="3star7" name="rb_ee_qof_lab" value="3" />
                            <label class="full" for="3star7" title="Ok"></label>
                            <input type="radio" id="2star7" name="rb_ee_qof_lab" value="2" />
                            <label class="full" for="2star7" title="Bad"></label>
                            <input type="radio" id="1star7" name="rb_ee_qof_lab" value="1" />
                            <label class="full" for="1star7" title="Umm"></label>
                      </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Computing Facility</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="8">
                            <input type="radio" id="5star8" name="rb_ee_qof_comp_fac" value="5" required   />
                            <label class="full" for="5star8" title="Excellent"></label>
                            <input type="radio" id="4star8" name="rb_ee_qof_comp_fac" value="4" />
                            <label class="full" for="4star8" title="Pretty good"></label>
                            <input type="radio" id="3star8" name="rb_ee_qof_comp_fac" value="3" />
                            <label class="full" for="3star8" title="Ok"></label>
                            <input type="radio" id="2star8" name="rb_ee_qof_comp_fac" value="2" />
                            <label class="full" for="2star8" title="Bad"></label>
                            <input type="radio" id="1star8" name="rb_ee_qof_comp_fac" value="1" />
                            <label class="full" for="1star8" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Library</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="9">
                            <input type="radio" id="5star9" name="rb_ee_qof_lib" value="5" required   />
                            <label class="full" for="5star9" title="Excellent"></label>
                            <input type="radio" id="4star9" name="rb_ee_qof_lib" value="4" />
                            <label class="full" for="4star9" title="Pretty good"></label>
                            <input type="radio" id="3star9" name="rb_ee_qof_lib" value="3" />
                            <label class="full" for="3star9" title="Ok"></label>
                            <input type="radio" id="2star9" name="rb_ee_qof_lib" value="2" />
                            <label class="full" for="2star9" title="Bad"></label>
                            <input type="radio" id="1star9" name="rb_ee_qof_lib" value="1" />
                            <label class="full" for="1star9" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Other Specialised Labs/Centres</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="10">
                            <input type="radio" id="5star10" name="rb_ee_qof_oth_lab" value="5" required   />
                            <label class="full" for="5star10" title="Excellent"></label>
                            <input type="radio" id="4star10" name="rb_ee_qof_oth_lab" value="4" />
                            <label class="full" for="4star10" title="Pretty good"></label>
                            <input type="radio" id="3star10" name="rb_ee_qof_oth_lab" value="3" />
                            <label class="full" for="3star10" title="Ok"></label>
                            <input type="radio" id="2star10" name="rb_ee_qof_oth_lab" value="2" />
                            <label class="full" for="2star10" title="Bad"></label>
                            <input type="radio" id="1star10" name="rb_ee_qof_oth_lab" value="1" />
                            <label class="full" for="1star10" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
                </table>        
              </div>
            </div>
    </div>
    <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
               <strong>Quality of Support Services</strong>
              </h4>
            </div>
            <div id="collapse3" class="panel-collapse collapse">
              <div class="panel-body">
                <table style="width: 100%">
                        <col width="200">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                  <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                  </tr>
                  <tr>
                    <td>Admission Cell</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="11">
                            <input type="radio" id="5star11" name="rb_ee_qoss_adm_cell" value="5" required />
                            <label class="full" for="5star11" title="Excellent"></label>
                            <input type="radio" id="4star11" name="rb_ee_qoss_adm_cell" value="4" />
                            <label class="full" for="4star11" title="Pretty good"></label>
                            <input type="radio" id="3star11" name="rb_ee_qoss_adm_cell" value="3" />
                            <label class="full" for="3star11" title="Ok"></label>
                            <input type="radio" id="2star11" name="rb_ee_qoss_adm_cell" value="2" />
                            <label class="full" for="2star11" title="Bad"></label>
                            <input type="radio" id="1star11" name="rb_ee_qoss_adm_cell" value="1" />
                            <label class="full" for="1star11" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Administration</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="12">
                            <input type="radio" id="5star12" name="rb_ee_qoss_adminst" value="5" required />
                            <label class="full" for="5star12" title="Excellent"></label>
                            <input type="radio" id="4star12" name="rb_ee_qoss_adminst" value="4" />
                            <label class="full" for="4star12" title="Pretty good"></label>
                            <input type="radio" id="3star12" name="rb_ee_qoss_adminst" value="3" />
                            <label class="full" for="3star12" title="Ok"></label>
                            <input type="radio" id="2star12" name="rb_ee_qoss_adminst" value="2" />
                            <label class="full" for="2star12" title="Bad"></label>
                            <input type="radio" id="1star12" name="rb_ee_qoss_adminst" value="1" />
                            <label class="full" for="1star12" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Examination Cell</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="13">
                            <input type="radio" id="5star13" name="rb_ee_qoss_exam" value="5" required />
                            <label class="full" for="5star13" title="Excellent"></label>
                            <input type="radio" id="4star13" name="rb_ee_qoss_exam" value="4" />
                            <label class="full" for="4star13" title="Pretty good"></label>
                            <input type="radio" id="3star13" name="rb_ee_qoss_exam" value="3" />
                            <label class="full" for="3star13" title="Ok"></label>
                            <input type="radio" id="2star13" name="rb_ee_qoss_exam" value="2" />
                            <label class="full" for="2star13" title="Bad"></label>
                            <input type="radio" id="1star13" name="rb_ee_qoss_exam" value="1" />
                            <label class="full" for="1star13" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Mentoring/Proctorial Services</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="14">
                            <input type="radio" id="5star14" name="rb_ee_qoss_mentor" value="5" required />
                            <label class="full" for="5star14" title="Excellent"></label>
                            <input type="radio" id="4star14" name="rb_ee_qoss_mentor" value="4" />
                            <label class="full" for="4star14" title="Pretty good"></label>
                            <input type="radio" id="3star14" name="rb_ee_qoss_mentor" value="3" />
                            <label class="full" for="3star14" title="Ok"></label>
                            <input type="radio" id="2star14" name="rb_ee_qoss_mentor" value="2" />
                            <label class="full" for="2star14" title="Bad"></label>
                            <input type="radio" id="1star14" name="rb_ee_qoss_mentor" value="1" />
                            <label class="full" for="1star14" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Training & Placement Cell</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="15">
                            <input type="radio" id="5star15" name="rb_ee_qoss_train_place" value="5" required />
                            <label class="full" for="5star15" title="Excellent"></label>
                            <input type="radio" id="4star15" name="rb_ee_qoss_train_place" value="4" />
                            <label class="full" for="4star15" title="Pretty good"></label>
                            <input type="radio" id="3star15" name="rb_ee_qoss_train_place" value="3" />
                            <label class="full" for="3star15" title="Ok"></label>
                            <input type="radio" id="2star15" name="rb_ee_qoss_train_place" value="2" />
                            <label class="full" for="2star15" title="Bad"></label>
                            <input type="radio" id="1star15" name="rb_ee_qoss_train_place" value="1" />
                            <label class="full" for="1star15" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Hostel Facility</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="16">
                            <input type="radio" id="5star16" name="rb_ee_qoss_hostel" value="5" required />
                            <label class="full" for="5star16" title="Excellent"></label>
                            <input type="radio" id="4star16" name="rb_ee_qoss_hostel" value="4" />
                            <label class="full" for="4star16" title="Pretty good"></label>
                            <input type="radio" id="3star16" name="rb_ee_qoss_hostel" value="3" />
                            <label class="full" for="3star16" title="Ok"></label>
                            <input type="radio" id="2star16" name="rb_ee_qoss_hostel" value="2" />
                            <label class="full" for="2star16" title="Bad"></label>
                            <input type="radio" id="1star16" name="rb_ee_qoss_hostel" value="1" />
                            <label class="full" for="1star16" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Canteen/Food Court</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="17">
                            <input type="radio" id="5star17" name="rb_ee_qoss_canteen" value="5" required />
                            <label class="full" for="5star17" title="Excellent"></label>
                            <input type="radio" id="4star17" name="rb_ee_qoss_canteen" value="4" />
                            <label class="full" for="4star17" title="Pretty good"></label>
                            <input type="radio" id="3star17" name="rb_ee_qoss_canteen" value="3" />
                            <label class="full" for="3star17" title="Ok"></label>
                            <input type="radio" id="2star17" name="rb_ee_qoss_canteen" value="2" />
                            <label class="full" for="2star17" title="Bad"></label>
                            <input type="radio" id="1star17" name="rb_ee_qoss_canteen" value="1" />
                            <label class="full" for="1star17" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Transport</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="18">
                            <input type="radio" id="5star18" name="rb_ee_qoss_transport" value="5" required />
                            <label class="full" for="5star18" title="Excellent"></label>
                            <input type="radio" id="4star18" name="rb_ee_qoss_transport" value="4" />
                            <label class="full" for="4star18" title="Pretty good"></label>
                            <input type="radio" id="3star18" name="rb_ee_qoss_transport" value="3" />
                            <label class="full" for="3star18" title="Ok"></label>
                            <input type="radio" id="2star18" name="rb_ee_qoss_transport" value="2" />
                            <label class="full" for="2star18" title="Bad"></label>
                            <input type="radio" id="1star18" name="rb_ee_qoss_transport" value="1" />
                            <label class="full" for="1star18" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Recreation/Sports</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="19">
                            <input type="radio" id="5star19" name="rb_ee_qoss_recre_sport" value="5" required />
                            <label class="full" for="5star19" title="Excellent"></label>
                            <input type="radio" id="4star19" name="rb_ee_qoss_recre_sport" value="4" />
                            <label class="full" for="4star19" title="Pretty good"></label>
                            <input type="radio" id="3star19" name="rb_ee_qoss_recre_sport" value="3" />
                            <label class="full" for="3star19" title="Ok"></label>
                            <input type="radio" id="2star19" name="rb_ee_qoss_recre_sport" value="2" />
                            <label class="full" for="2star19" title="Bad"></label>
                            <input type="radio" id="1star19" name="rb_ee_qoss_recre_sport" value="1" />
                            <label class="full" for="1star19" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Campus Security</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="20">
                            <input type="radio" id="5star20" name="rb_ee_qoss_recre_cam_sec" value="5" required />
                            <label class="full" for="5star20" title="Excellent"></label>
                            <input type="radio" id="4star20" name="rb_ee_qoss_recre_cam_sec" value="4" />
                            <label class="full" for="4star20" title="Pretty good"></label>
                            <input type="radio" id="3star20" name="rb_ee_qoss_recre_cam_sec" value="3" />
                            <label class="full" for="3star20" title="Ok"></label>
                            <input type="radio" id="2star20" name="rb_ee_qoss_recre_cam_sec" value="2" />
                            <label class="full" for="2star20" title="Bad"></label>
                            <input type="radio" id="1star20" name="rb_ee_qoss_recre_cam_sec" value="1" />
                            <label class="full" for="1star20" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
                </table>
                
              </div>
            </div>
    </div>
    <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <strong>Curriculum and Instruction</strong>
              </h4>
            </div>
            <div id="collapse4" class="panel-collapse collapse">
              <div class="panel-body">
                <table style="width: 100%">
                        <col width="200">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                  <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                  </tr>
                  <tr>
                    <td>Cirrcula for science & humanities courses (math,physics,chemisty,english and management) were adequate</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="21">
                            <input type="radio" id="5star21" name="rb_ee_ci_cir" value="5" required   />
                            <label class="full" for="5star21" title="Excellent"></label>
                            <input type="radio" id="4star21" name="rb_ee_ci_cir" value="4" />
                            <label class="full" for="4star21" title="Pretty good"></label>
                            <input type="radio" id="3star21" name="rb_ee_ci_cir" value="3" />
                            <label class="full" for="3star21" title="Ok"></label>
                            <input type="radio" id="2star21" name="rb_ee_ci_cir" value="2" />
                            <label class="full" for="2star21" title="Bad"></label>
                            <input type="radio" id="1star21" name="rb_ee_ci_cir" value="1" />
                            <label class="full" for="1star21" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>How you rate adequacy and usefulness of general courses of study</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="22">
                            <input type="radio" id="5star22" name="rb_ee_ci_gen" value="5" required   />
                            <label class="full" for="5star22" title="Excellent"></label>
                            <input type="radio" id="4star22" name="rb_ee_ci_gen" value="4" />
                            <label class="full" for="4star22" title="Pretty good"></label>
                            <input type="radio" id="3star22" name="rb_ee_ci_gen" value="3" />
                            <label class="full" for="3star22" title="Ok"></label>
                            <input type="radio" id="2star22" name="rb_ee_ci_gen" value="2" />
                            <label class="full" for="2star22" title="Bad"></label>
                            <input type="radio" id="1star22" name="rb_ee_ci_gen" value="1" />
                            <label class="full" for="1star22" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>How you rate adequacy and usefulness of programme core(major) courses</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="23">
                            <input type="radio" id="5star23" name="rb_ee_ci_program" value="5" required   />
                            <label class="full" for="5star23" title="Excellent"></label>
                            <input type="radio" id="4star23" name="rb_ee_ci_program" value="4" />
                            <label class="full" for="4star23" title="Pretty good"></label>
                            <input type="radio" id="3star23" name="rb_ee_ci_program" value="3" />
                            <label class="full" for="3star23" title="Ok"></label>
                            <input type="radio" id="2star23" name="rb_ee_ci_program" value="2" />
                            <label class="full" for="2star23" title="Bad"></label>
                            <input type="radio" id="1star23" name="rb_ee_ci_program" value="1" />
                            <label class="full" for="1star23" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>How you rate adequacy and usefulness of elective courses</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="24">
                            <input type="radio" id="5star24" name="rb_ee_ci_elective" value="5" required   />
                            <label class="full" for="5star24" title="Excellent"></label>
                            <input type="radio" id="4star24" name="rb_ee_ci_elective" value="4" />
                            <label class="full" for="4star24" title="Pretty good"></label>
                            <input type="radio" id="3star24" name="rb_ee_ci_elective" value="3" />
                            <label class="full" for="3star24" title="Ok"></label>
                            <input type="radio" id="2star24" name="rb_ee_ci_elective" value="2" />
                            <label class="full" for="2star24" title="Bad"></label>
                            <input type="radio" id="1star24" name="rb_ee_ci_elective" value="1" />
                            <label class="full" for="1star24" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>How you rate adequacy and usefulness of computer technology</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="25">
                            <input type="radio" id="5star25" name="rb_ee_ci_comp_tech" value="5" required   />
                            <label class="full" for="5star25" title="Excellent"></label>
                            <input type="radio" id="4star25" name="rb_ee_ci_comp_tech" value="4" />
                            <label class="full" for="4star25" title="Pretty good"></label>
                            <input type="radio" id="3star25" name="rb_ee_ci_comp_tech" value="3" />
                            <label class="full" for="3star25" title="Ok"></label>
                            <input type="radio" id="2star25" name="rb_ee_ci_comp_tech" value="2" />
                            <label class="full" for="2star25" title="Bad"></label>
                            <input type="radio" id="1star25" name="rb_ee_ci_comp_tech" value="1" />
                            <label class="full" for="1star25" title="Umm"></label>
                     </fieldset>
                </td>
              </tr>
              <tr>
                    <td>Are you satisfied with the curricula</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="26">
                            <input type="radio" id="5star26" name="rb_ee_ci_sat_cir" value="5" required   />
                            <label class="full" for="5star26" title="Excellent"></label>
                            <input type="radio" id="4star26" name="rb_ee_ci_sat_cir" value="4" />
                            <label class="full" for="4star26" title="Pretty good"></label>
                            <input type="radio" id="3star26" name="rb_ee_ci_sat_cir" value="3" />
                            <label class="full" for="3star26" title="Ok"></label>
                            <input type="radio" id="2star26" name="rb_ee_ci_sat_cir" value="2" />
                            <label class="full" for="2star26" title="Bad"></label>
                            <input type="radio" id="1star26" name="rb_ee_ci_sat_cir" value="1" />
                            <label class="full" for="1star26" title="Umm"></label>
                    </fieldset>
                </td>
              </tr>
                </table>
              </div>
    </div>
    </div>
    <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
               <strong>Overall Program Experience</strong>
              </h4>
            </div>
            <div id="collapse5" class="panel-collapse collapse">
              <div class="panel-body">
                <table style="width: 100%">
                        <col width="200">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                  <tr class="centerA">
                        <th><strong>Overall program experience</strong></th>
                        <th><strong>Strongly Disagree</strong></th>
                        <th><strong>Disagree</strong></th>
                        <th><strong>Neutral</strong></th>
                        <th><strong>Agree</strong></th>
                        <th><strong>Strongly Agree</strong></th>
                  </tr>
                  <tr>
                    <td>As a graduating senior,I feel confident of my knowledge and understanding of my field</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="27">
                            <input type="radio" id="5star27" name="rb_ee_ope_grad" value="5" required   />
                            <label class="full" for="5star27" title=" Strongly Agree"></label>
                            <input type="radio" id="4star27" name="rb_ee_ope_grad" value="4" />
                            <label class="full" for="4star27" title="Agree"></label>
                            <input type="radio" id="3star27" name="rb_ee_ope_grad" value="3" />
                            <label class="full" for="3star27" title="Neutral"></label>
                            <input type="radio" id="2star27" name="rb_ee_ope_grad" value="2" />
                            <label class="full" for="2star27" title="Disagree"></label>
                            <input type="radio" id="1star27" name="rb_ee_ope_grad" value="1" />
                            <label class="full" for="1star27" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>My written and oral communications skills were reinforced by the program to allow me to function well in job market</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="28">
                            <input type="radio" id="5star28" name="rb_ee_ope_write_oral" value="5" required   />
                            <label class="full" for="5star28" title=" Strongly Agree"></label>
                            <input type="radio" id="4star28" name="rb_ee_ope_write_oral" value="4" />
                            <label class="full" for="4star28" title="Agree"></label>
                            <input type="radio" id="3star28" name="rb_ee_ope_write_oral" value="3" />
                            <label class="full" for="3star28" title="Neutral"></label>
                            <input type="radio" id="2star28" name="rb_ee_ope_write_oral" value="2" />
                            <label class="full" for="2star28" title="Disagree"></label>
                            <input type="radio" id="1star28" name="rb_ee_ope_write_oral" value="1" />
                            <label class="full" for="1star28" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>The project work within my academic program prepared me for my profession</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="29">
                            <input type="radio" id="5star29" name="rb_ee_ope_project_acad" value="5" required   />
                            <label class="full" for="5star29" title=" Strongly Agree"></label>
                            <input type="radio" id="4star29" name="rb_ee_ope_project_acad" value="4" />
                            <label class="full" for="4star29" title="Agree"></label>
                            <input type="radio" id="3star29" name="rb_ee_ope_project_acad" value="3" />
                            <label class="full" for="3star29" title="Neutral"></label>
                            <input type="radio" id="2star29" name="rb_ee_ope_project_acad" value="2" />
                            <label class="full" for="2star29" title="Disagree"></label>
                            <input type="radio" id="1star29" name="rb_ee_ope_project_acad" value="1" />
                            <label class="full" for="1star29" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>I am satisfied that the academic program prepared by me to succeed within my profession</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="30">
                            <input type="radio" id="5star30" name="rb_ee_ope_acad_prog" value="5" required   />
                            <label class="full" for="5star30" title=" Strongly Agree"></label>
                            <input type="radio" id="4star30" name="rb_ee_ope_acad_prog" value="4" />
                            <label class="full" for="4star30" title="Agree"></label>
                            <input type="radio" id="3star30" name="rb_ee_ope_acad_prog" value="3" />
                            <label class="full" for="3star30" title="Neutral"></label>
                            <input type="radio" id="2star30" name="rb_ee_ope_acad_prog" value="2" />
                            <label class="full" for="2star30" title="Disagree"></label>
                            <input type="radio" id="1star30" name="rb_ee_ope_acad_prog" value="1" />
                            <label class="full" for="1star30" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>I am satisfied with the skills I gained from  the training component of the program</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="31">
                            <input type="radio" id="5star31" name="rb_ee_ope_sat_skills" value="5" required   />
                            <label class="full" for="5star31" title=" Strongly Agree"></label>
                            <input type="radio" id="4star31" name="rb_ee_ope_sat_skills" value="4" />
                            <label class="full" for="4star31" title="Agree"></label>
                            <input type="radio" id="3star31" name="rb_ee_ope_sat_skills" value="3" />
                            <label class="full" for="3star31" title="Neutral"></label>
                            <input type="radio" id="2star31" name="rb_ee_ope_sat_skills" value="2" />
                            <label class="full" for="2star31" title="Disagree"></label>
                            <input type="radio" id="1star31" name="rb_ee_ope_sat_skills" value="1" />
                            <label class="full" for="1star31" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>My program of study provided me with the ethical and legal understanding involved within my profession</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="32">
                            <input type="radio" id="5star32" name="rb_ee_ope_ethic" value="5" required   />
                            <label class="full" for="5star32" title=" Strongly Agree"></label>
                            <input type="radio" id="4star32" name="rb_ee_ope_ethic" value="4" />
                            <label class="full" for="4star32" title="Agree"></label>
                            <input type="radio" id="3star32" name="rb_ee_ope_ethic" value="3" />
                            <label class="full" for="3star32" title="Neutral"></label>
                            <input type="radio" id="2star32" name="rb_ee_ope_ethic" value="2" />
                            <label class="full" for="2star32" title="Disagree"></label>
                            <input type="radio" id="1star32" name="rb_ee_ope_ethic" value="1" />
                            <label class="full" for="1star32" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>I have found extracurricular activities enriching and supportive of the learning</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="33">
                            <input type="radio" id="5star33" name="rb_ee_ope_extracir" value="5" required   />
                            <label class="full" for="5star33" title=" Strongly Agree"></label>
                            <input type="radio" id="4star33" name="rb_ee_ope_extracir" value="4" />
                            <label class="full" for="4star33" title="Agree"></label>
                            <input type="radio" id="3star33" name="rb_ee_ope_extracir" value="3" />
                            <label class="full" for="3star33" title="Neutral"></label>
                            <input type="radio" id="2star33" name="rb_ee_ope_extracir" value="2" />
                            <label class="full" for="2star33" title="Disagree"></label>
                            <input type="radio" id="1star33" name="rb_ee_ope_extracir" value="1" />
                            <label class="full" for="1star33" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>I learned skills needed to effectively locate, retrive,and evaluate information</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="34">
                            <input type="radio" id="5star34" name="rb_ee_ope_effect" value="5" required   />
                            <label class="full" for="5star34" title=" Strongly Agree"></label>
                            <input type="radio" id="4star34" name="rb_ee_ope_effect" value="4" />
                            <label class="full" for="4star34" title="Agree"></label>
                            <input type="radio" id="3star34" name="rb_ee_ope_effect" value="3" />
                            <label class="full" for="3star34" title="Neutral"></label>
                            <input type="radio" id="2star34" name="rb_ee_ope_effect" value="2" />
                            <label class="full" for="2star34" title="Disagree"></label>
                            <input type="radio" id="1star34" name="rb_ee_ope_effect" value="1" />
                            <label class="full" for="1star34" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>I believe in continuing professional development and aim to develop my skills and knowledge after graduation</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="35">
                            <input type="radio" id="5star35" name="rb_ee_ope_prof_dev" value="5" required   />
                            <label class="full" for="5star35" title=" Strongly Agree"></label>
                            <input type="radio" id="4star35" name="rb_ee_ope_prof_dev" value="4" />
                            <label class="full" for="4star35" title="Agree"></label>
                            <input type="radio" id="3star35" name="rb_ee_ope_prof_dev" value="3" />
                            <label class="full" for="3star35" title="Neutral"></label>
                            <input type="radio" id="2star35" name="rb_ee_ope_prof_dev" value="2" />
                            <label class="full" for="2star35" title="Disagree"></label>
                            <input type="radio" id="1star35" name="rb_ee_ope_prof_dev" value="1" />
                            <label class="full" for="1star35" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>In general,I am satisfied with my experience I had at Silicon</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="36">
                            <input type="radio" id="5star36" name="rb_ee_ope_sat_exp" value="5" required   />
                            <label class="full" for="5star36" title=" Strongly Agree"></label>
                            <input type="radio" id="4star36" name="rb_ee_ope_sat_exp" value="4" />
                            <label class="full" for="4star36" title="Agree"></label>
                            <input type="radio" id="3star36" name="rb_ee_ope_sat_exp" value="3" />
                            <label class="full" for="3star36" title="Neutral"></label>
                            <input type="radio" id="2star36" name="rb_ee_ope_sat_exp" value="2" />
                            <label class="full" for="2star36" title="Disagree"></label>
                            <input type="radio" id="1star36" name="rb_ee_ope_sat_exp" value="1" />
                            <label class="full" for="1star36" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
              <tr>
                    <td>I would advise other students to attend Silicon</td>
                    <td colspan="5">
                        <fieldset class="rating">
                            <input type="hidden" value="37">
                            <input type="radio" id="5star37" name="rb_ee_ope_advice" value="5" required  />
                            <label class="full" for="5star37" title=" Strongly Agree"></label>
                            <input type="radio" id="4star37" name="rb_ee_ope_advice" value="4" />
                            <label class="full" for="4star37" title="Agree"></label>
                            <input type="radio" id="3star37" name="rb_ee_ope_advice" value="3" />
                            <label class="full" for="3star37" title="Neutral"></label>
                            <input type="radio" id="2star37" name="rb_ee_ope_advice" value="2" />
                            <label class="full" for="2star37" title="Disagree"></label>
                            <input type="radio" id="1star37" name="rb_ee_ope_advice" value="1" />
                            <label class="full" for="1star37" title="Strongly Disagree"></label>
                    </fieldset>
                </td>
              </tr>
                </table>         
              </div>
            </div>
    </div>
</div>


        <div class="buttons">
            <button type="button" class="btn btn-alt js-reset">Reset</button>

            <button type="next" class="btn">Continue</button>
        </div>
      </fieldset>
  </div>

	<!-- Step three -->
  <div class="form-step js-form-step waiting hidden" data-step="3">
			<h2>Section-3</h2>
    <span>Comments/Suggestions(Please feel free to comment on the program and its graduates in terms of their proffesional qualities and on any specific areas of strengths and weakness.Also,please feel free to suggest any improvements to our programs of study.)</span>

				<fieldset action="" name="form-step-3">
						<fieldset id="sec3" class="group">
          <textarea name="txt_sec3_coursebenifitted" rows="5" class="form-input" id="1" onblur="fixTop(this)"  required></textarea>
          <label class=" form-input-label" id="text1" >1.List the courses within your program from which you benefitted the most.</label>
          
          <textarea name="txt_sec3_coursepracticalexperience"  rows="5" class="form-input" id="2" onblur="fixTop(this)" required></textarea>
          <label class=" form-input-label" id="text2" >2.Which courses provided the best practical experience?</label>

          
          <textarea name="txt_sec3_advice"  rows="5"  class="form-input" id="3" onblur="fixTop(this)" required></textarea>
          <label class=" form-input-label" id="text3">3.What advice would you give to other students enrolled within your Program?</label>

          
          <textarea name="txt_sec3_otherSuggestion"  rows="5"  class="form-input" id="4" onblur="fixTop(this)" required></textarea>
          <label class=" form-input-label" id="text4"> 4.Any other suggestions to enrich the program of study at Silicon.</label>
        </fieldset>

						<div class="buttons">
								<button type="button" class="btn btn-alt js-reset">Reset</button>
								<button type="next" class="btn">Continue</button>
						</div>
			</fieldset>

    </div>
    		<!-- Step four -->
			<div class="form-step js-form-step waiting hidden" data-step="4">

          <span>Thank you for answering the graduating exit survey.We wish you the best of luck after graduation and thank you for your comments that will help improvement of program for your fellow student friends.</span>
  
          <fieldset action="" name="form-step-4">
              
              <div class="buttons">
                  <button type="button" class="btn btn-alt js-reset">Reset</button>		
                  <button type="submit" value="submit" class=" btn  form-submit-button" >submit</button>
              </div>
          </fieldset>
      </div>
    

</form>
			


		
		
		

	</div>
</section>
<!-- partial -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="./script.js"></script>

</body>
</html>