<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Car Details</title>
<jsp:include page="CustomerCSS.jsp"></jsp:include>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
	rel="stylesheet">

<style>

/* ===== GLOBAL ===== */
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(to right, #f4f6f9, #eef1f5);
	padding-top: 90px;
}

/* ===== HEADER ===== */
.header {
	display: flex;
	align-items: center;
	padding: 15px 40px;
	background: white;
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.logo {
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 26px;
	font-weight: bold;
	color: #6a1b9a;
	text-decoration: none;
}

.logo-icon {
	width: 40px;
	height: 40px;
	background: #ff4d6d;
	display: flex;
	align-items: center;
	justify-content: center;
	transform: rotate(45deg);
	border-radius: 10px;
}

.logo-icon span {
	color: white;
	transform: rotate(-45deg);
}

/* SEARCH */
.search-bar {
	margin-left: 20px;
	background: #f3e5f5;
	padding: 8px 14px;
	border-radius: 25px;
	width: 300px;
}

.search-bar input {
	border: none;
	background: transparent;
	outline: none;
	width: 100%;
}

/* MENU */
.menu {
	margin-left: auto;
}

.menu a {
	margin-left: 18px;
	text-decoration: none;
	color: #333;
}

.menu a:hover {
	color: #6a1b9a;
}

/* ===== MAIN CARD ===== */
.main-card {
	max-width: 1100px;
	margin: auto;
	border-radius: 20px;
	overflow: hidden;
	background: white;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.12);
}

/* LEFT */
.car-img {
	width: 100%;
	height: 300px;
	object-fit: cover;
}

.left-content {
	padding: 20px;
}

.car-title {
	font-size: 22px;
	font-weight: 700;
}

.price {
	font-size: 26px;
	font-weight: bold;
	color: #198754;
}

/* RIGHT */
.right-section {
	padding: 20px;
	background: #f8f9fb;
}

/* BOX */
.section {
	background: white;
	border-radius: 12px;
	padding: 15px;
	margin-bottom: 15px;
}

.section-title {
	font-weight: 700;
	margin-bottom: 10px;
}

/* ROW */
.detail-row {
	display: flex;
	justify-content: space-between;
	padding: 8px 0;
	border-bottom: 1px solid #eee;
}

.detail-row:last-child {
	border-bottom: none;
}

.label {
	color: #666;
}

.value {
	font-weight: 600;
}

/* BUTTON */
.btn-buy {
	background: linear-gradient(135deg, #16a34a, #22c55e);
	color: white;
}

.btn-wishlist {
	background: #facc15;
}
</style>

<script>
    // Only price formatting function - no other changes
    function formatIndianPrice(price) {
        let num = parseInt(price);
        if (isNaN(num)) return price;
        let str = num.toString();
        let len = str.length;
        if (len <= 3) return str;
        let last3 = str.slice(-3);
        let remaining = str.slice(0, -3);
        let formatted = '';
        while (remaining.length > 2) {
            formatted = ',' + remaining.slice(-2) + formatted;
            remaining = remaining.slice(0, -2);
        }
        if (remaining.length > 0) {
            formatted = remaining + formatted;
        }
        return formatted + ',' + last3;
    }

    // Format price when page loads
    document.addEventListener('DOMContentLoaded', function() {
        let priceElement = document.querySelector('.price');
        if (priceElement && priceElement.getAttribute('data-price')) {
            let rawPrice = priceElement.getAttribute('data-price');
            priceElement.innerHTML = '₹ ' + formatIndianPrice(rawPrice);
        }
    });
</script>

</head>

<body>

	<!-- ===== HEADER ===== -->
	<!-- HEADER -->
	<div class="header">
		<a href="customer-dashboard" class="logo">
			<div class="logo-icon">
				<span>A</span>
			</div> AutoSphere
		</a>

		<form action="searchCity" method="post" class="search-bar">
			<input type="text" name="city" placeholder="Select City" required>
			<input type="submit" value="Search">
		</form>

		<!-- CAR SEARCH -->
		<form action="searchCar" method="post" class="search-bar">
			<input type="text" name="car" placeholder="Search cars..." required>
			<input type="submit" value="Search">
		</form>

		<div class="menu">
			<a href="CustomerCarList">List Car</a> <a href="wishlist">My Cart</a> <a href="login">Login</a> <a
				href="#">Register</a>
		</div>
	</div>

	<div class="container mt-4">

		<c:if test="${not empty carListing}">

			<div class="main-card">

				<div class="row g-0">

					<!-- LEFT -->
					<div class="col-lg-5">

						<img src="${carListing.imageURL}" class="car-img">

						<div class="left-content">

							<div class="car-title">
								${carListing.brandName} ${carListing.modelName} <span
									class="text-muted">(${carListing.year})</span>
							</div>

							<p class="text-muted">
								<i class="bi bi-geo-alt"></i> ${carListing.city}
							</p>

							<!-- Price with data attribute for formatting (original raw value preserved) -->
							<div class="price" data-price="${carListing.price}">₹ ${carListing.price}</div>

							<span class="badge bg-success mt-2">${carListing.status}</span>

						</div>

					</div>

					<!-- RIGHT -->
					<div class="col-lg-7 right-section">

						<div class="section">
							<div class="section-title">Basic Info</div>

							<div class="detail-row">
								<span class="label">Listing ID</span><span class="value">${carListing.listingId}</span>
							</div>
							<div class="detail-row">
								<span class="label">Brand</span><span class="value">${carListing.brandName}</span>
							</div>
							<div class="detail-row">
								<span class="label">Model</span><span class="value">${carListing.modelName}</span>
							</div>
							<div class="detail-row">
								<span class="label">Variant</span><span class="value">${carListing.variantName}</span>
							</div>
							<div class="detail-row">
								<span class="label">Year</span><span class="value">${carListing.year}</span>
							</div>
						</div>

						<div class="section">
							<div class="section-title">Car Details</div>

							<div class="detail-row">
								<span class="label">KMS Driven</span><span class="value">${carListing.kmsDriven}</span>
							</div>
							<div class="detail-row">
								<span class="label">Ownership</span><span class="value">${carListing.ownership}</span>
							</div>
							<div class="detail-row">
								<span class="label">Created Date</span><span class="value">${carListing.createdAt}</span>
							</div>
						</div>

						<div class="section">
							<div class="section-title">Seller Info</div>

							<div class="detail-row">
								<span class="label">Seller ID</span><span class="value">${carListing.userId}</span>
							</div>
						</div>

						<div class="d-grid mt-3">
							<a href="addToWishlist?listingId=${carListing.listingId}"
								class="btn btn-wishlist mb-2">❤️ Add to Wishlist</a> <a
								href="buyNow?listingId=${carListing.listingId}"
								class="btn btn-buy">🛒 Buy Now</a>
						</div>

					</div>

				</div>

			</div>

		</c:if>

	</div>

	<!-- FOOTER -->
	<div class="footer">
		<div class="footer-container">
			<div class="footer-col">
				<h3>AutoSphere</h3>
				<p>AutoSphere is the easiest way to buy and sell used cars
					online.</p>
			</div>
			<div class="footer-col">
				<h3>Company</h3>
				<a href="about">About</a> <a href="Careers">Careers</a> <a
					href="Blog">Blog</a> <a href="Contact">Contact</a>
			</div>
			
			<div class="footer-col">
				<h3>Support</h3>
				<a href="faq">FAQ</a> <a href="terms">Terms</a> <a href="privacy">Privacy</a>
			</div>
		</div>
		<div class="footer-bottom">&#169; 2026 AutoSphere | MCA Sem 4
			Project</div>
	</div>

</body>
</html>