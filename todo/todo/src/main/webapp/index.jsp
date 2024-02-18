<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<%@ include file="common/nav.html"%>
	<br>       <br>      <br>
	<form method="post" action="/login">
		Username<input type="text" name="uname">  <br> <br>
		Password<input type="password" name="pwd">  <br><br>
		<input type="submit" value="SUBMIT">
	</form>

	<%@ include file="common/footer.html"%>
</body>
</html>