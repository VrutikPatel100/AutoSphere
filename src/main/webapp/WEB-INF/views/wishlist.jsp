<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>AutoSphere • My Wishlist</title>

<jsp:include page="CustomerCSS.jsp"></jsp:include>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

/* GLOBAL */
body {
	background: #f5f3fa;
	font-family: 'Segoe UI';
	margin: 0;
}

/* CONTAINER */
.container {
	max-width: 1100px;
	margin: 50px auto;
}

/* TITLE */
.page-title {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 30px;
}

.wishlist-title {
	font-size: 30px;
	font-weight: 700;
	color: #6a1b9a;
	display: flex;
	align-items: center;
	gap: 12px;
}

.wishlist-title i {
	background: #f3e5f5;
	color: #6a1b9a;
	padding: 10px;
	border-radius: 50%;
	font-size: 22px;
}

/* CAR CARD */
.car-card {
	background: white;
	border-radius: 18px;
	border: 1px solid #e6e0f2;
	padding: 20px;
	transition: 0.3s;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
}

.car-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.12);
}

.car-title {
	font-weight: 600;
	font-size: 18px;
	color: #2c2340;
}

.car-meta {
	color: #7b6f95;
	font-size: 14px;
	margin-top: 6px;
}

.price {
	font-size: 22px;
	font-weight: 700;
	color: #16a34a;
	margin-top: 10px;
}

/* BUTTONS */
.btn {
	border-radius: 25px;
	padding: 6px 18px;
	font-size: 14px;
	text-decoration: none;
	display: inline-block;
}

.btn-remove {
	background: #fdeaea;
	color: #c62828;
}

.btn-buy {
	background: #6a1b9a;
	color: white;
}

.btn-buy:hover {
	background: #54127c;
}

/* GRID */
.grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
	gap: 25px;
}
</style>

<!-- PRICE FORMATTING JAVASCRIPT (ONLY ADDITION) -->
<script>
    function formatIndianPrice(price) {
        let num = parseInt(price.toString().replace(/[^0-9]/g, ''));
        if (isNaN(num)) return '0';
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

    document.addEventListener('DOMContentLoaded', function() {
        // Select all elements with class 'price' that have the 'data-price' attribute
        document.querySelectorAll('.price').forEach(function(el) {
            let rawPrice = el.getAttribute('data-price');
            if (rawPrice) {
                let formattedPrice = formatIndianPrice(rawPrice);
                // Use HTML entity for rupee to avoid encoding issues
                el.innerHTML = '&#8377; ' + formattedPrice;
            }
        });
    });
</script>

</head>

<body>

	<!-- HEADER -->
	<div class="header">

		<a href="customer-dashboard" class="logo">
			<div class="logo-icon">
				<span>A</span>
			</div> AutoSphere
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

	<!-- MAIN -->
	<div class="container">

		<div class="page-title">

			<h3>❤️ ${username}'s Wishlist</h3>

			<a href="CustomerCarList" class="btn btn-buy"> <i
				class="fas fa-arrow-left"></i> Back
			</a>

		</div>

		<div class="grid">

			<c:forEach items="${wishlist}" var="w">

				<div class="car-card">

					<div class="car-title">
						${w.carListing.brandName} ${w.carListing.modelName} <span
							class="car-meta">(${w.carListing.year})</span>
					</div>

					<div class="car-meta">
						<i class="fas fa-map-marker-alt"></i> ${w.carListing.city}
					</div>

					<div class="car-meta">KMS Driven : ${w.carListing.kmsDriven}
						KM</div>

					<!-- 🔥 PRICE ELEMENT MODIFIED: added data-price attribute, removed inline ₹ fallback -->
					<div class="price" data-price="${w.carListing.price}"></div>

					<div style="margin-top: 15px">

						<a href="removeWishlist?wishlistId=${w.wishlistId}"
							class="btn btn-remove"> <i class="fas fa-trash"></i> Remove
						</a> 
						<a href="buyNow?listingId=${w.carListing.listingId}"
							class="btn btn-buy"> <i class="fas fa-shopping-cart"></i> Buy
						</a>

					</div>

				</div>

			</c:forEach>

			<c:if test="${empty wishlist}">

				<div style="grid-column: 1/-1; text-align: center; color: #777">

					<i class="fas fa-cart-arrow-down fa-2x"></i> <br> <br> No
					cars in wishlist

				</div>

			</c:if>

		</div>

	</div>

	<!-- FOOTER -->
	<jsp:include page="CustomerFooter.jsp"></jsp:include>

</body>
</html>

<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>My Wishlist</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>

body{
background:#F4F6F9;
font-family:'Segoe UI',sans-serif;
}

.car-card{
border-radius:15px;
transition:0.3s;
}

.car-card:hover{
transform:translateY(-5px);
box-shadow:0 10px 25px rgba(0,0,0,0.15);
}

.car-title{
font-weight:600;
font-size:18px;
}

.price{
font-size:20px;
font-weight:bold;
color:#198754;
}

</style>

</head>

<body>

<div class="container mt-5">

<div class="d-flex justify-content-between align-items-center mb-4">

<h3>
<i class="bi bi-heart-fill text-danger"></i> My Wishlist
</h3>

<a href="customerCarList" class="btn btn-dark btn-sm">
<i class="bi bi-arrow-left"></i> Back
</a>

</div>

<div class="row g-4">

<c:forEach items="${wishlist}" var="w">

<div class="col-md-4">

<div class="card car-card shadow-sm">

<div class="card-body">

<h5 class="car-title">

${w.carListing.brandName} ${w.carListing.modelName}

<span class="text-muted">(${w.carListing.year})</span>

</h5>

<p class="text-muted mb-2">

<i class="bi bi-geo-alt"></i>
${w.carListing.city}

</p>

<p class="mb-1">

<b>KMS:</b> ${w.carListing.kmsDriven} KM

</p>

<p class="price">

₹ ${w.carListing.price}

</p>

<div class="mt-3">

<a href="removeWishlist?wishlistId=${w.wishlistId}"
class="btn btn-danger btn-sm me-2">

<i class="bi bi-trash"></i>
Remove

</a>

<a href="buyNow?listingId=${w.carListing.listingId}"
class="btn btn-success btn-sm">

<i class="bi bi-cart"></i>
Buy

</a>

</div>

</div>

</div>

</div>

</c:forEach>

<c:if test="${empty wishlist}">

<div class="col-12 text-center">

<div class="alert alert-warning">

<i class="bi bi-exclamation-circle"></i>
No cars in wishlist

</div>

</div>

</c:if>

</div>

</div>

</body>
</html> --%>