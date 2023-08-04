<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<%
	HttpSession s=request.getSession();
	String id=s.getAttribute("id").toString();

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
		Statement stat=con.createStatement();
		ResultSet rs=stat.executeQuery("select * from completed_tasks where hod_id like '"+id+"'");

		while(rs.next()){
			  int tid=rs.getInt(1);
			  String status=rs.getString(2);
			  String date=rs.getString(3);
			  int emp_id=rs.getInt(4);
			  String hod_id=rs.getString(5);
			
			 String Cmplt="Completed.";
			  
			 if(Cmplt.equals(status)){
			  out.println("<table class='container table table-light w-50 table-striped-columns table-hover mt-5 table-bordered'><tr class='text-center fw-bold table-dark'><td colspan='2'>Performance of Employees!</td></tr><tr><td>Task ID:</td><td>"+tid+"</td></tr><tr><td>Task Status:</td><td>"+status+"</td></tr><tr><td>Completion Date :</td><td>"+date+"</td></tr><tr><td>Employee ID:</td><td>"+emp_id+"</td></tr><tr><td>HOD ID:</td><td>"+hod_id+"</td></tr><tr class='text-center fw-bold table-primary's><td colspan='2'><a href='AppraisalForm.jsp'><button type='button' class='btn btn-primary'>Send Employee for Salary Appraisal</button></a></td></tr></table>");
		 }
		}
		out.println("</table>");
		
	%>
</body>
</html>