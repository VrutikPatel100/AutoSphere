<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Car Transaction</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

/* Same Theme */
body {
	background: #f4f6fb;
}

.form-container {
	max-width: 700px;
	margin: 25px auto;
}

.form-card {
	background: #fff;
	padding: 20px;
	border-radius: 12px;
	box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

.title-box {
	background: #f1f1f1;
	border-radius: 10px;
	padding: 10px;
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
							<h3>Car Transaction</h3>
						</div>

						<form action="saveCarTransaction" method="post">

							<div class="row">

								<!-- Listing -->
								<div class="col-md-6 mb-3">
									<label>Listing</label>
									<div class="custom-select-wrapper">
										<select name="listingId" class="form-control" required>
											<option value="">Select Listing</option>
											<c:forEach var="listing" items="${allCarList}">
												<option value="${listing.listingId}">
													${listing.listingId}
												</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- Buyer -->
								<div class="col-md-6 mb-3">
									<label>Buyer</label>
									<div class="custom-select-wrapper">
										<select name="buyerId" class="form-control" required>
											<option value="">Select Buyer</option>
											<c:forEach var="buyer" items="${allUsers}">
												<option value="${buyer.userId}">
													${buyer.firstName} ${buyer.lastName}
												</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- Seller -->
								<div class="col-md-6 mb-3">
									<label>Seller</label>
									<div class="custom-select-wrapper">
										<select name="sellerId" class="form-control" required>
											<option value="">Select Seller</option>
											<c:forEach var="seller" items="${allUsers}">
												<option value="${seller.userId}">
													${seller.firstName} ${seller.lastName}
												</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- Price -->
								<div class="col-md-6 mb-3">
									<label>Final Price</label>
									<input type="number" step="0.01"
										name="finalPrice"
										class="form-control"
										required>
								</div>

								<!-- Payment -->
								<div class="col-md-6 mb-3">
									<label>Payment Mode</label>
									<div class="custom-select-wrapper">
										<select name="paymentMode" class="form-control" required>
											<option value="">Select Mode</option>
											<option value="CASH">CASH</option>
											<option value="ONLINE">ONLINE</option>
										</select>
									</div>
								</div>

								<!-- Status -->
								<div class="col-md-6 mb-3">
									<label>Status</label>
									<div class="custom-select-wrapper">
										<select name="transactionStatus" class="form-control" required>
											<option value="">Select Status</option>
											<option value="INITIATED">INITIATED</option>
											<option value="COMPLETED">COMPLETED</option>
											<option value="CANCELLED">CANCELLED</option>
										</select>
									</div>
								</div>

								<!-- Date -->
								<div class="col-md-6 mb-3">
									<label>Completed Date</label>
									<input type="date"
										name="completedAt"
										class="form-control">
								</div>

							</div>

							<div class="mt-3">
								<button type="submit" class="btn-purple">
									Submit Transaction
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