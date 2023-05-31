<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Website</title>
    <style>
        /* Navbar styling */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        
        .navbar a {
            float: left;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }
        
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        
        .navbar a.active {
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>
    <% 
        User user = (User) session.getAttribute("user");
        if (user != null) {
    %>
    <div class="navbar">
        <a href="#" class="active">Welcome Mr. <%= user.getName() %></a>
        <a href="edituser.jsp">Edit Your Profile</a>
        <a href="viewuser.jsp">View Your Profile</a>
        <a href="delete">Delete Your Profile</a>
        <a href="logout" style="float: right;">Logout</a>
        
		<a href="addProduct.jsp">Add product</a>
	
		<a href="viewproducts"> View products </a>
	
    </div>
    
    
    
    
    
    
    <%
        } else {
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>
