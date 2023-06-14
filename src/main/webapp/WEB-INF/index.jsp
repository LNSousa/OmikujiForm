<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class="container  mx-auto">
	<h1 class="my-3 text-center">Send an Omikuji!</h1>
	<form action="/submit" method="post" class="border border-black p-3 mx-auto" style="width:50%">
		<label for="number" class="form-label">Pick a number between 5 and 25:</label>
		<input type="number" min="5" max="25" class="form-control" name="number"/>
		<label for="city" class="form-label">Enter the name of any city:</label>
		<input type="text" class="form-control" name="city"/>
		<label for="person" class="form-label">Enter the name of any person:</label>
		<input type="text" class="form-control" name="person"/>
		<label for="hobby" class="form-label">Enter a professional endeavor or hobby:</label>
		<input type="text" class="form-control" name="hobby"/>
		<label for="animal" class="form-label">Enter an animal:</label>
		<input type="text" class="form-control" name="animal"/>
		<label for="comment" class="form-label">Say something nice to someone:</label>
		<textarea name="comment" cols="30" rows="10" class="form-control" ></textarea>
		<p>Send and show a friend!</p>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
</body>
</html>