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
	<br><br><br>
	
	<form method="post" action="add">
		Todo Title<input type="text" name="title">  <br> <br>
		Target Date<input type="date" name="date">  <br><br>
		<input type="submit" value="submit">
	</form>

	<%@ include file="common/footer.html"%>
</body>
</html>