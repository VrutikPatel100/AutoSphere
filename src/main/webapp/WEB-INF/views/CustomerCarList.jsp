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

</style>

</head>

<body>


	<!-- HEADER -->

	<jsp:include page="CustomerHeader.jsp"></jsp:include>


	<!-- CONTENT -->

	<div class="content">

		<h3 class="fw-bold mb-4">🚗 List Of All Cars</h3>

		<div class="row g-4">

			<c:forEach items="${customerCarList}" var="c">

				<div class="col-lg-3 col-md-6">

	<div class="car-card">

		<!-- ✅ IMAGE (SAFE ADD - DESIGN BREAK NAI THAY) -->
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

		<div class="price">₹ ${c.price}</div>

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
