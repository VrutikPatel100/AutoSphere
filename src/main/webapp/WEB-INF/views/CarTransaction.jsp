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
									<!-- <div class="d-flex justify-content-between">
										<p class="card-title">Sales Report</p>
										<a href="#" class="text-info">View all</a>
									</div>
									<p class="font-weight-500">The total number of sessions
										within the date range. It is the period time a user is
										actively engaged with your website, page or app, etc</p> -->
									<!-- <div id="sales-chart-legend" class="chartjs-legend mt-4 mb-2"></div>
									<canvas id="sales-chart"></canvas> -->
									
									<h2 style="text-align: center;">Add Car Transaction</h2>
									
									
									
								</div>
							</div>
						</div>
					</div>

						<div class="row justify-content-center">
						    <div class="col-md-8 col-lg-6">
						        <div class="card shadow">
						
						            <div class="card-header text-center">
						                <h4 class="mb-0">Add Car Transaction</h4>
						            </div>
						
						            <div class="card-body">
						                <!-- FORM CARD START -->
                <div class="row">
                    <div class="col-md-8 grid-margin stretch-card mx-auto">
                        <div class="card">
                            <div class="card-body">

                                

                                <form action="saveCarTransaction" method="post">

                                    <!-- Listing -->
                                    <div class="form-group">
                                        <label>Select Listing</label>
                                        <select name="listingId" class="form-control" required>
                                            <option value="">Select Listing</option>
                                            <c:forEach var="listing" items="${allCarList}">
                                                <option value="${listing.listingId}">
                                                    ${listing.listingId}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Buyer -->
                                    <div class="form-group">
                                        <label>Select Buyer</label>
                                        <select name="buyerId" class="form-control" required>
                                            <option value="">Select Buyer</option>
                                            <c:forEach var="buyer" items="${allUsers}">
                                                <option value="${buyer.userId}">
                                                    ${buyer.firstName} ${buyer.lastName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Seller -->
                                    <div class="form-group">
                                        <label>Select Seller</label>
                                        <select name="sellerId" class="form-control" required>
                                            <option value="">Select Seller</option>
                                            <c:forEach var="seller" items="${allUsers}">
                                                <option value="${seller.userId}">
                                                    ${seller.firstName} ${seller.lastName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Final Price -->
                                    <div class="form-group">
                                        <label>Final Price</label>
                                        <input type="number" step="0.01"
                                               name="finalPrice"
                                               class="form-control"
                                               required>
                                    </div>

                                    <!-- Payment Mode -->
                                    <div class="form-group">
                                        <label>Payment Mode</label>
                                        <select name="paymentMode" class="form-control" required>
                                            <option value="">Select Payment Mode</option>
                                            <option value="CASH">CASH</option>
                                            <option value="ONLINE">ONLINE</option>
                                        </select>
                                    </div>

                                    <!-- Transaction Status -->
                                    <div class="form-group">
                                        <label>Transaction Status</label>
                                        <select name="transactionStatus" class="form-control" required>
                                            <option value="">Select Status</option>
                                            <option value="INITIATED">INITIATED</option>
                                            <option value="COMPLETED">COMPLETED</option>
                                            <option value="CANCELLED">CANCELLED</option>
                                        </select>
                                    </div>

                                    <!-- Completed Date -->
                                    <div class="form-group">
                                        <label>Completed At</label>
                                        <input type="date"
                                               name="completedAt"
                                               class="form-control">
                                    </div>

                                    <button type="submit"
                                            class="btn btn-primary btn-block mt-3">
                                        Submit Transaction
                                    </button>

                                </form>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- FORM CARD END -->
						            </div>
						
						        </div>
						    </div>
						</div>
							
							

							
						
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				
				
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

            </div>

            <jsp:include page="AdminFooter.jsp"></jsp:include>

        </div>
    </div>
</div>

</body>
</html>
