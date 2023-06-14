<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class="container mx-auto text-center">
	<h1 class="my-3 ">Here's your Omikuji!</h1>
	<div class="border border-3 bg-primary mx-auto my-3 p-3" style="width:20%">
		<p>In <c:out value="${ number }"></c:out> years, you will live in <c:out value="${ city }"></c:out> with <c:out value="${ person }"></c:out> as your roommate, <c:out value="${ hobby }"></c:out> for a living. The next time you see a <c:out value="${ animal }"></c:out>, you will
have good luck. Also, <c:out value="${ comment }"></c:out>.</p>
	</div>
	<a href="/">Go back</a>
</div>
</body>
</html>