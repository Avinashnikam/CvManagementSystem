
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<t:simple_layout title="CV Ekle">

	<jsp:attribute name="head_area">
<meta charset="utf-8">
<link href="css/main.css" rel="stylesheet" type="text/css">
<script src="js/jquery-easywizard.js"></script>
<script src="js/photoUpload.js"></script> 
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

		
	<!--   -->
	


	<!-- editor ile ilgili baslangıc 
		http://www.jqueryscript.net/text/Responsive-WYSIWYG-Text-Editor-with-jQuery-Bootstrap-LineControl-Editor.html
	
	 -->
	    
		<script src="js/editor.js"></script>
		<link href="css/editor.css" type="text/css" rel="stylesheet" /> 

		
		<!-- editor ile ilgili bitis  -->
		
		
		<script>
			$(function() {
				$("#datepicker").datepicker({
					autoclose : true,
					todayHighlight : true
				}).datepicker('update', new Date());
				;
			});

			$(function() {
				$(".input-daterange input").datepicker({
					autoclose : true,
					todayHighlight : true
				}).datepicker('update', new Date());
				;
			});
			
			$(document).ready(function () {
	            var checkCount = 1;
	            $("#addCheckbox").click(function (e) {
	                e.preventDefault();
	                $("#ayrac").append('<div class="col-md-12"><div id="isDeneyimi"><div class="form-group"><label class="control-label">Company Name</label><input name="jobCompanyName" maxlength="45" type="text" class="form-control"placeholder="Enter Company Name" /></div><div class="form-group"><label class="control-label">Title</label><input name="jobTitle" maxlength="45" type="text" class="form-control"placeholder="Enter Title" /></div><div class="form-group"><label class="control-label">Working Date</label><div class="input-group input-daterange"><input name="jobStartDate" type="text" class="form-control" value="2012-04-05"><div class="input-group-addon">to</div><input name="jobEndDate" type="text" class="form-control" value="2012-04-19"></div></div><div class="form-group"><label class="control-label">Açıklama</label><textarea name="jobDescription" class="form-control" placeholder="Açıklama"></textarea></div></div></div><hr id="ayrac" style="width: 100%;margin-bottom:15px;color: black; height: 1px; background-color:black;" />');
	            });

	            $("#checkList").on("click", "#removeCheckbox", function (e) { 
	                e.preventDefault();
	                $(this).parent('div').remove();
	                checkCount--;
	            });
	        });
		</script>

</jsp:attribute>

	<jsp:attribute name="body_area">
	
<div class="container">
  
<div class="stepwizard col-md-offset-1">
    <div class="stepwizard-row setup-panel">
      
       <div class="stepwizard-step">
        <a href="#step-1" type="button" class="btn btn-default btn-circle">1</a>
        <p>CV</p>
      </div>
      
       <div class="stepwizard-step">
        <a href="#step-2" type="button" class="btn btn-primary btn-circle">2</a>
        <p>Personal Info</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-3" type="button" class="btn btn-default btn-circle">3</a>
        <p>Job Experience</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-4" type="button" class="btn btn-default btn-circle">4</a>
        <p>Education</p>
      </div>
      
       <div class="stepwizard-step">
        <a href="#step-5" type="button" class="btn btn-default btn-circle">5</a>
        <p>Projects</p>
      </div>
      
             <div class="stepwizard-step">
        <a href="#step-6" type="button" class="btn btn-default btn-circle">6</a>
        <p>Foreign Languages</p>
      </div>
      
             <div class="stepwizard-step">
        <a href="#step-7" type="button" class="btn btn-default btn-circle">7</a>
        <p>Skills</p>
      </div>
      
             <div class="stepwizard-step">
        <a href="#step-8" type="button" class="btn btn-default btn-circle">8</a>
        <p>Courses And Seminars</p>
      </div>
      
             <div class="stepwizard-step">
        <a href="#step-9" type="button" class="btn btn-default btn-circle">9</a>
        <p>Certificates</p>
      </div>
      
             <div class="stepwizard-step">
        <a href="#step-10" type="button" class="btn btn-default btn-circle">10</a>
        <p>Publications</p>
      </div>
      
             <div class="stepwizard-step">
        <a href="#step-11" type="button" class="btn btn-default btn-circle">11</a>
        <p>Submit</p>
      </div>
      
    </div>
  </div>
  
  <form role="form" action="upload" method="post" accept-charset="utf-8" enctype="multipart/form-data">
    
    
    <div class="row setup-content" id="step-1">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3>CV</h3>
           <div class="form-group">
            <label class="control-label">CV Name</label>
            <input name="cvName" required="required" maxlength="45" type="text" class="form-control" placeholder="Enter CV Name" /> 
          </div>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
        </div>
      </div>
    </div>
    
    
    
    <div class="row setup-content" id="step-2">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Personal Info</h3>
          <div class="form-group">
            <label class="control-label">Name</label>
            <input name="personalName" maxlength="45" type="text" class="form-control" placeholder="Enter Name" /> 
          </div>
            <div class="form-group">
              <label class="control-label">Title</label>
            <input name="personalTitle" maxlength="45" type="text" class="form-control" placeholder="Enter Your Title. (Like Software Developer)" /> 
          </div>
          <div class="form-group">
            <label class="control-label">Objectives</label>
            <textarea name="personalObjectives" class="form-control" placeholder="An objective is a short statement that clarifies your goals."></textarea>
          </div>
          
           <div class="form-group">
              <label class="control-label">Date Of Birth</label>
            	<div id="datepicker" class="input-group date" data-date-format="mm-dd-yyyy">
		    		<input name="personalDateofBirth" class="form-control" type="text" maxlength="10" />
		    		<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
				</div>
          </div>
          
          <div class="form-group">
            <label class="control-label">Cell Phone</label>
            <input name="personalCellPhone" max="11" type="text" class="form-control" placeholder="Enter your cell phone.">
          </div>
          
         <div class="form-group">
            <label class="control-label">Office Phone</label>
            <input name="personalOfficePhone" class="form-control" placeholder="Enter your office phone.">	
          </div>
          
           <div class="form-group">
            <label class="control-label">Adress</label>
            <textarea name="personalAddress" class="form-control" placeholder="Enter your adress."></textarea>
          </div>
          	<div> 
          	<label class="control-label">Marital Status</label>
				<label class="custom-control radio">
			  <input id="radio1" name="personalMaritalStatus" type="radio" class="custom-control-input">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description">Married</span>
			</label>
			<label class="custom-control radio">
			  <input id="radio2" name="personalMaritalStatus" type="radio" class="custom-control-input">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description">Single</span>
			</label>
			</div>
                    <!-- Photo upload section -->
          
			             <!-- image-preview-filename input [CUT FROM HERE]-->
           <div class="form-group">
            <label class="control-label">Profil Resmi</label>
             <input type="file" name="file" class="form-control" />
          </div>
					
	
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
        </div>
      </div>
    </div>
    
    	<!-- JOB EXPERIENCE START -->
    
    <div class="row setup-content" id="step-3">
      <div class="col-xs-6 col-md-offset-3" id="jobExperience">
	<!-- ekleme butonu -->
        <button id="addCheckbox" class="btn btn-success">+</button>
        
        <div class="col-md-12">  
          <div id="isDeneyimi">
	          <div class="form-group">
	            <label class="control-label">Company Name</label>
	            <input name="jobCompanyName" maxlength="45" type="text" class="form-control" placeholder="Enter Company Name" />
	          </div>
	          
	          <div class="form-group">
	            <label class="control-label">Title</label>
	            <input name="jobTitle" maxlength="45" type="text" class="form-control" placeholder="Enter Title" />
	          </div>
	          
	           <div class="form-group">
	            <label class="control-label">Working Date</label>							
				<div class="input-group input-daterange">
				    <input name="jobStartDate" type="text" class="form-control" value="2012-04-05">
				    <div class="input-group-addon">to</div>
				    <input name="jobEndDate" type="text" class="form-control" value="2012-04-19">
				</div>												
	          </div>
	          
	          <div class="form-group">
	            <label class="control-label">Description</label>
	            <textarea name="jobDescription" class="form-control" placeholder="Açıklama" ></textarea>
	          </div>
          </div>					
        </div>
        <hr id="ayrac" style="width: 100%; color: black; height: 1px; background-color:black;" />
         <div class="col-md-12">
         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
         </div>
      </div>
      
    </div>
       <!-- JOB EXPERIENCE END -->
        	
    
	<!-- EDUCATION START -->
	   <div class="row setup-content" id="step-4">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Education </h3>
          <div class="form-group">
            <label class="control-label">Company Name</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Name" />
          </div>
          
          <div class="form-group">
            <label class="control-label">Title</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Address" />
          </div>
          
           <div class="form-group">
            <label class="control-label">Working Date</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Working Date" />
          </div>
          
          <!-- text editor baslangıc -->
		<div class="container-fluid">
			<div class="row">
				<label class="control-label">Experience</label>
				<div class="container">
					<div class="row">
						<div class="col-lg-6 nopadding">
							<textarea id="txtEditor2"></textarea> 
						</div>
					</div>
				</div>
			</div>
		</div>
		  <!-- text editor bitis -->
		

          
          
         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button> 

        </div>
      </div>
      
    </div>
    
    	<!-- EDUCATION END -->
    
    
    
    
    
    
    
    
    
    <!-- PROJECTS START -->
	   <div class="row setup-content" id="step-5">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Projects </h3>
          <div class="form-group">
            <label class="control-label">Company Name</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Name" />
          </div>
          
          <div class="form-group">
            <label class="control-label">Title</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Address" />
          </div>
          
           <div class="form-group">
            <label class="control-label">Working Date</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Working Date" />
          </div>
          
          <!-- text editor baslangıc -->
		<div class="container-fluid">
			<div class="row">
				<label class="control-label">Experience</label>
				<div class="container">
					<div class="row">
						<div class="col-lg-6 nopadding">
							<textarea id="txtEditor2"></textarea> 
						</div>
					</div>
				</div>
			</div>
		</div>
		  <!-- text editor bitis -->
		

          
          
          
		<button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
        </div>
      </div>
      
    </div>
    
    	<!-- PROJECTS END -->
    	
    	
    	
    	
    	
    
        
    <!-- Foreign Lang START -->
	   <div class="row setup-content" id="step-6">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Foreign Languages </h3>
          <div class="form-group">
            <label class="control-label">Company Name</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Name" />
          </div>
          
          <div class="form-group">
            <label class="control-label">Title</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Address" />
          </div>
          
           <div class="form-group">
            <label class="control-label">Working Date</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Working Date" />
          </div>
          
          <!-- text editor baslangıc -->
		<div class="container-fluid">
			<div class="row">
				<label class="control-label">Experience</label>
				<div class="container">
					<div class="row">
						<div class="col-lg-6 nopadding">
							<textarea id="txtEditor2"></textarea> 
						</div>
					</div>
				</div>
			</div>
		</div>
		  <!-- text editor bitis -->
		

          
          
          
		<button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
        </div>
      </div>
      
    </div>
    
    	<!--  Foreign Lang  END -->
    	
    	
    	
 <!-- SKILLS START -->
	   <div class="row setup-content" id="step-7">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Skills </h3>
          <div class="form-group">
            <label class="control-label">Company Name</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Name" />
          </div>
          
          <div class="form-group">
            <label class="control-label">Title</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Address" />
          </div>
          
           <div class="form-group">
            <label class="control-label">Working Date</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Working Date" />
          </div>
          
          <!-- text editor baslangıc -->
		<div class="container-fluid">
			<div class="row">
				<label class="control-label">Experience</label>
				<div class="container">
					<div class="row">
						<div class="col-lg-6 nopadding">
							<textarea id="txtEditor2"></textarea> 
						</div>
					</div>
				</div>
			</div>
		</div>
		  <!-- text editor bitis -->
		
		<!-- BABA BU KISIMDA ENTER DEYİNCE UPLOAD'A YÖNLENDİRİYOR. TAB İLE EKLENİYOR. -->
<input type="text" value="C,C++,JAVA" data-role="tagsinput" />

          
          
          
		<button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
        </div>
      </div>
      
    </div>
    
    	<!--  SKILLS  END -->
    	
    	
    	
    	
    	
    	<!-- KURS-SEMINER START -->
	   <div class="row setup-content" id="step-8">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Courses And Seminars </h3>
          <div class="form-group">
            <label class="control-label">Company Name</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Name" />
          </div>
          
          <div class="form-group">
            <label class="control-label">Title</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Address" />
          </div>
          
           <div class="form-group">
            <label class="control-label">Working Date</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Working Date" />
          </div>
          
          <!-- text editor baslangıc -->
		<div class="container-fluid">
			<div class="row">
				<label class="control-label">Experience</label>
				<div class="container">
					<div class="row">
						<div class="col-lg-6 nopadding">
							<textarea id="txtEditor2"></textarea> 
						</div>
					</div>
				</div>
			</div>
		</div>
		  <!-- text editor bitis -->
		

          
          
          
		<button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
        </div>
      </div>
      
    </div>
    
    	<!--  KURS-SEMINER  END -->
    	
    	
    	
    	<!-- SERTİFİKA START -->
	   <div class="row setup-content" id="step-9">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Certificates </h3>
          <div class="form-group">
            <label class="control-label">Company Name</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Name" />
          </div>
          
          <div class="form-group">
            <label class="control-label">Title</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Address" />
          </div>
          
           <div class="form-group">
            <label class="control-label">Working Date</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Working Date" />
          </div>
          
          <!-- text editor baslangıc -->
		<div class="container-fluid">
			<div class="row">
				<label class="control-label">Experience</label>
				<div class="container">
					<div class="row">
						<div class="col-lg-6 nopadding">
							<textarea id="txtEditor2"></textarea> 
						</div>
					</div>
				</div>
			</div>
		</div>
		  <!-- text editor bitis -->
		

          
          
          
		<button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
        </div>
      </div>
      
    </div>
    
    	<!--  SERTİFİKA  END -->
    	
    	
    	
    	
    	
        	
    	<!-- YAYINLAR START -->
	   <div class="row setup-content" id="step-10">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Publications </h3>
          <div class="form-group">
            <label class="control-label">Company Name</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Name" />
          </div>
          
          <div class="form-group">
            <label class="control-label">Title</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Company Address" />
          </div>
          
           <div class="form-group">
            <label class="control-label">Working Date</label>
            <input maxlength="45" type="text" class="form-control"
									placeholder="Enter Working Date" />
          </div>
          
          <!-- text editor baslangıc -->
		<div class="container-fluid">
			<div class="row">
				<label class="control-label">Experience</label>
				<div class="container">
					<div class="row">
						<div class="col-lg-6 nopadding">
							<textarea id="txtEditor2"></textarea> 
						</div>
					</div>
				</div>
			</div>
		</div>
		  <!-- text editor bitis -->
		




          
          
		<button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
        </div>
      </div>
      
    </div>
    
    	<!--  YAYINLAR  END -->
    
    
	  
    <div class="row setup-content" id="step-11">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 10</h3>
          <input class="btn btn-success btn-lg pull-right" type="submit">Submit</input>
        </div>
      </div>
    </div>
    

	  
	  
  </form>
  

		
</div>


</jsp:attribute>

</t:simple_layout>