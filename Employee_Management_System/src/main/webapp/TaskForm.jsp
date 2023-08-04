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
		<h2 class="fw-bold mb-4">Assign Tasks to Employees</h2>
	<form method="post" action="AssignTask.jsp">
		Task ID : <input type="text" name="TaskInput1" placeholder="Enter Task ID" class="form-control mb-2">
		Task Title : <input type="text" name="TaskInput2" placeholder="Task Title Here" class="form-control mb-3">
		Task Subtitle : <input type="text" name="TaskInput3" placeholder="Task Sub-Title Here" class="form-control mb-3">
		Task Description : <input type="text" name="TaskInput4" placeholder="Task Description Here" class="form-control mb-3">
		Assigned Date : <input type="date" name="TaskInput5" class="form-control mb-3">
		Deadline : <input type="date" name="TaskInput6" class="form-control mb-3">
		Employee ID : <input type="text" name="TaskInput7" placeholder="Enter Employee ID" class="form-control mb-3">
		HOD ID : <input type="text" name="TaskInput8" placeholder="Enter HOD ID" class="form-control mb-4">
		<button id="myButton" type="submit" class="btn btn-primary">Submit</button>
	</form>
	</div>
	
	<script>
	
		const button = document.getElementById("myButton");

		button.onclick = function() {
		  alert("Task Assigned Successfully!");
		};

	</script>
</body>
</html>