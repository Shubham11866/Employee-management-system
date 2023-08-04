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
<h2 class="container text-center fw-bold mt-5">YOUR PROFILE</h2>
	<%
	try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management", "root", "root");
        Statement st = con.createStatement();
    	HttpSession Session=request.getSession();
       	Integer eid=(Integer)Session.getAttribute("emp_id");
        ResultSet rs = st.executeQuery("SELECT * FROM employee_details where employee_details.emp_id='"+eid+"' ");


        while (rs.next()) {
        	int id=rs.getInt(1);
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
			
			 out.println("<table class='container text-center table table-light w-50 table-striped-columns table-hover mt-5 table-bordered'><tr class='text-center fw-bold table-primary'><td colspan='2'>Your Info</td></tr><tr><td>ID</td><td>"+id+"</td></tr><tr><td>Name</td><td>"+name+"</td></tr><tr><td>Email</td><td>"+email+"</td></tr><tr><td>Phone.nos</td><td>"+phno+"</td></tr><tr><td>BirthDate</td><td>"+dob+"</td></tr><tr><td>Address</td><td>"+address+"</td></tr><tr><td>Gender</td><td>"+gender+"</td></tr><tr><td>Adhaar No</td><td>"+adhaar+"</td></tr><tr><td>Pan No</td><td>"+pan+"</td></tr><tr><td>Department Id</td><td>"+did+"</td></tr><tr><td>Username</td><td>"+username+"</td></tr><tr><td>Password</td><td>"+pass+"</td></tr></table>");
		 }
		
		out.println("</table>");

            
        
        
        rs.close();
        st.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
        // Handle any exceptions
    }
	%>
	
	
</body>
</html>