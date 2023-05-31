<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form {
  width: 80%;
  max-width: 600px;
  margin: auto;
  font-family: Arial, sans-serif;
}

input[type="text"], input[type="submit"] {
  display: block;
  width: 100%;
  margin-bottom: 10px;
  padding: 8px;
  font-size: 16px;
  border-radius: 4px;
  border: 1px solid #ccc;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}





</style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
		Product p = (Product) request.getAttribute("product");
	%>
	<form action="editproduct" method="post">
		<input type="hidden" value="<%=p.getId()%>" name="id"> Name<input
			type="text" name="nm" value="<%=p.getName()%>"><br>

		Description<input type="text" name="desc"
			value="<%=p.getDescription()%>"><br> Brand<input
			type="text" name="br" value="<%=p.getBrand()%>"><br>

		category<input type="text" name="cat" value="<%=p.getCategory()%>"><br>

		Image<input type="text" name='im' value="<%=p.getImage()%>"><br>

		Price<input type="text" name="price" value="<%=p.getPrice()%>"><br>

		<input type="submit" value="Update">
	</form>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>