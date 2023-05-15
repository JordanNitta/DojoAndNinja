<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 class="text-center">New Ninja</h2>
<form:form action="/process/ninja" method="post" modelAttribute="newNinja">
  <div class="container vh-100 d-flex justify-content-center align-items-center">
    <div class="row">
      <div class="col-md-3">
      <form:label path="dojo">Dojo:</form:label>
      </div>
      <div class="col-md-9">
        <div class="form-floating mb-3">
      		<form:select path="dojo">
	            <c:forEach var="dojo" items="${allDojos}">
	              <form:option value="${dojo.id}"><c:out value="${dojo.dojo}"/></form:option>
	            </c:forEach>
          	</form:select> 
        </div>
      </div>
      <div class="col-md-3">
        <form:label path="firstName">First Name:</form:label>
      </div>
      <div class="col-md-9">
        <div class="form-floating mb-3">
          <form:input type="text" class="form-control" path="firstName" placeholder="First Name" />
          <form:label path="firstName" class="form-label">First Name</form:label>
          <form:errors path="firstName" class="text-danger" />
        </div>
      </div>
      <div class="col-md-3">
        <form:label path="lastName">Last Name:</form:label>
      </div>
      <div class="col-md-9">
        <div class="form-floating mb-3">
          <form:input type="text" path="lastName" class="form-control" placeholder="Last Name" />
          <form:label path="lastName" class="form-label">Last Name</form:label>
          <form:errors path="lastName" class="text-danger" />
        </div>
      </div>
      <div class="col-md-3">
        <form:label path="age">Age:</form:label>
      </div>
      <div class="col-md-9">
        <div class="form-floating mb-3">
          <form:input type="text" class="form-control" path="age" placeholder="Age" />
          <form:label path="age" class="form-label">Age</form:label>
          <form:errors path="age" class="text-danger" />
        </div>
      </div>
      <div class="col-md-12 text-center">
        <button type="submit" class="btn btn-dark btn-sm">Submit</button>
      </div>
    </div>
  </div>
</form:form>

</body>
</html>