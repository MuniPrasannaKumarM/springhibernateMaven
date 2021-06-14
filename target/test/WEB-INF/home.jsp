<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
        <%@ page isELIgnored="false" %>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>${page }</title>
</head>
<body>
	<div class="container mt-3">
		<h1 class="text-center">Welcome to TODO Manager</h1>
		<div class="row mt-4">
			<div class="col-md-2">
				
				<div class="list-group">
					<a href='<c:url value="/home"></c:url>' class="list-group-item list-group-item-action active" aria-current="true"> Menu </a> 
					<a href='<c:url value="/add"></c:url>' class="list-group-item list-group-item-action">Add TODO</a> 
					<a href="#" class="list-group-item list-group-item-action">View TODO</a> 
						
				</div>
			</div>
			<div class="col-md-10 ">
				
				<c:if test="${page=='home' }">
					<h1 class="text-center">All TODOs</h1>
				</c:if>
				<c:if test="${page=='add' }">
					<h1 class="text-center">Add TODOs</h1>
					<br>
					<form:form action="/test/saveToDo" method="post" modelAttribute="todo">
						<div class="form-group">
							<form:input path="toDoTitle" cssClass="form-control" placeholder="Enter the title"/>
							
						</div>
						<br>
						<div class="form-group">
							<form:textarea path="toDoContent" cssClass="form-control" placeholder="Enter the content" cssStyle="height:300px;"/>
						</div>
						<br>
						<div class="form-group text-center">
							<button class="btn btn-outline-success">Add TODO</button>
						</div>
					</form:form>
				</c:if>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
</body>
</html>