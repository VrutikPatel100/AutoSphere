<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Add Car Image</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<!-- Font Awesome -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

/* Background */
body {
	background: #f4f6fb;
}

/* Center container */
.form-container {
	max-width: 650px;
	margin: 40px auto;
}

/* Card */
.form-card {
	background: #fff;
	padding: 25px;
	border-radius: 12px;
	box-shadow: 0 4px 20px rgba(0,0,0,0.1);
}

/* Title box */
.title-box {
	background: #f1f1f1;
	border-radius: 12px;
	padding: 15px;
	text-align: center;
	margin-bottom: 20px;
}

.title-box h3 {
	margin: 0;
	color: #4e4bb5;
	font-weight: 600;
}

/* Inputs */
.form-control {
	height: 40px;
	font-size: 14px;
}

/* Purple button */
.btn-purple {
	background-color: #4e4bb5;
	color: #fff;
	border: none;
	height: 45px;
	border-radius: 12px;
	width: 100%;
}

.btn-purple:hover {
	background-color: #3f3ca0;
}

/* Dropdown icon */
.custom-select-wrapper {
	position: relative;
}

.custom-select-wrapper select {
	appearance: none;
	padding-right: 35px;
}

.custom-select-wrapper::after {
	content: "\f107";
	font-family: "Font Awesome 6 Free";
	font-weight: 900;
	position: absolute;
	right: 12px;
	top: 50%;
	transform: translateY(-50%);
	pointer-events: none;
	color: #555;
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

				<!-- Compact Form -->
				<div class="form-container">
					<div class="form-card">

						<!-- Title -->
						<div class="title-box">
							<h3>Add Car Image</h3>
						</div>

						<form action="/uploadCarImage" method="post" enctype="multipart/form-data">

							<!-- Model Dropdown -->
							<div class="mb-3">
								<label>Select Model</label>
								<div class="custom-select-wrapper">
									<select class="form-control" name="modelName" required>
										<option value="">Select Model</option>
										<c:forEach var="m" items="${allCarModel}">
											<option value="${m.modelName}">
												${m.modelName}
											</option>
										</c:forEach>
									</select>
								</div>
							</div>

							<!-- File Upload -->
							<div class="mb-3">
								<label>Upload Image</label>
								<input type="file" name="imageFile" class="form-control" required>
							</div>

							<!-- Primary Dropdown -->
							<div class="mb-3">
								<label>Is Primary?</label>
								<div class="custom-select-wrapper">
									<select class="form-control" name="isPrimary" required>
										<option value="">Select Option</option>
										<option value="true">Yes</option>
										<option value="false">No</option>
									</select>
								</div>
							</div>

							<!-- Button -->
							<div class="mt-3">
								<button type="submit" class="btn-purple">
									Save Car Image
								</button>
							</div>

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