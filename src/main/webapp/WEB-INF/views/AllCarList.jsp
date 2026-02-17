<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LIST OF ALL CAR </title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>
body {
	background-color: #f8f9fa;
}

.card {
	margin-top: 80px;
	border-radius: 12px;
}


</style>
<style>
    body { font-family: Arial; background:#f4f6f9; }
    .container { width:95%; margin:30px auto; }
    table { width:100%; border-collapse: collapse; background:white; }
    th, td { padding:10px; border:1px solid #ddd; text-align:center; }
    th { background:#2c3e50; color:white; }
    tr:nth-child(even) { background:#f2f2f2; }
    .btn {
        padding:5px 10px;
        text-decoration:none;
        border-radius:4px;
        color:white;
    }
    .edit { background:#27ae60; }
    .delete { background:#c0392b; }
</style>
</head>

<body>
	<!-- header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<!-- Sidebar -->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>


	<div class="content">
		<div class="row justify-content-center">
			<div class="col-md-12 col-lg-10">
				<div class="card shadow">
					<div class="card-body p-4">
						<h4 class="text-center mb-4"> List OF ALL Car </h4>

						 	<table>
							    <tr>
							        <th>ID</th>
							        <th>Seller</th>
							        <th>Brand</th>
							        <th>Model</th>
							        <th>Variant</th>
							        <th>City</th>
							        <th>KMS Driven</th>
							        <th>Year</th>
							        <th>Ownership</th>
							        <th>Price</th>
							        <th>Status</th>
							        <th>Created Date</th>
							        <th>Action</th>
							    </tr>
							
							    <c:forEach items="${allCarList}" var="c">
							        <tr>
							            <td>${c.listingId}</td>
							            <td>${c.userId}</td>
							            <td>${c.brandId}</td>
							            <td>${c.modelId}</td>
							            <td>${c.variantId}</td>
							            <td>${c.city}</td>
							            <td>${c.kmsDriven}</td>
							            <td>${c.year}</td>
							            <td>${c.ownership}</td>
							            <td>${c.price}</td>
							            <td>${c.status}</td>
							            <td>${c.createdAt}</td>
							            <td>
							                <a href="viewCarListing?listingId=${c.listingId}" class="btn btn-primary ">View</a>
							                <a href="deleteCarListing?listingId=${c.listingId}" class="btn delete"
							                   onclick="return confirm('Are you sure?')">Delete</a>
							            </td>
							        </tr>
							    </c:forEach>
							
							</table>						 
					</div>
				</div>
			</div>
		</div>


	</div>
	<jsp:include page="AdminFooter.jsp"></jsp:include>



</body>
</html>