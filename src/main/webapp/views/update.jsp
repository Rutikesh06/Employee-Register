<%@page import="com.cjc.Model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Employee emp =(Employee)request.getAttribute("data");%>
<div align="center">
<form action="up" method="post">

<label>Employee ID :<%=emp.getEid()%></label>
<input type="hidden" name="eid" value="<%=emp.getEid()%>"><br><br>

<label>Employee Name </label>
<input type="text" name="name" value="<%=emp.getName()%>"><br><br>

<label>Employee Mobile </label>
<input type="text" name="mobileno" value="<%=emp.getMobileno()%>"><br><br>

<label>Employee Address </label>
<input type="text" name="address" value="<%=emp.getAddress()%>"><br><br>
<input type="submit" value="UPDATE">
</form>
</div>
</body>
</html>