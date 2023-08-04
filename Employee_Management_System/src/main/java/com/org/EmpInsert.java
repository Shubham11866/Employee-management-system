package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmpInsert")
public class EmpInsert extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("emp1");
		String email=request.getParameter("emp2");
		String number=request.getParameter("emp3");
		String dob=request.getParameter("emp4");
		String address=request.getParameter("emp5");
		String gender=request.getParameter("emp6");
		String adhaar=request.getParameter("emp7");
		String pan=request.getParameter("emp8");
		String did=request.getParameter("emp9");
		String username=request.getParameter("emp10");
		String pass=request.getParameter("emp11");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
			Statement stat=conn.createStatement();
			stat.executeUpdate("insert into employee_details(emp_name,emp_email,emp_phno,emp_birth,emp_address,emp_gender,emp_adhaar,emp_pan,d_id,username,password) values('"+name+"','"+email+"','"+number+"','"+dob+"','"+address+"','"+gender+"','"+adhaar+"','"+pan+"','"+did+"','"+username+"','"+pass+"')");
			response.sendRedirect("AddEmployee.html");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
