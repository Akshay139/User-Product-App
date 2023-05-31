<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
  /* add your CSS styles here */
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
  }
  form {
    margin: 50px auto;
    padding: 20px;
    max-width: 400px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0px 0px 10px #ccc;
    position: relative;
    perspective: 1000px;
  }
  form::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(to bottom right, #fff, #ddd);
    transform: rotateX(40deg) translateZ(-50px);
    z-index: -1;
    opacity: 0.5;
    filter: blur(2px);
  }
  label {
    display: block;
    font-size: 16px;
    font-weight: bold;
    margin-bottom: 10px;
  }
  input[type="tel"],
  input[type="password"] {
    display: block;
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-size: 16px;
    margin-bottom: 20px;
    box-sizing: border-box;
  }
  input[type="submit"] {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50;
    color: #fff;
    font-size: 16px;
    font-weight: bold;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  input[type="submit"]:hover {
    background-color: #3e8e41;
  }
  h2 {
    margin-top: 20px;
    text-align: center;
  }
  a {
    color: #4CAF50;
    text-decoration: none;
    font-weight: bold;
  }
  a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>
<%String message=(String)request.getAttribute("msg");
if(message!=null){%>
<h2>
<%=message%>
</h2>
<%} %>
<form action="login" method="post">
<label for="ph">Phone</label>
<input type="tel" name="ph"><br>
<label for="ps">Password</label>
<input type="password" name="ps"><br>
<input type="submit" value="LOGIN">
</form>
<h2><a href="register.jsp">Click here to register</a></h2>
</body>
</html>
