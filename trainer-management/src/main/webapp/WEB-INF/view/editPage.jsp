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
	<form:form action="/editPage" method="post" class="form-horizontal"
		modelAttribute="trainer">
		<fieldset>
		
		<form:hidden path="id" />

			<!-- Form Name -->
			<legend>Update Trainer Details</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Name</label>
				<div class="col-md-4">
					<input id="name" path="name" name="name" type="text"
						value="${trainer.name}" class="form-control input-md" required=""
						readonly="true" />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Email Id</label>
				<div class="col-md-4">
					<form:input id="email" name="email" path="email" type="email"
						value="${trainer.email}" class="form-control input-md" required="" />

				</div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="technology">Technology</label>
				<div class="col-md-4">
					<form:select id="technology" name="technology" path="technology"
						class="form-control" required="">
						<form:option value="${trainer.technology}">${trainer.technology}</form:option>
						<form:option value="Java">Java</form:option>
						<form:option value="Dotnet">Dotnet</form:option>
						<form:option value="C#">C#</form:option>
					</form:select>
				</div>
			</div>

			<!--SUBMIT Button -->
			<div style="margin-left: 560px" class="form-group">

				<div class="col-md-4">
					<button id="submit" type="submit" name="submit"
						class="btn btn-success">Update</button>
				</div>
			</div>

		</fieldset>
	</form:form>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>