<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	int eid=Integer.parseInt(request.getParameter("AppraisalInput1"));
	int t_id=Integer.parseInt(request.getParameter("AppraisalInput2"));
	String status=request.getParameter("AppraisalInput3");
	String date=request.getParameter("AppraisalInput4");
	int hid=Integer.parseInt(request.getParameter("AppraisalInput5"));
	
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
		Statement stat=con.createStatement();
		stat.executeUpdate("insert into appraisal(emp_id,task_id,task_status,eligibility,hod_id) values("+eid+","+t_id+",'"+status+"','"+date+"','"+hid+"')");
		response.sendRedirect("AppraisalForm.jsp");
	}
	catch(Exception e){
		out.println("Error "+e.getMessage());
	}
	%>
</body>
</html>