<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to bottom, #000000, #222222);
            color: #ffffff;
        }
        
        h1 {
            margin-bottom: 20px;
        }
        
        .button-container {
            display: flex;
            justify-content: space-between;
            width: 300px;
            max-width: 80%;
        }
        
        .button {
            padding: 10px 20px;
            background-color: #ffffff;
            color: #000000;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            margin:0px 10px;
        }
        
        .button:hover {
            background-color: #cccccc;
        }
        
        @media only screen and (max-width: 600px) {
            .button-container {
                flex-direction: column;
                align-items: center;
                width: 80%;
            }
            
            .button {
                margin-bottom: 10px;
                width: 100%;
            }
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
	<div class="container">
        <h1>Welcome to the Employee Management System</h1>
        <div class="button-container">
            <a href="ViewEmployee.jsp"><button class="button">Display Employees</button></a>
            <a href="AppraisalApplications.jsp"><button class="button">Application for Appraisal</button></a>
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