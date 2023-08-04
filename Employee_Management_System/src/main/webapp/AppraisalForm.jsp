<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container p-5">
		<h2 class="fw-bold mb-4">Employee Appraisal Form</h2>
	<form method="post" action="HODAppraisal.jsp">
		Employee ID : <input type="text" name="AppraisalInput1" placeholder="Enter Employee ID" class="form-control mb-2">
		Task id : <input type="text" name="AppraisalInput2" placeholder="Enter task id" class="form-control mb-3">
		Task Status : <input type="text" name="AppraisalInput3" placeholder="Task Status" class="form-control mb-3">
		Eligibility Status : <input type="text" name="AppraisalInput4" placeholder="Eligibility Status" class="form-control mb-3">
		HOD ID : <input type="text" name="AppraisalInput5" placeholder="Enter HOD ID" class="form-control mb-3">
		<button id="myButton" type="submit" class="btn btn-primary">Submit</button>
	</form> 
	</div>
	
	<script>
	
		const button = document.getElementById("myButton");

		button.onclick = function() {
		  alert("Employee Appraisal Successful!");
		};

	</script>
</body>
</html>