<%@page import="com.User.Post"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	UserDetails user1 = (UserDetails) session.getAttribute("userD");

	if (user1 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error", "Please login...");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>


	<%
		Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	
		PostDAO post=new PostDAO(DBConnect.getConn());
		
		Post p=post.getDataById(noteid);
		
		
	%>
	<div class="contanier-fluid">
		<%@include file="all_component/navbar.jsp"%>

		<br>
		<h1 class="text-center">Edit Your Notes</h1>



		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="NotesEditServlet" method="post">
						<input type="hidden" value="<%=noteid%>" name="noteid">

						<div class="form-group">


							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required" value="<%= p.getTitle()%>"/>

						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Enter Content</label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"><%= p.getContent()%></textarea>

						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>

				</div>

			</div>


		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>