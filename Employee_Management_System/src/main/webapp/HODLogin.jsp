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
	String username=request.getParameter("hoduser");
	String password=request.getParameter("hodpass");
	String deptid=request.getParameter("hodid");
	
	try {
		
		String user1 = null;
		String pass1 = null;
		String id=null;
		
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		 String url="jdbc:mysql://localhost:3306/employee_management";
 		  String user="root";
 		  String pass="root";
 		 Connection conn=DriverManager.getConnection(url,user,pass);
 		Statement stat=conn.createStatement();
 		
 		ResultSet rs=stat.executeQuery("Select * from hod where d_id='"+deptid+"'");
 		 
 		 while(rs.next()) {

 			  user1=rs.getString(1);
 			  pass1=rs.getString(2);
 			  id=rs.getString(3);
 			 
 		 }
 		HttpSession s=request.getSession();
 		s.setAttribute("id",id);
 		 if(username.equals(user1) && password.equals(pass1) && deptid.equals(id)) {
 			 response.sendRedirect("HODMain.html");
 		 }
 		 else {
 			 %>
             <h1>Login Failed</h1>
             <p>Invalid username or password. Please try again.</p>
             <a href="LoginPage.html">Go back to Login Page</a>
     <%
 		 }
 		 
 		
 	
	}
	catch(Exception e) {
		e.getMessage();
	}
	%>
</body>
</html>