<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/enote2.jpg");
	width: 100%;
	height: 75vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<%
		Connection conn=DBConnect.getConn();	
	%>

	<div class="container-fluid back-img">
		<div class="text-center">
			<h1>
				<i class="fa fa-book" aria-hidden="true"></i> E Notes-Save Your
				Notes
			</h1>
			<a href="login.jsp" class="btn btn-light"><i
				class="fa fa-sign-out" aria-hidden="true"></i> Login</a> <a
				href="register.jsp" class="btn btn-light"><i
				class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>