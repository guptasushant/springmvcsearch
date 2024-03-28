<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Information Form</title>
<!-- Add Bootstrap CSS link -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<h2 class="mt-5">Student Information Form</h2>
		<div class="alert alert-danger" role="alert">
		<form:errors path="student.*" />
		
		</div>
		<form action="handleform" method="post" class="mt-4">
			<div class="form-group">
				<label for="student_id">Student ID:</label> <input type="text"
					id="id" name="id" placeholder="Enter your student ID"
					class="form-control" required>
			</div>
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" placeholder="Enter your name" class="form-control"
					required>
			</div>
			<div class="form-group">
				<label for="dob">Date of Birth:</label> <input type="text" id="dob"
					name="dob" placeholder="dd/mm/yyyy" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="course">Select Course:</label> <select id="course"
					name="courses" class="form-control" required>
					<option value="">Select Course</option>
					<option value="java">java</option>
					<option value="c++">c++</option>
					<option value="python">python</option>
					<option value="javascript">javascript</option>
				</select>
			</div>
			<div class="form-group">
				<label for="gender">Select Gender:</label> <select id="gender"
					name="gender" class="form-control" required>
					<option value="">Select Gender</option>
					<option value="male">Male</option>
					<option value="female">Female</option>
					<option value="other">Other</option>
				</select>
			</div>
			<div class="form-group">
				<label for="student_type">Select Student Type:</label> <select
					id="student_type" name="student_type" class="form-control" required>
					<option value="">Select Student Type</option>
					<option value="full-time">Full-Time</option>
					<option value="part-time">Part-Time</option>
					<option value="online">Online</option>
					<option value="old student">old student</option>
					<option value="new student">new student</option>
				</select>
			</div>
			<div class="card">

				<div class="card-body">
					<p>your address</p>
					<div class="form-group">
						<input name="address.street" type="text" class="form-control"
							placeholder="enter street" />
					</div>
					<div class="form-group">
						<input name="address.city" type="text" class="form-control"
							placeholder="enter city" />
					</div>
				</div>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>

	<!-- Add Bootstrap JS link (if needed) -->
	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
</body>
</html>
