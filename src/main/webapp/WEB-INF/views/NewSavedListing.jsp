<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Car Saved</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

/* Background */
body {
	background: #f4f6fb;
}

/* Container */
.form-container {
	max-width: 600px;
	margin: 30px auto;
}

/* Card */
.form-card {
	background: #fff;
	padding: 20px;
	border-radius: 12px;
	box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

/* Title */
.title-box {
	background: #f1f1f1;
	border-radius: 10px;
	padding: 12px;
	text-align: center;
	margin-bottom: 15px;
}

.title-box h3 {
	color: #4e4bb5;
	margin: 0;
}

/* Inputs */
.form-control {
	height: 36px;
	font-size: 13px;
}

/* Spacing */
.mb-3 {
	margin-bottom: 10px !important;
}

/* Button */
.btn-purple {
	background-color: #4e4bb5;
	color: #fff;
	border: none;
	height: 42px;
	border-radius: 10px;
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
	padding-right: 30px;
}

.custom-select-wrapper::after {
	content: "\f107";
	font-family: "Font Awesome 6 Free";
	font-weight: 900;
	position: absolute;
	right: 10px;
	top: 50%;
	transform: translateY(-50%);
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

				<h3 class="mb-2">Welcome ${sessionScope.user.firstName}</h3>

				<div class="form-container">
					<div class="form-card">

						<div class="title-box">
							<h3>Car Saved</h3>
						</div>

						<form action="saveSavedListing" method="post">

							<!-- User -->
							<div class="mb-3">
								<label>Select Customer</label>
								<div class="custom-select-wrapper">
									<select name="userId" class="form-control" required>
										<option value="">Select User</option>
										<c:forEach items="${all}" var="u">
											<option value="${u.userId}">
												${u.userId}
											</option>
										</c:forEach>
									</select>
								</div>
							</div>

							<!-- Listing -->
							<div class="mb-3">
								<label>Select Listing</label>
								<div class="custom-select-wrapper">
									<select name="listingId" class="form-control" required>
										<option value="">Select Listing</option>
										<c:forEach items="${carList}" var="l">
											<option value="${l.listingId}">
												${l.listingId}
											</option>
										</c:forEach>
									</select>
								</div>
							</div>

							<!-- Date -->
							<div class="mb-3">
								<label>Added Date</label>
								<input type="date" name="addedAt" class="form-control">
							</div>

							<!-- Buttons -->
							<div class="mt-3">
								<button type="submit" class="btn-purple">
									Save
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