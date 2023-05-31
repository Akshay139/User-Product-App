<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
<style>
	body {
		font-family: Arial, sans-serif;
	}
	h2 {
		font-size: 24px;
		margin-top: 20px;
		margin-bottom: 10px;
	}
	h3 {
		font-size: 18px;
		margin-top: 10px;
		margin-bottom: 5px;
	}
	table {
		border-collapse: collapse;
		margin-top: 30px;
	}
	table td {
		padding: 10px;
		border: 1px solid black;
	}
	table th {
		padding: 10px;
		border: 1px solid black;
		background-color: #f2f2f2;
	}
	.navbar {
		overflow: hidden;
		background-color: #333;
	}
	.navbar a {
		float: left;
		color: white;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none;
	}
	.navbar a:hover {
		background-color: #ddd;
		color: black;
	}
</style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
	%>
	<div class="navbar">
		<a href="home.jsp">Home</a>
		<a href="edituser.jsp">Edit Profile</a>
		<a href="delete">Delete Profile</a>
		<a href="logout" style="float:right;">Logout</a>
	</div>
	<h2>User Profile</h2>
	<table>
		<tr>
			<th>ID</th>
			<td><%=user.getId()%></td>
		</tr>
		<tr>
			<th>Name</th>
			<td><%=user.getName()%></td>
		</tr>
		<tr>
			<th>Age</th>
			<td><%=user.getAge()%></td>
		</tr>
		<tr>
			<th>Phone</th>
			<td><%=user.getPhone()%></td>
		</tr>
		<tr>
			<th>Email</th>
			<td><%=user.getEmail()%></td>
		</tr>
		<tr>
			<th>Gender</th>
			<td><%=user.getGender()%></td>
		</tr>
	</table>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>
