<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>My Todo</title>
</head>
<body>
	<%@include file="common/nav.html"%>
<br>
   
   <br>
   <br>
   <br>
   <br>
   
   
   
   <br>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   <br>

<style>
  div {
    text-align: center; /* Align content in the center */
    margin-top: 20px; /* Add some top margin for spacing */
    width: 200px; /* Set width */
    margin: 0 auto; /* Center the div horizontally */
  }

  a {
    font-size: 24px; /* Increase the font size */
  }
</style>

<div>
  <a href="/add">Add Todo</a>
</div>
<br>
<br>
<br>
<br>

	

	<c:if test="${deleteTodoMessage }">
		<p>Successfully Deleted one todo</p>
	</c:if>

	<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Todo Application</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
  }

  table {
    margin: 0 auto; /* Center the table horizontally */
    font-size: 30px; /* Increase the font size */
  }

  th, td {
    padding: 20px; /* Add padding to cells for spacing */
  }
</style>
</head>
<body>

<table border="3">
    <tr>
        <th>Title</th>
        <th>Date</th>
        <th>Action</th>
    </tr>
    <c:forEach var="todo" items="${todos}">
        <tr>
            <td>${todo.title}</td>
            <td>${todo.date}</td>
            <td><a href='/edit?id=${todo.todoid}'>Edit</a> || <a href='/delete?id=${todo.todoid}'>Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>

	

	<%@include file="common/footer.html"%>
</body>
</html>