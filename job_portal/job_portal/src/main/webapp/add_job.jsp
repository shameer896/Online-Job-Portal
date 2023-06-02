
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Hotel</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body>
<c:if test="${userobj.role ne 'admin'}">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

	<%@include file="all_components/navbar.jsp"%>
	<div class="container p-2">

		<div class="col-md-10 offset-md-1">
			<div class="card">

				<div class="card-body">

					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						<c:if test="${not empty succMsg }">

							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>
						<h5>Add Hotel</h5>

					</div>
					<form action="add_job" method="post">
						<div class="form-group">

							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">

							<div class="form-group col-md-4">
								<label>Location </label> <select REQUIRED name="Location"
									class="custom-select " id="inlineFormCustomSelect Pref">
									<option></option>
									<option value="Udupi">Udupi</option>
									<option value="Manipal">Manipal</option>
									<option value="Parkala">Parkla</option>
								
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select REQUIRED class="custom-select "
									id="intineFormCustomSelect Pref" name="category">

									<option></option>
									<option value="Veg">Veg</option>
									<option value="Non-Veg ">Non-Veg</option>
								
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select REQUIRED class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="inactive" value="Inactive">Inactive</option>
								</select>

							</div>
						</div>
						<div class="form-group">

							<label>Enter Menu</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<button class="btn btn-success">Publish Hotel</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>