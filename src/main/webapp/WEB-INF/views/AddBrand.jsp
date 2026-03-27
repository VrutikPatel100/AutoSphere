<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Add Brand</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>

/* Background */
body {
	background: #f4f6fb;
}

/* Center container (same signup size) */
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

/* Title box (same as signup) */
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
							<h3>Add Brand</h3>
						</div>

						<form action="savebrand" method="post" enctype="multipart/form-data">

							<div class="mb-3">
								<label>Brand Name</label>
								<input type="text" class="form-control"
									name="brandName"
									placeholder="Enter Car Brand Name" required>
							</div>

							<div class="mb-3">
								<label>Brand Logo</label>
								<input type="file" class="form-control" name="logoFile">
							</div>

							<button type="submit" class="btn-purple">
								Submit
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