<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
	
	<style>
body {
	background-image:
		url("https://qph.fs.quoracdn.net/main-qimg-7bcf8234019040a4a9ebef53d6e20891");
	min-height: 110%;
	background-attachment: fixed;
	background-size: cover;
	backgorund-repeat: no-repeat;
}
</style>


</head>


<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Trainer Management</a>
			</div>
			
			
		</div>
	</nav>
	
	<h2 align="center" ><strong> Trainer Management Portal </strong></h2>
		<h4 align="center" style="margin-bottom: 50px;color:#2471A3";><i> "Training for better tomorrow!" </i> </h4>


	<form class="form-horizontal">
		<fieldset>
						
						<!-- Button (Double) -->
			<div style="margin-left: 250px" class="form-group">
				<label class="col-md-4 control-label" for="button1id"><strong></strong> </label>
				<div class="col-md-8">
						<a href="/trainerList"><input type="button"
							style="margin-bottom: 40px; width: 200px" value="Trainer List"
							id="bmibutton" class="btn btn-danger black-background white"></a>
				</div>
			</div>
			
						<!-- Button (Double) -->
			<div style="margin-left: 250px" class="form-group">
				<label class="col-md-4 control-label" for="button1id"><strong></strong> </label>
				<div class="col-md-8">
						<a href="/addPage"><input type="button"
							style="margin-bottom: 40px; width: 200px" value="Add Trainer"
							id="bmibutton" class="btn btn-danger black-background white"></a>
				</div>
			</div>
						
						
			<!-- Form Name -->
			<div align="center" style="margin-bottom: 20px"> <strong>Need to skillup?</strong></div>
			
			<div align="center" ><marquee behavior="alternate" onmouseover="stop()" onmouseout="start()" style="color:red;" scrollamount="13" bgcolor="yellow" vspace="10"><b> Passionate about teaching?....</b></marquee>
			<b>Address:</b><p style="color:green"><b> The Training Academy, Jabalpur(MP) India</b></p>
			</div>


			

		</fieldset>
	</form>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>