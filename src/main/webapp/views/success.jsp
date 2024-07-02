<%@page import="com.cjc.Model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<style type="text/css">
html, body {
	height: 100%;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 800px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 15px;
	background-color: rgba(255, 255, 255, 0.2);
	color: #fff;
}

th {
	text-align: left;
}

thead {th { background-color:#55608f;
	
}

}
tbody {tr { &:hover {
			background-color : rgba(255, 255, 255, 0.3);
	
}

}
td {
	position: relative; &: hover { & : before { 
				 content : "";
	position: absolute;
	left: 0;
	right: 0;
	top: -9999px;
	bottom: -9999px;
	background-color: rgba(255, 255, 255, 0.2);
	z-index: -1;
}
}
}
}

</style>



<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600;700;800;900&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

.container {
  width: 100%;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  gap: 120px;
  background: #27282c;
}

.button {
  position: relative;
  padding: 8px 50px;
  font-size: 1.5rem;
  color: var(--color);
  border: 2px solid rgba(0, 0, 0, 0.5);
  border-radius: 4px;
  text-shadow: 0 0 15px var(--color);
  text-decoration: none;
  text-transform: uppercase;
  letter-spacing: 0.1rem;
  transition: 0.5s;
  z-index: 1;
}

.button:hover {
  color: #fff;
  border: 2px solid rgba(0, 0, 0, 0);
  box-shadow: 0 0 0px var(--color);
}

.button::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: var(--color);
  z-index: -1;
  transform: scale(0);
  transition: 0.5s;
}

.button:hover::before {
  transform: scale(1);
  transition-delay: 0.5s;
  box-shadow: 0 0 10px var(--color),
    0 0 30px var(--color),
    0 0 60px var(--color);
}

.button span {
  position: absolute;
  background: var(--color);
  pointer-events: none;
  border-radius: 2px;
  box-shadow: 0 0 10px var(--color),
    0 0 20px var(--color),
    0 0 30px var(--color),
    0 0 50px var(--color),
    0 0 100px var(--color);
  transition: 0.5s ease-in-out;
  transition-delay: 0.25s;
}

.button:hover span {
  opacity: 0;
  transition-delay: 0s;
}

.button span:nth-child(1),
.button span:nth-child(3) {
  width: 40px;
  height: 4px;
}

.button:hover span:nth-child(1),
.button:hover span:nth-child(3) {
  transform: translateX(0);
}

.button span:nth-child(2),
.button span:nth-child(4) {
  width: 4px;
  height: 40px;
}

.button:hover span:nth-child(1),
.button:hover span:nth-child(3) {
  transform: translateY(0);
}

.button span:nth-child(1) {
  top: calc(50% - 2px);
  left: -50px;
  transform-origin: left;
}

.button:hover span:nth-child(1) {
  left: 50%;
}

.button span:nth-child(3) {
  top: calc(50% - 2px);
  right: -50px;
  transform-origin: right;
}

.button:hover span:nth-child(3) {
  right: 50%;
}

.button span:nth-child(2) {
  left: calc(50% - 2px);
  top: -50px;
  transform-origin: top;
}

.button:hover span:nth-child(2) {
  top: 50%;
}

.button span:nth-child(4) {
  left: calc(50% - 2px);
  bottom: -50px;
  transform-origin: bottom;
}

.button:hover span:nth-child(4 ) {
  bottom: 50%;
}

</style>

<title>Insert title here</title>

<script type="text/javascript">
	function addEmployee() {
		alert("Add New Employee");
		document.myForm.action = "regpage";
		document.myForm.submit();
	}
	function deleteEmployee() {
		alert("Delete Employee");
		document.myForm.action = "delete";
		document.myForm.submit();
	}
	function editEmployee() {
		alert("Edit Employee");
		document.myForm.action = "edit";
		document.myForm.submit();
	}
</script>
</head>
<body>
	<h1 align="center">Welcome To Employee Details...</h1>

	<div class="container">
	<form name="myForm">
		<table>
			<thead>
				<tr>
					<%
						List<Employee> empList = (List<Employee>) request.getAttribute("data");
					%>
					<th>Select</th>
					<th>ID</th>
					<th>Name</th>
					<th>Mobile</th>
					<th>Address</th>
				</tr>
			</thead>
			<%
				for (Employee emp : empList) {
			%>
			<tbody>
				<tr>
					<td><input type="radio" name="eid" value="<%=emp.getEid()%>"></td>
					<td><%=emp.getEid()%></td>
					<td><%=emp.getName()%></td>
					<td><%=emp.getMobileno()%></td>
					<td><%=emp.getAddress()%></td>

				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		
		<div class="button">
  <a class="button" onclick="addEmployee()"  href="#" style="--color:#1e9bff;">
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    ADD
  </a>
  <a class="button" onclick="editEmployee()" href="#" style="--color: #ff1867;">
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    EDIT
  </a>
  <a class="button" onclick="deleteEmployee()" href="#" style="--color: #6eff3e;">
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    DELETE
  </a>
</div>
		<!-- <input type="button" onclick="addEmployee()" value="ADD"> <input
			type="button" onclick="editEmployee()" value="EDIT"> <input
			type="button" onclick="deleteEmployee()" value="DELETE"> -->
		</form>
	</div>

</body>
<%-- <div align="center">
		<form name="myForm">
			<table border="5px">
				<thead>
					<tr>
						<% List<Employee>empList=(List<Employee>)request.getAttribute("data"); %>
						<th>Select</th>
						<th>ID</th>
						<th>Name</th>						
						<th>Mobile</th>
						<th>Address</th>
					</tr>
				</thead>
				<%for(Employee emp : empList) {%>
				<tbody>
					<tr>
						<td><input type="radio" name="eid"
							value="<%=emp.getEid()%>"></td>
						<td><%=emp.getEid()%></td>
						<td><%=emp.getName()%></td>
						<td><%=emp.getMobileno()%></td>
						<td><%=emp.getAddress()%></td>
						
					</tr>
					<%}%>
				</tbody>
			</table>
			<input type="button" onclick="addEmployee()"value="ADD">
			<input type="button" onclick="editEmployee()"value="EDIT">
			<input type="button" onclick="deleteEmployee()"value="DELETE">
		</form>


	</div>
 --%>
</html>