<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
<h2 class="container mt-5 fw-bold text-success text-center">Employee Data</h2>
	<% 	
	
	HttpSession s=request.getSession();
	String id=s.getAttribute("id").toString();
	//System.out.println("hod is "+id);
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
		Statement stat=con.createStatement();
		ResultSet rs=stat.executeQuery("select * from employee_details where d_id like '"+id+"'");
out.println("<table class='container table table-dark table-striped-columns table-hover mt-5 table-bordered'><thead><th>ID</th><th>Name</th><th>Email</th><th>Phone.no</th><th>BirthDate</th><th>Address</th><th>Gender</th><th>Adhaar No</th><th>Pan No</th><th>Department Id</th><th>Username</th><th>Password</th></thead>");
		
		while(rs.next()){
			int eid=rs.getInt(1);
			String name=rs.getString(2);
			String email=rs.getString(3);
			String phno=rs.getString(4);
			String dob=rs.getString(5);
			String address=rs.getString(6);
			String gender=rs.getString(7);
			String adhaar=rs.getString(8);
			String pan=rs.getString(9);
			String did=rs.getString(10);
			String username=rs.getString(11);
			String pass=rs.getString(12);
			
			out.println("<tr class='table-light'><td>"+eid+"</td><td>"+name+"</td><td>"+email+"</td><td>"+phno+"</td><td>"+dob+"</td><td>"+address+"</td><td>"+gender+"</td><td>"+adhaar+"</td><td>"+pan+"</td><td>"+did+"</td><td>"+username+"</td><td>"+pass+"</td></tr>");
			
		}
		out.println("</table>");
		
	 %>
</body>
</html>