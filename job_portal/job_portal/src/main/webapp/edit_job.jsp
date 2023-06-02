
<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>edit Hotel</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body>

	<%@include file="all_components/navbar.jsp"%>
	<div class="container p-2">

		<div class="col-md-10 offset-md-1">
			<div class="card">

				<div class="card-body">

					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						JobDAO dao = new JobDAO(DBconnect.getConn());
						Jobs j = dao.getJobById(id);
						%>

						<h5>edit Hotel</h5>

					</div>
					<form action="update" method="post">

						<input type="hidden" value="<%=j.getId()%>" name="id">
						<div class="form-group">

							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control" value="<%=j.getTitle()%> ">
						</div>
						<div class="form-row">

							<div class="form-group col-md-4">
								<label>Location </label> <select name="Location"
									class="custom-select " id="inlineFormCustomSelect Pref">
									<option value="<%=j.getLocation()%>"><%=j.getLocation()%>
									</option>
								<option value="Udupi">Udupi</option>
									<option value="Manipal">Manipal</option>
									<option value="Parkala">Parkla</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select "
									id="intineFormCustomSelect Pref" value="<%=j.getCategory()%> "
									name="category">

									<option value="<%=j.getCategory()%>"><%=j.getCategory()%>
									</option>
									<option value="Veg">Veg</option>
									<option value="Non-Veg ">Non-Veg</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="<%=j.getStatus()%>"><%=j.getStatus()%></option>
									<option class="Active" value="Active">Active</option>
									<option class="inactive" value="Inactive">Inactive</option>
								</select>

							</div>
						</div>
						<div class="form-group">

							<label>Enter Menu</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"><%=j.getDescription()%></textarea>
						</div>
						<button class="btn btn-success">Update Hotel</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>