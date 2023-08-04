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
        String username = request.getParameter("adminuser");
        String password = request.getParameter("adminpass");

        
        String url = "jdbc:mysql://localhost:3306/employee_management";
        String dbUsername = "root";
        String dbPassword = "root";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select admin.username ,admin.password from admin where username='"+username+"' and password='"+password+"'");
          
            
            if (rs.next()) {
                
                session.setAttribute("username", username);
                response.sendRedirect("AdminMain.jsp"); // Redirect to welcome page
            } else {
               
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
            
            out.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    %>

</body>
</html>