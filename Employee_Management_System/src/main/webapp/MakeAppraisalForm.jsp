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
	<form method="post" action="InsertAppraisals.jsp">
		Employee ID : <input type="text" name="input1" placeholder="Enter Employee ID" class="form-control mb-2">
		Appraisal By : <input type="text" name="input2" placeholder="Appraisal By" class="form-control mb-3">
		HOD ID : <input type="text" name="input3" placeholder="HOD ID" class="form-control mb-3">
		Remark : <input type="text" name="input4" placeholder="Remark" class="form-control mb-3">
		<button id="myButton" type="submit" class="btn btn-primary">Submit</button>
	</form>
	</div>
	
	<script>
	
		const button = document.getElementById("myButton");

		button.onclick = function() {
		  alert("Appraisal Succesfully!");
		};

	</script>
</body>
</html>