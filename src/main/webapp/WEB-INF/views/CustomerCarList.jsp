<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Of All Car</title>

<jsp:include page="CustomerCSS.jsp"></jsp:include>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #f4f6f9;
	font-family: 'Segoe UI', sans-serif;
}



/* CONTENT */
.content {
	padding: 40px;
}

.car-card {
	background: white;
	border-radius: 18px;
	padding: 20px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
	transition: 0.3s;
	height: 100%;
}

.car-card:hover {
	transform: translateY(-6px);
	box-shadow: 0 14px 35px rgba(0, 0, 0, 0.15);
}

.list-id {
	background: #eef2f7;
	padding: 6px 12px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: 600;
}

/* STATUS COLORS */
.status {
	padding: 6px 14px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: 600;
}

.status.available {
	background: #d1fae5;
	color: #065f46;
}

.status.sold {
	background: #fee2e2;
	color: #991b1b;
}

.status.pending {
	background: #fef3c7;
	color: #92400e;
}

/* BRAND */
.brand {
	font-size: 24px;
	font-weight: 700;
	margin-top: 10px;
}

.model {
	color: #6b7280;
	margin-bottom: 15px;
}

/* CHIPS */
.chips {
	display: flex;
	flex-wrap: wrap;
	gap: 8px;
}

.chip {
	padding: 6px 12px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: 500;
}

.chip.kms {
	background: #e0f2fe;
	color: #0369a1;
}

.chip.year {
	background: #ede9fe;
	color: #5b21b6;
}

.chip.owner {
	background: #ecfdf5;
	color: #047857;
}

.chip.city {
	background: #fff7ed;
	color: #c2410c;
}

/* PRICE */
.price {
	font-size: 28px;
	font-weight: 700;
	color: #1e3a8a;
	margin-top: 15px;
}

.view-btn {
	border-radius: 25px;
	padding: 6px 16px;
}

.section-title {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
    color: #4a148c;
    font-size: 28px;
    margin-bottom: 40px;
}

/* left & right line */
.section-title::before,
.section-title::after {
    content: "";
    flex: 0.3;
    height: 1px;
    background: #ddd;
}
</style>

<!-- PRICE FORMATTING JAVASCRIPT (ONLY ADDITION) -->
<script>
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

    document.addEventListener('DOMContentLoaded', function() {
        let priceElements = document.querySelectorAll('.price-format');
        priceElements.forEach(function(el) {
            let rawPrice = el.getAttribute('data-price');
            if (rawPrice) {
                el.innerHTML = '₹ ' + formatIndianPrice(rawPrice);
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
        </div>
        AutoSphere
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
        <a href="CustomerCarList">List Car</a>
        <a href="wishlist">My Cart</a>
        <a href="login">Login</a>
        <a href="#">Register</a>
    </div>

</div>

	<!-- CONTENT -->

	<div class="content">

		<h3 class="section-title" class="fw-bold mb-4" style="text-align: center;" class="section-title">🚗 List Of All Cars</h3>

		<div class="row g-4">

			<c:forEach items="${customerCarList}" var="c">

				<div class="col-lg-3 col-md-6">

	<div class="car-card">

		<!-- IMAGE -->
		<img src="${c.imageURL}" 
		     style="width:100%; height:200px; object-fit:cover; border-radius:12px; margin-bottom:10px;">

		<div class="d-flex justify-content-between">

			<span class="list-id"> ID #CL${c.listingId} </span>

			<c:choose>
				<c:when test="${c.status == 'AVAILABLE'}">
					<span class="status available">Available</span>
				</c:when>

				<c:when test="${c.status == 'SOLD'}">
					<span class="status sold">Sold</span>
				</c:when>

				<c:when test="${c.status == 'PENDING'}">
					<span class="status pending">Pending</span>
				</c:when>

				<c:otherwise>
					<span class="status">${c.status}</span>
				</c:otherwise>
			</c:choose>

		</div>

		<div class="small text-muted mt-2">
			Seller : ${c.userId} <br> City : ${c.city}
		</div>

		<div class="brand">${c.brandName}</div>

		<div class="model">${c.modelName}-${c.variantName}</div>

		<div class="chips">
			<span class="chip kms">KMS: ${c.kmsDriven}</span>
			<span class="chip year">Year: ${c.year}</span>
			<span class="chip owner">Ownership: ${c.ownership}</span>
			<span class="chip city">City: ${c.city}</span>
		</div>

		<!-- 🔥 PRICE ELEMENT WITH FORMATTING (ONLY CHANGE) -->
		<div class="price price-format" data-price="${c.price}">₹ ${c.price}</div>

		<hr>

		<div class="d-flex justify-content-between align-items-center">

			<small class="text-muted"> ${c.createdAt} </small>

			<div>
				<a href="customerViewCarListing?listingId=${c.listingId}"
					class="btn btn-outline-primary btn-sm view-btn"> View → </a>
			</div>

		</div>

	</div>

</div>
				

			</c:forEach>


			<c:if test="${empty customerCarList}">
				<div class="col-12 text-center">
					<h5>No car listings found</h5>
				</div>
			</c:if>

		</div>

	</div>

	<!-- FOOTER -->
	<jsp:include page="CustomerFooter.jsp"></jsp:include>

</body>
</html>