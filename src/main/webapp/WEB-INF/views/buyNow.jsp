<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>AutoSphere • Car Booking</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

/* BODY */
body {
	background: #f5f3fa;
	font-family: 'Segoe UI';
	margin: 0;
}

/* HEADER */
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

/* CONTAINER */
.container-main {
	max-width: 1000px;
	margin: 60px auto;
}

/* BOOKING CARD */
.booking-card {
	border-radius: 18px;
	border: 1px solid #e6e0f2;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
}

.card-header {
	background: #6a1b9a;
	color: white;
	font-weight: 600;
	font-size: 18px;
}

.section-title {
	font-size: 14px;
	font-weight: 600;
	color: #444;
	margin-bottom: 5px;
}

.amount-box {
	background: #f3e5f5;
	border-radius: 8px;
	padding: 10px;
	font-weight: 600;
	color: #6a1b9a;
	text-align: center;
}

.confirm-btn {
	background: #6a1b9a;
	border: none;
}

.confirm-btn:hover {
	background: #54127c;
}

/* FOOTER */
.footer {
	background: #3b005a;
	color: white;
	padding: 60px;
	margin-top: 80px;
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

.header{
display:flex;
align-items:center;
padding:15px 40px;
background:white;
border-bottom:1px solid #ddd;
}

.logo{
font-size:26px;
font-weight:bold;
color:#6a1b9a;
}

.logo{
display:flex;
align-items:center;
gap:12px;
font-size:28px;
font-weight:700;
color:#4a148c;
text-decoration:none;
font-family:Arial, sans-serif;
}

.logo-icon{
width:40px;
height:40px;
background:#ff4d6d;
display:flex;
align-items:center;
justify-content:center;
transform:rotate(45deg);
border-radius:10px;
}

.logo-icon span{
color:white;
font-size:20px;
font-weight:700;
transform:rotate(-45deg);
}
</style>

</head>

<body>

	<!-- HEADER -->

	<div class="header">



		<a href="customer-dashboard" class="logo">

			<div class="logo-icon">
				<span>A</span>
			</div> AutoSphere

		</a> <input type="text" class="city-select" placeholder="Select City">

		<div class="search-bar">
			<input type="text" placeholder="Search cars by brand or model">
		</div>

		<div class="menu">
			<a href="CustomerCarList">List Car</a>  <a
				href="wishlist">My Cart</a> <a href="#">Login</a> <a href="#">Register</a>
		</div>

	</div>

	<!-- MAIN -->

	<div class="container container-main">

		<div class="card booking-card">

			<div class="card-header text-center">
				<i class="fas fa-car"></i> Confirm Your Car Booking
			</div>

			<div class="card-body">

				<form action="confirmBooking" method="post">

					<input type="hidden" name="listingId"
						value="${carListing.listingId}"> <input type="hidden"
						name="bookingAmount" value="10000">

					<div class="row">

						<!-- LEFT SIDE -->

						<div class="col-md-6">

							<div class="section-title">Buyer Name</div>

							<input type="text" class="form-control mb-3"
								value="${sessionScope.user.firstName} ${sessionScope.user.lastName}"
								readonly>

							<div class="section-title">Car Name</div>

							<input type="text" class="form-control mb-3"
								value="${carListing.brandName} ${carListing.modelName}" readonly>

							<div class="section-title">Variant Name</div>

							<input type="text" class="form-control mb-3"
								value="${carListing.variantName}" readonly>

						</div>

						<!-- RIGHT SIDE -->

						<div class="col-md-6">

							<div class="section-title">Booking Amount</div>

							<div class="amount-box mb-3">₹10,000 Advance Booking</div>

							<div class="section-title">Payment Method</div>

							<select class="form-select mb-3" name="paymentMethod" required>
								<option value="">Select Payment</option>
								<option value="Credit Card">Credit Card</option>
							</select>

							<div class="section-title">Card Number</div>

							<input type="text" class="form-control mb-3" name="cardNumber"
								placeholder="XXXX XXXX XXXX XXXX" required>

							<div class="row">

								<div class="col-md-6">

									<div class="section-title">Expiry</div>

									<input type="text" class="form-control" name="expiryDate"
										placeholder="MM/YY" required>

								</div>

								<div class="col-md-6">

									<div class="section-title">CVV</div>

									<input type="password" class="form-control" name="cvv"
										placeholder="CVV" required>

								</div>

							</div>

							<br>

							<div class="d-grid">

								<button type="submit" class="btn confirm-btn text-white btn-lg">

									Confirm Booking ₹10,000</button>

							</div>

						</div>

					</div>

				</form>

			</div>

		</div>

	</div>

	<!-- FOOTER -->

	<div class="footer">

		<div class="footer-container">

			<div class="footer-col">
				<h3>AutoSphere</h3>
				<p>AutoSphere is the easiest way to buy and sell used cars
					online with verified inspection and doorstep delivery.</p>
			</div>

			<div class="footer-col">
				<h3>Company</h3>
				<a href="about">About</a> <a href="Careers">Careers</a> <a href="Blog">Blog</a> <a
					href="Contact">Contact</a>
			</div>


			<div class="footer-col">
				<h3>Support</h3>
				<a href="faq">FAQ</a> <a href="terms">Terms</a> <a href="privacy">Privacy</a>
			</div>

		</div>

		<div class="footer-bottom">© 2026 AutoSphere | MCA Sem 4 Project
		</div>

	</div>

</body>
</html>