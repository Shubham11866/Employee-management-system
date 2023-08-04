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
	
	int id=Integer.parseInt(request.getParameter("CmpltdTaskInput1"));
	String status=request.getParameter("CmpltdTaskInput2");
	String date=request.getParameter("CmpltdTaskInput3");
	int eid=Integer.parseInt(request.getParameter("CmpltdTaskInput4"));
	int hid=Integer.parseInt(request.getParameter("CmpltdTaskInput5"));
	
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
		Statement stat=con.createStatement();
		stat.executeUpdate("insert into completed_tasks(task_id,task_status,cmpltd_date,emp_id,hod_id) values("+id+",'"+status+"','"+date+"','"+eid+"','"+hid+"')");
		response.sendRedirect("TaskCompletedForm.jsp");
	}
	catch(Exception e){
		out.println("Error "+e.getMessage());
	}
	%>
</body>
</html>