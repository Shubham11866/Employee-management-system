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
	<%
	try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management", "root", "root");
        Statement st = con.createStatement();
    	HttpSession Session=request.getSession();
       	Integer eid=(Integer)Session.getAttribute("emp_id");
        ResultSet rs = st.executeQuery("SELECT * FROM task where task.emp_id='"+eid+"' ");

        out.println("<h2 class='head fw-bold text-center mt-5'> Task Assigned</h2>");
		while(rs.next()) {
 			  int t_id=rs.getInt(1);
 			  String t_title=rs.getString(2);
 			  String t_stitle=rs.getString(3);
 			  String t_des=rs.getString(4);
 			  String t_adate=rs.getString(5);
 			  String t_edate=rs.getString(6);
 			  int e_id=rs.getInt(7);
 			  int hod_id=rs.getInt(8);  
 			  
 			  
 			 out.println("<table class='container table table-light w-50 table-striped-columns table-hover mt-5 table-bordered'><tr class='text-center fw-bold table-dark'><td colspan='2'>Task Info</td></tr><tr><td>Task ID:</td><td>"+t_id+"</td></tr><tr><td>Task Title:</td><td>"+t_title+"</td></tr><tr><td>Task Subtitle:</td><td>"+t_stitle+"</td></tr><tr><td>Task Description:</td><td>"+t_des+"</td></tr><tr><td>Task Assigned Date:</td><td>"+t_adate+"</td></tr><tr><td>Task Deadline:</td><td>"+t_edate+"</td></tr><tr><td>Employee ID:</td><td>"+e_id+"</td></tr><tr><td>HOD ID:</td><td>"+hod_id+"</td></tr><tr class='text-center fw-bold table-primary's><td colspan='2'><a href='TaskCompletedForm.jsp'><button type='button' class='btn btn-primary'>Complete the Task</button></a></td></tr></table>");
 		 }
		out.println("</table>");

            
        
        
        rs.close();
        st.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
       
    }
	%>
	
	
</body>
</html>