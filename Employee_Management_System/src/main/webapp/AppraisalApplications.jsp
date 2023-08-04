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

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
	Statement stat=con.createStatement();
	ResultSet rs=stat.executeQuery("select * from appraisal");

	while(rs.next()){
		int e_id=rs.getInt(1);
		int t_id=rs.getInt(2);
		String t_status=rs.getString(3);
		String e_status=rs.getString(4);
		String h_id=rs.getString(5);
		
		 String Cmplt="Completed";
		 String eligible="Yes";
		  
		 if(Cmplt.equals(t_status) &&  eligible.equals(e_status)){
		  out.println("<table class='container table table-light w-50 table-striped-columns table-hover mt-5 table-bordered'><tr class='text-center fw-bold table-dark'><td colspan='2'>Applications for Appraisal!</td></tr><tr><td>Employee ID:</td><td>"+e_id+"</td></tr><tr><td>Task ID:</td><td>"+t_id+"</td></tr><tr><td>Task Status :</td><td>"+t_status+"</td></tr><tr><td>Employee Status :</td><td>"+e_status+"</td></tr><tr><td>HOD ID:</td><td>"+h_id+"</td></tr><tr class='text-center fw-bold table-primary's><td colspan='2'><a href='MakeAppraisalForm.jsp'><button type='button' class='btn btn-primary'>Make Appraisal</button></a></td></tr></table>");
	 }
	}
	out.println("</table>");
	
	 %>
</body>
</html>