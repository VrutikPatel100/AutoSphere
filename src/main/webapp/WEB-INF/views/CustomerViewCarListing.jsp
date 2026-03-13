<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AutoSphere • Car Details · Available / Sold Status</title>
<!-- Bootstrap 5 + Google Font for modern look -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap"
	rel="stylesheet">
<!-- Font Awesome Icons (free) -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background: #F4F6F9; /* soft english grey */
	font-family: 'Inter', 'Segoe UI', sans-serif;
	color: #1E2F44;
	line-height: 1.5;
}

/* ----- HEADER (exact original, untouched) ----- */
.header {
	display: flex;
	align-items: center;
	padding: 15px 40px;
	background: white;
	border-bottom: 1px solid #ddd;
}

.logo {
	font-size: 26px;
	font-weight: bold;
	color: #6a1b9a;
}

.city-select {
	padding: 8px 16px;
	border-radius: 22px;
	border: 1px solid #d1c4e9;
	background: #f3e5f5;
	margin: 0 20px;
	color: #1E2F44;
}

.search-bar {
	display: flex;
	align-items: center;
	background: #f3e5f5;
	padding: 8px 14px;
	border-radius: 25px;
	width: 320px;
}

.search-bar input {
	border: none;
	background: transparent;
	outline: none;
	width: 100%;
}

.menu {
	margin-left: auto;
}

.menu a {
	margin-left: 18px;
	text-decoration: none;
	color: #333;
	font-weight: 500;
}

.menu a:hover {
	color: #6a1b9a;
}

/* ----- MAIN CONTENT (smaller card, available/sold status with icons) ----- */
.container {
	max-width: 900px;
	margin: 30px auto;
	padding: 0 20px;
}

.detail-card {
	background: #FFFFFF;
	border-radius: 28px;
	box-shadow: 0 20px 35px -16px rgba(30, 42, 94, 0.22);
	border: 1px solid #E9EDF2;
	overflow: hidden;
}

/* card header – compact padding */
.card-header-custom {
	background: linear-gradient(105deg, #0D1B2A 0%, #1E3A5F 100%);
	padding: 18px 26px;
	border-bottom: none;
}

.card-header-custom h4 {
	margin: 0;
	font-weight: 700;
	font-size: 1.5rem;
	color: white;
	letter-spacing: -0.02em;
	display: flex;
	align-items: center;
	gap: 10px;
}

.card-header-custom h4 i {
	color: #B7C9E2;
	font-size: 1.7rem;
}

/* card body – tighter spacing */
.card-body-custom {
	padding: 24px 26px 16px 26px;
	background: #FFFFFF;
}

/* two‑column grid with smaller gap */
.details-grid {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	gap: 14px 22px;
}

.detail-item {
	display: flex;
	align-items: center;
	border-bottom: 1px dashed #E2E9F2;
	padding-bottom: 8px;
}

.detail-icon {
	width: 38px;
	height: 38px;
	background: #F0F5FF;
	border-radius: 14px;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-right: 12px;
	color: #1E3A5F;
	font-size: 1.1rem;
	flex-shrink: 0;
	border: 1px solid #DAE5F5;
}

.detail-content {
	flex: 1;
}

.detail-label {
	font-size: 0.7rem;
	font-weight: 600;
	text-transform: uppercase;
	letter-spacing: 0.3px;
	color: #6E85A6;
	margin-bottom: 2px;
}

.detail-value {
	font-weight: 700;
	font-size: 1rem;
	color: #13202E;
	line-height: 1.2;
	word-break: break-word;
}

/* status badges - available (green) / sold (red) with icons */
.status-badge-available {
	display: inline-flex;
	align-items: center;
	padding: 6px 18px;
	border-radius: 50px;
	font-weight: 700;
	font-size: 0.9rem;
	background: #E4F3E8; /* soft green */
	color: #1F6C3B;
	border: 1px solid #BAE1CC;
}

.status-badge-sold {
	display: inline-flex;
	align-items: center;
	padding: 6px 18px;
	border-radius: 50px;
	font-weight: 700;
	font-size: 0.9rem;
	background: #FDE1E1; /* soft red / blush */
	color: #B13A3A;
	border: 1px solid #F4C2C2;
}

.status-badge-available i, .status-badge-sold i {
	margin-right: 6px;
	font-size: 0.9rem;
}

/* price special styling */
.price-value {
	font-size: 1.6rem !important;
	font-weight: 800;
	color: #1E2A5E;
	letter-spacing: -0.02em;
}

.price-label {
	color: #8A9FC2;
}

/* card footer – more compact */
.card-footer-custom {
	background: #F9FBFE;
	padding: 16px 26px 20px 26px;
	border-top: 1px solid #E9F0F8;
	display: flex;
	justify-content: flex-end;
	gap: 14px;
	flex-wrap: wrap;
}

.btn-modern {
	padding: 10px 26px;
	border-radius: 50px;
	font-weight: 600;
	font-size: 0.9rem;
	transition: 0.2s;
	border: none;
	display: inline-flex;
	align-items: center;
	gap: 8px;
	text-decoration: none;
}

.btn-back {
	background: #EFF3F9;
	color: #2D3F62;
	border: 1px solid #D0DDEB;
}

.btn-back:hover {
	background: #E2E9F2;
	color: #1E2F44;
}

.btn-cart {
	background: #1E2A5E;
	color: white;
	box-shadow: 0 6px 14px rgba(30, 42, 94, 0.2);
}

.btn-cart:hover {
	background: #2E3F7A;
	transform: translateY(-2px);
}

/* empty state */
.alert-custom {
	background: #F6F9FF;
	border: 1px solid #DDE5F0;
	border-radius: 24px;
	padding: 24px;
	text-align: center;
	color: #4F658D;
	font-weight: 500;
}

/* responsive */
@media ( max-width : 600px) {
	.details-grid {
		grid-template-columns: 1fr;
	}
	.card-header-custom h4 {
		font-size: 1.3rem;
	}
}

/* ----- FOOTER (exact original, untouched) ----- */
.footer {
	background: #3b005a;
	color: white;
	padding: 60px;
	margin-top: 50px;
}

.footer-container {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

.footer-col {
	width: 220px;
}

.footer-col h3 {
	margin-bottom: 15px;
	color: white;
}

.footer-col p {
	font-size: 14px;
	line-height: 22px;
	color: #ddd;
}

.footer-col a {
	display: block;
	color: #ddd;
	text-decoration: none;
	margin-bottom: 8px;
	font-size: 14px;
}

.footer-col a:hover {
	color: white;
}

.footer-bottom {
	margin-top: 30px;
	text-align: center;
	color: #ccc;
	font-size: 14px;
	border-top: 1px solid #5a2a77;
	padding-top: 25px;
}
</style>
</head>
<body>

	<!-- HEADER (exactly original) -->
	<div class="header">
		<div class="logo">AutoSphere</div>
		<input type="text" class="city-select" placeholder="Select City">
		<div class="search-bar">
			<input type="text" placeholder="Search cars by brand or model">
		</div>
		<div class="menu">
			<a href="CustomerCarList">List Car</a> <a href="#">Car Brand</a> <a
				href="#">Buy Car</a> <a href="#">Sell Car</a> <a href="#">Login</a>
			<a href="#">Register</a>
		</div>
	</div>

	<!-- MAIN CONTENT – smaller card with AVAILABLE / SOLD status and icons -->
	<div class="container">
		<div class="detail-card">
			<!-- card header -->
			<div class="card-header-custom">
				<h4>
					<i class="fas fa-car-side"></i> Car Details
				</h4>
			</div>

			<div class="card-body-custom">
				<c:if test="${not empty carListing}">
					<!-- two-column grid – all fields, status shows Available or Sold with icon -->
					<div class="details-grid">
						<!-- Listing ID -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-hashtag"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">Listing ID</div>
								<div class="detail-value">${carListing.listingId}</div>
							</div>
						</div>

						<!-- Seller ID -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-user-circle"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">Seller ID</div>
								<div class="detail-value">${carListing.userId}</div>
							</div>
						</div>

						<!-- Brand -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-trademark"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">Brand</div>
								<div class="detail-value">${carListing.brandName}</div>
							</div>
						</div>

						<!-- Model -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-car"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">Model</div>
								<div class="detail-value">${carListing.modelName}</div>
							</div>
						</div>

						<!-- Variant -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-cogs"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">Variant</div>
								<div class="detail-value">${carListing.variantName}</div>
							</div>
						</div>

						<!-- City -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-map-marker-alt"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">City</div>
								<div class="detail-value">${carListing.city}</div>
							</div>
						</div>

						<!-- KMS Driven -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">KMS Driven</div>
								<div class="detail-value">${carListing.kmsDriven}km</div>
							</div>
						</div>

						<!-- Year -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-calendar-alt"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">Year</div>
								<div class="detail-value">${carListing.year}</div>
							</div>
						</div>

						<!-- Ownership -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-user-friends"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">Ownership</div>
								<div class="detail-value">${carListing.ownership}</div>
							</div>
						</div>

						<!-- Price -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-rupee-sign"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label price-label">Price</div>
								<div class="detail-value price-value">₹
									${carListing.price}</div>
							</div>
						</div>

						<!-- STATUS – shows "Available" or "Sold" with icon (based on condition) -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-badge-check"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">Status</div>
								<div class="detail-value">
									<c:choose>
										<c:when test="${carListing.status == 'Active'}">
											<span class="status-badge-available"> <i
												class="fas fa-check-circle"></i> Available
											</span>
										</c:when>
										<c:otherwise>
											<span class="status-badge-sold"> <i
												class="fas fa-times-circle"></i> Sold
											</span>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>

						<!-- Created At -->
						<div class="detail-item">
							<div class="detail-icon">
								<i class="fas fa-clock"></i>
							</div>
							<div class="detail-content">
								<div class="detail-label">Listed On</div>
								<div class="detail-value">${carListing.createdAt}</div>
							</div>
						</div>
					</div>
					<!-- end details-grid -->
				</c:if>

				<c:if test="${empty carListing}">
					<div class="alert-custom">
						<i class="fas fa-car-side fa-2x mb-3" style="opacity: 0.6;"></i><br>
						No Car Listing Found
					</div>
				</c:if>
			</div>
			<!-- card-body-custom -->

			<!-- card footer with action buttons -->
			<div class="card-footer-custom">
				<a href="CustomerCarList" class="btn-modern btn-back"> <i
					class="fas fa-arrow-left"></i> Back
				</a> <a href="addToWishlist?listingId=${carListing.listingId}"
					class="btn-modern btn-cart"> <i class="fas fa-cart-plus"></i>
					Add To Cart
				</a>
			</div>
		</div>
		<!-- detail-card -->
	</div>
	<!-- container -->

	<!-- FOOTER (exactly original, untouched) -->
	<div class="footer">
		<div class="footer-container">
			<div class="footer-col">
				<h3>AutoSphere</h3>
				<p>AutoSphere is the easiest way to buy and sell used cars
					online with verified inspection and doorstep delivery.</p>
			</div>
			<div class="footer-col">
				<h3>Company</h3>
				<a href="#">About</a> <a href="#">Careers</a> <a href="#">Blog</a> <a
					href="#">Contact</a>
			</div>
			<div class="footer-col">
				<h3>Services</h3>
				<a href="#">Buy Car</a> <a href="#">Sell Car</a> <a href="#">Car
					Loan</a> <a href="#">Insurance</a>
			</div>
			<div class="footer-col">
				<h3>Support</h3>
				<a href="#">FAQ</a> <a href="#">Terms</a> <a href="#">Privacy</a>
			</div>
		</div>
		<div class="footer-bottom">© 2026 AutoSphere | MCA Sem 4 Project
		</div>
	</div>

</body>
</html>