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
		<h2 class="fw-bold mb-4">Tasks Completion</h2>
	<form method="post" action="CompletedTask.jsp">
		Task ID : <input type="text" name="CmpltdTaskInput1" placeholder="Enter Task ID" class="form-control mb-2">
		Task Status : <input type="text" name="CmpltdTaskInput2" placeholder="Task Status" class="form-control mb-3">
		Completion Date : <input type="text" name="CmpltdTaskInput3" placeholder="Completion Date" class="form-control mb-3">
		Employee ID : <input type="text" name="CmpltdTaskInput4" placeholder="Enter Employee ID" class="form-control mb-3">
		HOD ID : <input type="text" name="CmpltdTaskInput5" placeholder="Enter HOD ID" class="form-control mb-4">
		<button id="myButton" type="submit" class="btn btn-primary">Submit</button>
	</form>
	</div>
	<script>
	
		const button = document.getElementById("myButton");

		button.onclick = function() {
		  alert("Task Completed Successfully!");
		};

	</script>
</body>
</html>