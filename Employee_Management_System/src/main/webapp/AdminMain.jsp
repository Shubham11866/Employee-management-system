<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<style>
	 body {
      background-image: url(./Images/Background.jpg);
      background-size: cover;
      background-position: center;
      height:100vh;
    }
    
    /* Add styles for the content */
    .content {
      text-align: center;
      padding: 200px 0;
    }
    
    .content h1 {
      color: #fff;
      font-size: 36px;
    }
    
    /* Add styles for the buttons */
    .buttons {
      margin-top: 20px;
    }
    
    .button {
      display: inline-block;
      padding: 12px 24px;
      background-color: #333;
      color: #fff;
      font-size: 18px;
      text-decoration: none;
      transition: background-color 0.3s ease;
    }
    
    .button:hover {
      background-color: #555;
    }
    
    /* Add styles for the navbar */
    .navbar {
      position: fixed;
      bottom: 0;
      left: 0;
      width: 100%;
      background-color: #333;
      overflow: hidden;
      display: flex;
      justify-content: center;
    }
    
    .navbar a {
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }
    
    .navbar a:hover {
      background-color: #ddd;
      color: black;
    }
</style>
</head>
<body>
	<div class="content">
    <h1>Welcome to the Admin Page</h1>
    
    <!-- Buttons -->
    <div class="buttons">
      <a href="AddEmployee.html" class="button">Add Employee</a>
      <a href="ViewEmployee.jsp" class="button">View Employees</a>
    </div>
  </div>
  
  <!-- Navbar -->
  <div class="navbar">
    <a href="index.html">Home</a>
    <a href="LoginPage.html">Logout</a>
    <a href="#contact">Contact Us</a>
  </div>
</body>
</html>