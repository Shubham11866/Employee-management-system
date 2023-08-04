<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
        String username = request.getParameter("hruser");
        String password = request.getParameter("hrpass");

        // Establish a connection to the MySQL database
        String url = "jdbc:mysql://localhost:3306/employee_management";
        String dbUsername = "root";
        String dbPassword = "root";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select hr.username ,hr.password from hr where username='"+username+"' and password='"+password+"'");
          
            
            if (rs.next()) {
                // Successful login
                session.setAttribute("username", username);
                response.sendRedirect("HRMain.jsp"); // Redirect to welcome page
            } else {
                // Failed login
    %>
            <h1>Login Failed</h1>
            <p>Invalid username or password. Please try again.</p>
            <a href="LoginPage.html">Go back to Login Page</a>
    <%
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            // Handle any errors that occurred during the database connection or query
            out.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    %>
</body>
</html>