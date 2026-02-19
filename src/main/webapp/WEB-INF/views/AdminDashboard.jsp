<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<!-- ✅ Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- ✅ Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- Your Custom CSS (Optional) -->
<jsp:include page="AdminCSS.jsp"></jsp:include>

</head>
<body>

	<!-- Header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<!-- Sidebar -->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<!-- Main Content -->
	<div class="content p-4">
		<h3>Dashboard</h3>
		<p class="text-muted"><h6>Welcome ${sessionScope.user.firstName}</h6></p>

		<div class="row">
			<div class="col-md-3">
				<div class="card shadow-sm">
					<div class="card-body">
						<h6>Total Users</h6>
						<h4>120</h4>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card shadow-sm">
					<div class="card-body">
						<h6>Total Categories</h6>
						<h4>12</h4>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card shadow-sm">
					<div class="card-body">
						<h6>Total Products</h6>
						<h4>340</h4>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card shadow-sm">
					<div class="card-body">
						<h6>Revenue</h6>
						<h4>₹ 1,20,000</h4>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<jsp:include page="AdminFooter.jsp"></jsp:include>
	</div>

<!-- ✅ MOST IMPORTANT – Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
