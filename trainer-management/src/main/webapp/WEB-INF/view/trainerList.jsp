<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin_Home</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
	
</head>
			
<body align="center">
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			
			<ul class="nav navbar-nav">
				<li class="active"><a href="/">Home</a></li>
			</ul>
			
		</div>
	</nav>

	<h1 align="center" style="margin-bottom: 75px;margin-bottom: 40px">Trainer Management Portal</h1>


	


			<!-- Table -->
			<legend align="center" style="color: red"> Trainers List </legend>

			<table class="table">

				<thead class="thead-darksus">

					<tr>
						<th scope="col">Id</th>
						<th scope="col">Name</th>
						<th scope="col">Email Id</th>
						<th scope="col">Technology</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="trainer">
						<tr>
							<td>${trainer.id}</td>
							<td>${trainer.name}</td>
							<td>${trainer.email}</td>
							<td>${trainer.technology}</td>
							<td><a href="/editPage?id=${trainer.id}"><input
									type="button" width: 50px" value="Edit" id="edit"
									class="btn btn-info"></a> </td>
						</tr>
					</c:forEach>

				</tbody>

			</table>





			<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
			<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>