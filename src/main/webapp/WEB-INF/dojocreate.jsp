<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<h1 class="text-center">Create a New Dojo</h1>
	<form:form action="/process/dojo" method="POST"
		modelAttribute="newDojo">
		<div
			class="container vh-100 d-flex justify-content-center align-items-center">
			<div class="row">
				<div class="col-md-3">
					<form:label path="dojo">New:</form:label>
				</div>
				<div class="col-md-9">
					<div class="form-floating mb-3">
						<form:input type="text" class="form-control" path="dojo"
							placeholder="Enter a dojo" />
						<form:label path="dojo">Expense Name</form:label>
						<form:errors path="dojo" class="text-danger" />
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-dark btn-sm mx-auto">Submit</button>
		</div>
	</form:form>
</body>
</html>