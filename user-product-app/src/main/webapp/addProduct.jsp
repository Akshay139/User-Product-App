<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form {
  width: 500px;
  margin: 0 auto;
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

input[type="text"] {
  display: block;
  margin-bottom: 10px;
  padding: 10px;
  width: 100%;
  border-radius: 5px;
  border: none;
  box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  padding: 10px 20px;
  cursor: pointer;
  font-size: 16px;
  margin-top: 10px;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

label {
  display: block;
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 5px;
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


	
	<div class="navbar">
	  <a href="home.jsp">Home</a>
	</div>
<form action="addProduct" method="post">
Name<input type="text" name="nm"><br>
Description<input type="text" name="desc"><br>
Brand<input type="text" name="br"><br>
category<input type="text" name="cat"><br>
Image<input type="text" name='im'><br>
Price<input type="text" name="price"><br>
<input type="submit" value="Add">

</form>


</body>
</html>

