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
	int emp_id=Integer.parseInt(request.getParameter("input1"));
	String appraisal=request.getParameter("input2");
	int hod_id=Integer.parseInt(request.getParameter("input3"));
	String remark=request.getParameter("input4");
	
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
		Statement stat=con.createStatement();
		stat.executeUpdate("insert into appraisal_done(emp_id,amount,hod_id,remark) values("+emp_id+",'"+appraisal+"',"+hod_id+",'"+remark+"')");
		response.sendRedirect("MakeAppraisalForm.jsp");
	}
	catch(Exception e){
		out.println("Error "+e.getMessage());
	}
	%>
</body>
</html>