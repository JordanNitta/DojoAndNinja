<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 class="text-center">${dojo.dojo} Locations Ninjas</h1>
<table class="table table-striped">
    <thead class="thead-dark">
    	
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="ninja" items="${dojo.ninjas}">
            <tr>
                <td><c:out value="${ninja.firstName}" /></td>
                <td><c:out value="${ninja.lastName}" /></td>
                <td><c:out value="${ninja.age}" /></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>