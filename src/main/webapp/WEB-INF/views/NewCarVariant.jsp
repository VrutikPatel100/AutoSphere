<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Add Car Variant</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<!-- Font Awesome (icon mate) -->
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
	-webkit-appearance: none;
	-moz-appearance: none;
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
	font-size: 14px;
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

				<div class="form-container">
					<div class="form-card">

						<!-- Title -->
						<div class="title-box">
							<h3>Add Car Variant</h3>
						</div>

						<form action="saveCarVariant" method="post">

							<div class="row">

								<div class="col-md-6 mb-3">
									<label>Variant Name</label>
									<input type="text" class="form-control" name="variantName" required>
								</div>

								<div class="col-md-6 mb-3">
									<label>Ex-Showroom Price</label>
									<input type="number" class="form-control" name="exShowroomPrice" required>
								</div>

								<div class="col-md-6 mb-3">
									<label>Mileage</label>
									<input type="text" class="form-control" name="mileage">
								</div>

								<div class="col-md-6 mb-3">
									<label>Engine</label>
									<input type="text" class="form-control" name="engine">
								</div>

								<div class="col-md-6 mb-3">
									<label>Power</label>
									<input type="text" class="form-control" name="power">
								</div>

								<div class="col-md-6 mb-3">
									<label>Torque</label>
									<input type="text" class="form-control" name="torque">
								</div>

								<!-- Status dropdown WITH ICON -->
								<div class="col-md-6 mb-3">
									<label>Status</label>
									<div class="custom-select-wrapper">
										<select class="form-control" name="active">
											<option value="true">Active</option>
											<option value="false">Inactive</option>
										</select>
									</div>
								</div>

								<div class="col-md-6 mb-3">
									<label>Fuel Type</label>
									<input type="text" class="form-control" name="fuelType">
								</div>

								<div class="col-md-6 mb-3">
									<label>Transmission</label>
									<input type="text" class="form-control" name="transmission">
								</div>

							</div>

							<div class="mt-3">
								<button type="submit" class="btn-purple">
									Save Variant
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