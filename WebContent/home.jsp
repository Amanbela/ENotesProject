<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
	UserDetails user2 = (UserDetails) session.getAttribute("userD");

	if (user2 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error","Please login...");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid">

<div class="card mt-3">
<div class="card-body text-center">
<img alt="" src="img/paper1.jpg" class="img-fluid mx-auto" style="width: 350px">
<h1>START TAKING YOUR NOTES</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
</div>

</div>

</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>