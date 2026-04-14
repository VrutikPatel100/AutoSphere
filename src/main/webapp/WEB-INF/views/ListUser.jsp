<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>List User</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>

/* Background */
body {
	background: #f4f6fb;
}

/* Container */
.table-container {
	max-width: 1100px;
	margin: 30px auto;
}

/* Card */
.table-card {
	background: #fff;
	padding: 25px;
	border-radius: 12px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
}

/* Title */
.title-box {
	background: #e9e9e9;
	border-radius: 10px;
	padding: 12px;
	text-align: center;
	margin-bottom: 20px;
}

.title-box h3 {
	color: #4e4bb5;
	margin: 0;
}

/* Table */
.table {
	border-radius: 10px;
	overflow: hidden;
	background: #fff;
}

.table thead th {
	background: #1f2937 !important;
	color: #fff;
	text-align: center;
	font-size: 14px;
}

.table td {
	text-align: center;
	vertical-align: middle;
	padding: 12px 8px;
	font-size: 13px;
}

/* Profile Image */
.profile-pic {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	object-fit: cover;
}

/* Role badge */
.badge.bg-info {
	background: #3b82f6 !important;
	color: #fff !important;
	border-radius: 20px;
	padding: 5px 10px;
	font-size: 12px;
}

/* Status badge */
.badge.bg-success {
	background: #4caf50 !important;
	border-radius: 20px;
	padding: 5px 12px;
}

.badge.bg-danger {
	border-radius: 20px;
	padding: 5px 12px;
}

/* Buttons */
.action-btns a {
	border-radius: 20px !important;
	font-size: 12px;
	padding: 5px 12px;
	font-weight: 500;
	border: none;
	margin: 2px;
}

/* Button colors */
.btn-warning {
	background: #ffc107 !important;
	color: #000 !important;
}

.btn-danger {
	background: #ff4d4d !important;
	color: #fff !important;
}

.btn-info {
	background: #3b82f6 !important;
	color: #fff !important;
}

/* Hover */
.action-btns a:hover {
	opacity: 0.85;
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

					<div class="table-container">
						<div class="table-card">

							<div class="title-box">
								<h3>List User</h3>
							</div>

							<table class="table table-bordered table-striped" id="myTable">

								<thead>
									<tr>
										<th>SrNo</th>
										<th>Name</th>
										<th>Email</th>
										<th>Role</th>
										<th>Gender</th>
										<th>Birth Year</th>
										<th>Profile</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>

								<tbody>

									<c:forEach var="user" items="${userList}" varStatus="s">
										<tr>

											<td>${s.count}</td>

											<td>${user.firstName}${user.lastName}</td>

											<td>${user.email}</td>

											<td><span class="badge bg-info"> ${user.role} </span></td>

											<td>${user.gender}</td>

											<td>${user.birthYear}</td>

											<td><c:if test="${not empty user.profilePicURL}">
													<img src="${user.profilePicURL}" class="profile-pic" />
												</c:if></td>

											<td><c:choose>
													<c:when test="${user.active}">
														<span class="badge bg-success">Active</span>
													</c:when>
													<c:otherwise>
														<span class="badge bg-danger">Inactive</span>
													</c:otherwise>
												</c:choose></td>

											<td class="action-btns"><a
												href="editUser?userId=${user.userId}"
												class="btn btn-warning btn-sm"> Edit </a> <a
												href="deleteUser?userId=${user.userId}"
												class="btn btn-danger btn-sm"
												onclick="return confirm('Are you sure?');"> Delete </a> <a
												href="viewUser?userId=${user.userId}"
												class="btn btn-info btn-sm"> View </a></td>

										</tr>
									</c:forEach>

									<c:if test="${empty userList}">
										<tr>
											<td colspan="9" class="text-center text-muted">No users
												found</td>
										</tr>
									</c:if>

								</tbody>

							</table>

						</div>
					</div>

				</div>

				<jsp:include page="AdminFooter.jsp"></jsp:include>

			</div>
		</div>
	</div>

	<script>
$(document).ready(function() {
    $('#myTable').DataTable({
        dom: 'Bfrtip',
        scrollX: true,
        buttons: [
            'copy',
            'csv',
            'excel',
            {
                extend: 'pdf',
                text: 'PDF',
                orientation: 'landscape',   // 🔥 FIX
                pageSize: 'A3',             // 🔥 FIX
                exportOptions: {
                    columns: ':visible'
                },
                customize: function (doc) {
                    doc.defaultStyle.fontSize = 8;
                    doc.styles.tableHeader.fontSize = 9;
                    doc.pageMargins = [10,10,10,10];
                }
            },
            'print'
        ]
    });
});
</script>

</body>
</html>





<%--  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Skydash Admin</title>
<!-- plugins:css -->

<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-md-12 grid-margin">
							<div class="row">
								<div class="col-12 col-xl-8 mb-4 mb-xl-0">
									<h3 class="font-weight-bold">Welcome ${sessionScope.user.firstName}</h3>
									<h6 class="font-weight-normal mb-0">
										All systems are running smoothly! You have <span
											class="text-primary">3 unread alerts!</span>
									</h6>
								</div>
								<div class="col-12 col-xl-4">
									<div class="justify-content-end d-flex">
										<div class="dropdown flex-md-grow-1 flex-xl-grow-0">
											<button class="btn btn-sm btn-light bg-white dropdown-toggle"
												type="button" id="dropdownMenuDate2"
												data-bs-toggle="dropdown" aria-haspopup="true"
												aria-expanded="true">
												<i class="mdi mdi-calendar"></i> Today (10 Jan 2021)
											</button>
											<div class="dropdown-menu dropdown-menu-right"
												aria-labelledby="dropdownMenuDate2">
												<a class="dropdown-item" href="#">January - March</a> <a
													class="dropdown-item" href="#">March - June</a> <a
													class="dropdown-item" href="#">June - August</a> <a
													class="dropdown-item" href="#">August - November</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 grid-margin transparent">
							<div class="row">
								<div class="col-md-3 mb-4 stretch-card transparent">
									<div class="card card-tale">
										<div class="card-body">
											<p class="mb-4">Today’s Bookings</p>
											<p class="fs-30 mb-2">4006</p>
											<p>10.00% (30 days)</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-4 stretch-card transparent">
									<div class="card card-dark-blue">
										<div class="card-body">
											<p class="mb-4">Total Bookings</p>
											<p class="fs-30 mb-2">61344</p>
											<p>22.00% (30 days)</p>
										</div>
									</div>
								</div>


								<div class="col-md-3 mb-4 stretch-card transparent">
									<div class="card card-light-blue">
										<div class="card-body">
											<p class="mb-4">Number of Meetings</p>
											<p class="fs-30 mb-2">34040</p>
											<p>2.00% (30 days)</p>
										</div>
									</div>
								</div>
								<div class="col-md-3  mb-4 stretch-card transparent">
									<div class="card card-light-danger">
										<div class="card-body">
											<p class="mb-4">Number of Clients</p>
											<p class="fs-30 mb-2">47033</p>
											<p>0.22% (30 days)</p>
										</div>
									</div>
								</div>
								
								
							</div>
						</div>
						
					</div>
		

					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<!-- <div class="d-flex justify-content-between">
										<p class="card-title">Sales Report</p>
										<a href="#" class="text-info">View all</a>
									</div>
									<p class="font-weight-500">The total number of sessions
										within the date range. It is the period time a user is
										actively engaged with your website, page or app, etc</p> -->
									<!-- <div id="sales-chart-legend" class="chartjs-legend mt-4 mb-2"></div>
									<canvas id="sales-chart"></canvas> -->
									
									
									<h2 style="text-align: center;">List User</h2>
								</div>
							</div>
						</div>
					</div>

						 <table class="table table-bordered table-hover table-striped">
			<thead class="table-dark">
				<tr>
					<th>SrNo</th>
					<th>Name</th>
					<th>Email</th>
					<th>Role</th>
					<th>Gender</th>
					<th>Birth Year</th>
					<th>Profile</th>
					<th>Status</th>
					<th >Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="user" items="${userList}" varStatus="s">
					<tr>

						<td>${s.count}</td>

						<td>${user.firstName}${user.lastName}</td>
						<td>${user.email}</td>
						<td><span class="badge bg-info text-dark">${user.role}</span>
						</td>
						<td>${user.gender}</td>
						<td>${user.birthYear}</td>
						<td class="text-center"><c:if
								test="${not empty user.profilePicURL}">
								<img src="${user.profilePicURL}" class="profile-pic" />
							</c:if></td>


						<td><c:choose>
								<c:when test="${user.active}">
									<span class="badge bg-success">Active</span>
								</c:when>
								<c:otherwise>
									<span class="badge bg-danger">Inactive</span>
								</c:otherwise>
							</c:choose></td>

						<td><a href="editUser?userId=${user.userId}"class="btn btn-sm btn-warning">Edit</a> 
						<a href="deleteUser?userId=${user.userId}"class="btn btn-sm btn-danger"
							onclick="return confirm('Are you sure?');"> Delete </a>
							
							<a class="btn btn-info" href="viewUser?userId=${user.userId}">View</a>
							
							</td>
					</tr>
				</c:forEach>

				<c:if test="${empty userList}">
					<tr>
						<td colspan="11" class="text-center text-muted">No users
							found</td>
					</tr>
				</c:if>
			</tbody>
		</table>
						 
						
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				
				<jsp:include page="AdminFooter.jsp"></jsp:include>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	
	
	
	
	<!-- End custom js for this page-->
</body>
</html>  --%>
--%>
