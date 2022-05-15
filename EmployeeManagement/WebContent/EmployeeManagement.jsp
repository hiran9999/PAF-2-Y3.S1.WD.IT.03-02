<%@page import="com.EmployeeManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/EmployeeManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Employee Management</h1>

				<form id="formEmployeeManagement" name="formEmployeeManagement" method="post" action="EmployeeManagement.jsp">


					Acc No: <input id="eNo" name="eNo" type="text"
						class="form-control form-control-sm"> 
						
						<br>Name: <input id="eName" name="eName" type="text"
						class="form-control form-control-sm"> 
						
						<br> Email: <input id="eEmail" name="eEmail" type="date"
						class="form-control form-control-sm"> 
						
						<br> Phone: <input id="ePhone" name="ePhone" type="text"
						class="form-control form-control-sm"> 
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					EmployeeManagement projectObj = new EmployeeManagement();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
