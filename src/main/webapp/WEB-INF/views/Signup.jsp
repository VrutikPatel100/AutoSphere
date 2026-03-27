<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Signup</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>

/* Background */
body {
	background: #f4f6fb;
}

/* Center form */
.signup-container {
	max-width: 650px;
	margin: 40px auto;
}

/* Card */
.signup-card {
	background: #fff;
	padding: 25px;
	border-radius: 12px;
	box-shadow: 0 4px 20px rgba(0,0,0,0.1);
}

/* Title box (Add Brand jevu) */
.signup-title-box {
	background: #f1f1f1;
	border-radius: 12px;
	padding: 15px;
	text-align: center;
	margin-bottom: 20px;
}

.signup-title-box h3 {
	margin: 0;
	color: #4e4bb5;
	font-weight: 600;
}

/* Inputs */
.form-control {
	height: 38px;
	font-size: 14px;
}

/* Purple Button */
.btn-purple {
	background-color: #4e4bb5;
	color: white;
	border: none;
	height: 45px;
	border-radius: 12px;
	width: 100%;
	font-size: 15px;
}

.btn-purple:hover {
	background-color: #3f3ca0;
}

</style>

</head>

<body>

<div class="container-scroller">

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<div class="container-fluid page-body-wrapper">

		<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

		<div class="main-panel">
			<div class="content-wrapper">

				<h3 class="mb-3">Welcome ${sessionScope.user.firstName}</h3>

				<div class="signup-container">
					<div class="signup-card">

						<!-- Title -->
						<div class="signup-title-box">
							<h3>Signup</h3>
						</div>

						<form action="register" method="post" enctype="multipart/form-data">

							<!-- Name -->
							<div class="row">
								<div class="col-md-6 mb-2">
									<label>First Name</label>
									<input type="text" name="firstName" class="form-control" required>
								</div>

								<div class="col-md-6 mb-2">
									<label>Last Name</label>
									<input type="text" name="lastName" class="form-control" required>
								</div>
							</div>

							<!-- Email -->
							<div class="mb-2">
								<label>Email</label>
								<input type="email" name="email" class="form-control" required>
							</div>

							<!-- Password -->
							<div class="mb-2">
								<label>Password</label>
								<input type="password" name="password" class="form-control" required>
							</div>

							<!-- Gender -->
							<div class="mb-2">
								<label>Gender</label><br>
								<input type="radio" name="gender" value="MALE" required> Male
								<input type="radio" name="gender" value="FEMALE" class="ms-2"> Female
								<input type="radio" name="gender" value="OTHER" class="ms-2"> Other
							</div>

							<!-- Birth + Contact -->
							<div class="row">
								<div class="col-md-6 mb-2">
									<label>Birth Year</label>
									<input type="number" name="birthYear" class="form-control" required>
								</div>

								<div class="col-md-6 mb-2">
									<label>Contact</label>
									<input type="text" name="contactNum" class="form-control" required>
								</div>
							</div>

							<!-- Qualification -->
							<div class="mb-2">
								<label>Qualification</label>
								<input type="text" name="qualification" class="form-control" required>
							</div>

							<!-- User Type -->
							<div class="mb-2">
								<label>User Type</label>
								<select name="modelId" class="form-control">
									<option value="-1">Select User Type</option>
									<c:forEach items="${allCarModelType}" var="ut">
										<option value="${ut.modelId}">${ut.bodyType}</option>
									</c:forEach>
								</select>
							</div>

							<!-- Address -->
							<div class="row">
								<div class="col-md-4 mb-2">
									<input type="text" name="city" class="form-control" placeholder="City" required>
								</div>
								<div class="col-md-4 mb-2">
									<input type="text" name="state" class="form-control" placeholder="State" required>
								</div>
								<div class="col-md-4 mb-2">
									<input type="text" name="country" class="form-control" value="India" required>
								</div>
							</div>

							<!-- Profile Pic -->
							<div class="mb-3">
								<label>Profile Picture</label>
								<input type="file" name="profilePic" class="form-control">
							</div>

							<!-- Submit -->
							<button type="submit" class="btn-purple">
								Register
							</button>

						</form>

					</div>
				</div>

			</div>

			<jsp:include page="AdminFooter.jsp"></jsp:include>

		</div>
	</div>
</div>

</body>
</html>