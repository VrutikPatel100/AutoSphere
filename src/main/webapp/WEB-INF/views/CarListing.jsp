<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Car Listing</title>

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
	max-width: 750px;
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
							<h3>Car Listing</h3>
						</div>

						<form action="/saveListing" method="post" enctype="multipart/form-data">

							<div class="row">

								<!-- Seller -->
								<div class="col-md-6 mb-3">
									<label>Seller</label>
									<div class="custom-select-wrapper">
										<select class="form-control" name="userId">
											<option value="">Select Seller</option>
											<c:forEach items="${allUser}" var="s">
												<option value="${s.userId}">
													${s.firstName} ${s.lastName}
												</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- Brand -->
								<div class="col-md-6 mb-3">
									<label>Brand</label>
									<div class="custom-select-wrapper">
										<select class="form-control" name="brandId">
											<option value="">Select Brand</option>
											<c:forEach items="${allCarBrand}" var="b">
												<option value="${b.brandId}">
													${b.brandName}
												</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- Model -->
								<div class="col-md-6 mb-3">
									<label>Model</label>
									<div class="custom-select-wrapper">
										<select class="form-control" name="modelId">
											<option value="">Select Model</option>
											<c:forEach items="${allCarModel}" var="m">
												<option value="${m.modelId}">
													${m.modelName}
												</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- Variant -->
								<div class="col-md-6 mb-3">
									<label>Variant</label>
									<div class="custom-select-wrapper">
										<select class="form-control" name="variantId">
											<option value="">Select Variant</option>
											<c:forEach items="${allCarVariant}" var="v">
												<option value="${v.variantId}">
													${v.variantName}
												</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- City -->
								<div class="col-md-6 mb-3">
									<label>City</label>
									<input type="text" class="form-control" name="city">
								</div>

								<!-- KM -->
								<div class="col-md-6 mb-3">
									<label>Kilometers</label>
									<input type="number" class="form-control" name="kmsDriven">
								</div>

								<!-- Year -->
								<div class="col-md-6 mb-3">
									<label>Year</label>
									<input type="number" class="form-control" name="year">
								</div>

								<!-- Ownership -->
								<div class="col-md-6 mb-3">
									<label>Ownership</label>
									<div class="custom-select-wrapper">
										<select class="form-control" name="ownership">
											<option>First</option>
											<option>Second</option>
											<option>Third</option>
										</select>
									</div>
								</div>

								<!-- Price -->
								<div class="col-md-6 mb-3">
									<label>Price</label>
									<input type="number" class="form-control" name="price">
								</div>

								<!-- Status -->
								<div class="col-md-6 mb-3">
									<label>Status</label>
									<div class="custom-select-wrapper">
										<select class="form-control" name="status">
											<option>Available</option>
											<option>Sold</option>
										</select>
									</div>
								</div>

								<!-- Date -->
								<div class="col-md-6 mb-3">
									<label>Date</label>
									<input type="date" class="form-control" name="createdAt">
								</div>

								<!-- Image -->
								<div class="col-md-6 mb-3">
									<label>Image</label>
									<input type="file" name="imageFile" class="form-control">
								</div>

							</div>

							<div class="mt-3">
								<button type="submit" class="btn-purple">
									Save Listing
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