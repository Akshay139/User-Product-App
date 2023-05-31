<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products Details</title>
<style type="text/css">

table {
  border-collapse: collapse;
  width: 100%;
  max-width: 800px;
  margin: auto;
  font-family: Arial, sans-serif;
}

th, td {
  text-align: left;
  padding: 8px;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #f2f2f2;
  font-weight: bold;
}

tr:hover {
  background-color: #f5f5f5;
}

td a {
  color: #0000ff;
  text-decoration: none;
}

td a:hover {
  text-decoration: underline;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.navbar a:hover {
  background-color: #ddd;
  color: black;
}

.active {
  background-color: #4CAF50;
}



</style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
		List<Product> products = (List<Product>) request.getAttribute("products");
	%>
	
	
	<div class="navbar">
	  <a href="home.jsp">Home</a>
	</div>
	
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Desription</th>
			<th>Brand</th>
			<th>Category</th>
			<th>Image</th>
			<th>Price</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
		for (Product p : products) {
		%>
		<tr>
			<td><%=p.getId()%></td>
			<td><%=p.getName()%></td>
			<td><%=p.getDescription()%></td>
			<td><%=p.getBrand()%></td>
			<td><%=p.getCategory()%></td>
			<td><%=p.getImage()%></td>
			<td><%=p.getPrice()%></td>
			<td><a href="find?pid=<%=p.getId()%>">Edit</a></td>
			<td><a href="deleteproduct?pid=<%=p.getId()%>">Delete</a></td>
			<td><a href="buy.html">Buy</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>