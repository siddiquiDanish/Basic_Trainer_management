<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">



</head>


<body>
	<form  action="/addPage" method="post" class="form-horizontal"
		modelAttribute="trainer">
<fieldset>

<!-- Form Name -->
<legend>Add Trainer</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="name">Name</label>  
  <div class="col-md-4">
  <input id="name" path="name" name="name" type="text" placeholder="Enter your name" class="form-control input-md" required=""/>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email Id</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="email" placeholder="Your email-Id" class="form-control input-md" required=""/>
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="technology">Technology</label>
  <div class="col-md-4">
    <select id="technology" name="technology" path="technology" class="form-control" required="">
     <option value="select">Select</option>
      <option value="Java">Java</option>
      <option value="Dotnet">Dotnet</option>
      <option value="C#">C#</option>
    </select>
  </div>
</div>

<!--SUBMIT Button -->
			<div style="margin-left: 560px" class="form-group">

				<div class="col-md-4">
					<button id="submit" type="submit" name="submit"
						class="btn btn-success">Submit</button>
				</div>
			</div>

</fieldset>
</form>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>