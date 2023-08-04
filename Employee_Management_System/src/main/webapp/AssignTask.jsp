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
	int id=Integer.parseInt(request.getParameter("TaskInput1"));
	String title=request.getParameter("TaskInput2");
	String stitle=request.getParameter("TaskInput3");
	String des=request.getParameter("TaskInput4");
	String adate=request.getParameter("TaskInput5");
	String edate=request.getParameter("TaskInput6");
	int eid=Integer.parseInt(request.getParameter("TaskInput7"));
	int hid=Integer.parseInt(request.getParameter("TaskInput8"));
	
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
		Statement stat=con.createStatement();
		stat.executeUpdate("insert into task(task_id,task_title,task_subtitle,task_description,task_date,task_deadline,emp_id,hod_id) values("+id+",'"+title+"','"+stitle+"','"+des+"','"+adate+"','"+edate+"',"+eid+","+hid+")");
		response.sendRedirect("TaskForm.jsp");
	}
	catch(Exception e){
		out.println("Error "+e.getMessage());
	}

	%>
</body>
</html>