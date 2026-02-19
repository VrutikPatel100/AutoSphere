<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
									<div class="d-flex justify-content-between">
										<p class="card-title">Sales Report</p>
										<a href="#" class="text-info">View all</a>
									</div>
									<!-- <p class="font-weight-500">The total number of sessions
										within the date range. It is the period time a user is
										actively engaged with your website, page or app, etc</p>
									<div id="sales-chart-legend" class="chartjs-legend mt-4 mb-2"></div>
									<canvas id="sales-chart"></canvas> -->
									<h2 style="text-align: center;">List Car Saved</h2>
								</div>
							</div>
						</div>
					</div>
							<div class="row">
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <h4 class="card-title">Sales Report</h4>

                <div class="table-responsive">

                    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Wishlist ID</th>
                <th>User ID</th>
                <th>Listing ID</th>
                <th>Added Date</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>

            <!-- Empty List Check -->
            <c:if test="${empty allSaved}">
                <tr>
                    <td colspan="5" class="text-center text-danger">
                        No Saved Listings Found
                    </td>
                </tr>
            </c:if>

            <!-- Data Loop -->
            <c:forEach items="${allSaved}" var="s">

                <tr>
                    <td>${s.wishlistId}</td>
                    <td>${s.userId}</td>
                    <td>${s.listingId}</td>
                    <td>${s.addedAt}</td>
                    
                   <%--  <td>
                        <fmt:formatDate value="${s.addedAt}" pattern="dd-MM-yyyy"/>
                    </td> --%>

                    <td>
                        <a href="viewSavedListing?wishlistId=${s.wishlistId}"
                           class="btn btn-sm btn-info">
                            View
                        </a>

                        <a href="deleteSavedListing?wishlistId=${s.wishlistId}"
                           class="btn btn-sm btn-danger"
                           onclick="return confirm('Are you sure?')">
                            Delete
                        </a>
                    </td>
                </tr>

            </c:forEach>

        </tbody>
    </table>

                </div>

            </div>
        </div>
    </div>
</div>

							

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
</html>