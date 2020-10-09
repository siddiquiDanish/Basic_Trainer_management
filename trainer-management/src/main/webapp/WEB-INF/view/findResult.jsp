<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
</head>
<body>
	<h2>Search Result</h2>
	<table border="1">
		<caption style="color: black; text-align: center">
			<b>Trainer LIST</b>
		</caption>
		<thead>
			<tr style="background-color: black; color: white">
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Technology</th>
				
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td>${trainerList.id}</td>
						<td>${trainerList.name}</td>
						<td>${trainerList.email}</td>
						<td>${trainerList.technology}</td>
				<td><a
					href="
						<c:url value="${pageContext.request.contextPath}/editPage/${trainerList.id}" />"><button
							type="button" style="background-color: green; color: white">Edit</button></a></td>
				<td><a
					href="${pageContext.request.contextPath}/delete/${trainerList.id}"><button
							type="button"
							onclick="alert('Are you sure to cancel this flight?')"
							style="background-color: green; color: white">Delete</button></a></td>
			</tr>
		</tbody>
	</table>

	<br>
	<div>
		<c:if test="${notFound != null}">
						${notFound}
				</c:if>

	</div>
	<br>
	<a href="${pageContext.request.contextPath}/"><button
			style="background-color: green; color: white">Back To Home</button></a>
</body>
</body>
</html>