<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>AutoSphere • My Wishlist</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

/* GLOBAL */

body{
background:#f5f3fa;
font-family:'Segoe UI';
margin:0;
}

/* HEADER */

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

.city-select{
padding:8px 16px;
border-radius:22px;
border:1px solid #d1c4e9;
background:#f3e5f5;
margin:0 20px;
}

.search-bar{
display:flex;
align-items:center;
background:#f3e5f5;
padding:8px 14px;
border-radius:25px;
width:320px;
}

.search-bar input{
border:none;
background:transparent;
outline:none;
width:100%;
}

.menu{
margin-left:auto;
}

.menu a{
margin-left:18px;
text-decoration:none;
color:#333;
font-weight:500;
}

.menu a:hover{
color:#6a1b9a;
}

/* CONTAINER */

.container{
max-width:1100px;
margin:50px auto;
}

/* TITLE */

.page-title{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:30px;
}

.wishlist-title{
font-size:30px;
font-weight:700;
color:#6a1b9a;
display:flex;
align-items:center;
gap:12px;
}

.wishlist-title i{
background:#f3e5f5;
color:#6a1b9a;
padding:10px;
border-radius:50%;
font-size:22px;
}

/* CAR CARD */

.car-card{
background:white;
border-radius:18px;
border:1px solid #e6e0f2;
padding:20px;
transition:0.3s;
box-shadow:0 5px 15px rgba(0,0,0,0.05);
}

.car-card:hover{
transform:translateY(-5px);
box-shadow:0 10px 25px rgba(0,0,0,0.12);
}

.car-title{
font-weight:600;
font-size:18px;
color:#2c2340;
}

.car-meta{
color:#7b6f95;
font-size:14px;
margin-top:6px;
}

.price{
font-size:22px;
font-weight:700;
color:#16a34a;
margin-top:10px;
}

/* BUTTONS */

.btn{
border-radius:25px;
padding:6px 18px;
font-size:14px;
text-decoration:none;
display:inline-block;
}

.btn-remove{
background:#fdeaea;
color:#c62828;
}

.btn-buy{
background:#6a1b9a;
color:white;
}

.btn-buy:hover{
background:#54127c;
}

/* GRID */

.grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
gap:25px;
}

/* FOOTER */

.footer{
background:#3b005a;
color:white;
padding:60px;
margin-top:60px;
}

.footer-container{
display:flex;
justify-content:space-between;
flex-wrap:wrap;
}

.footer-col{
width:220px;
}

.footer-col h3{
margin-bottom:15px;
}

.footer-col p{
font-size:14px;
line-height:22px;
color:#ddd;
}

.footer-col a{
display:block;
color:#ddd;
text-decoration:none;
margin-bottom:8px;
}

.footer-col a:hover{
color:white;
}

.footer-bottom{
margin-top:30px;
text-align:center;
color:#ccc;
font-size:14px;
border-top:1px solid #5a2a77;
padding-top:25px;
}

</style>

</head>

<body>

<!-- HEADER -->

<div class="header">

<div class="logo">AutoSphere</div>

<input type="text" class="city-select" placeholder="Select City">

<div class="search-bar">
<input type="text" placeholder="Search cars by brand or model">
</div>

<div class="menu">
<a href="CustomerCarList">List Car</a>
<a href="#">Car Brand</a>
<a href="wishlist">My Cart</a>
<a href="#">Buy Car</a>
<a href="#">Sell Car</a>
<a href="#">Login</a>
<a href="#">Register</a>
</div>

</div>


<!-- MAIN -->

<div class="container">

<div class="page-title">

<h3 class="wishlist-title">
<i class="fas fa-cart-plus"></i> My Wishlist
</h3>

<a href="CustomerCarList" class="btn btn-buy">
<i class="fas fa-arrow-left"></i> Back
</a>

</div>

<div class="grid">

<c:forEach items="${wishlist}" var="w">

<div class="car-card">

<div class="car-title">
${w.carListing.brandName} ${w.carListing.modelName}
<span class="car-meta">(${w.carListing.year})</span>
</div>

<div class="car-meta">
<i class="fas fa-map-marker-alt"></i>
${w.carListing.city}
</div>

<div class="car-meta">
KMS Driven : ${w.carListing.kmsDriven} KM
</div>

<div class="price">
₹ ${w.carListing.price}
</div>

<div style="margin-top:15px">

<a href="removeWishlist?wishlistId=${w.wishlistId}" class="btn btn-remove">
<i class="fas fa-trash"></i> Remove
</a>

<a href="buyNow?listingId=${w.carListing.listingId}" class="btn btn-buy">
<i class="fas fa-shopping-cart"></i> Buy
</a>

</div>

</div>

</c:forEach>

<c:if test="${empty wishlist}">

<div style="grid-column:1/-1;text-align:center;color:#777">

<i class="fas fa-cart-arrow-down fa-2x"></i>

<br><br>

No cars in wishlist

</div>

</c:if>

</div>

</div>


<!-- FOOTER -->

<div class="footer">

<div class="footer-container">

<div class="footer-col">
<h3>AutoSphere</h3>
<p>
AutoSphere is the easiest way to buy and sell used cars online with verified inspection and doorstep delivery.
</p>
</div>

<div class="footer-col">
<h3>Company</h3>
<a href="#">About</a>
<a href="#">Careers</a>
<a href="#">Blog</a>
<a href="#">Contact</a>
</div>

<div class="footer-col">
<h3>Services</h3>
<a href="#">Buy Car</a>
<a href="#">Sell Car</a>
<a href="#">Car Loan</a>
<a href="#">Insurance</a>
</div>

<div class="footer-col">
<h3>Support</h3>
<a href="#">FAQ</a>
<a href="#">Terms</a>
<a href="#">Privacy</a>
</div>

</div>

<div class="footer-bottom">
© 2026 AutoSphere | MCA Sem 4 Project
</div>

</div>

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