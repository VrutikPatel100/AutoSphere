<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CAR OFFER</title>

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
body {
    font-family: Arial;
    background-color: #f4f4f4;
}

.container {
    width: 400px;
    margin: 60px auto;
    background: white;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0 0 10px #ccc;
}

h2 {
    text-align: center;
}

input, select {
    width: 100%;
    padding: 8px;
    margin: 8px 0;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    margin-top: 10px;
    border-radius: 4px;
}

button:hover {
    background-color: #0056b3;
}
</style>
</head>

<body>
	<!-- header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<!-- Sidebar -->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>


	<div class="content">
		<div class="row justify-content-center">
			<div class="col-md-6 col-lg-5">
				<div class="card shadow">
					<div class="card-body p-4">
						<h4 class="text-center mb-4">CAR OFFER</h4>

						 
									
<div class="container">
    <h2>Add Car Offer</h2>

    <form action="saveCarOffer" method="post">

        <!-- Listing Dropdown -->
        <label>Listing</label>
        <select name="listingId" required>
            <option value="">Select Listing</option>
            <c:forEach items="${allCarList}" var="l">
                <option value="${l.listingId}">
                    ${l.listingId}
                </option>
            </c:forEach>
        </select>

        <!-- Buyer Dropdown -->
        <label>Buyer</label>
        <select name="userId" required>
            <option value="">Select Buyer</option>
            <c:forEach items="${allUser}" var="u">
                <option value="${u.userId}">
                    ${u.userId} - ${u.firstName}
                </option>
            </c:forEach>
        </select>

        <label>Offered Price</label>
        <input type="number" name="offeredPrice" required>

        <label>Offer Status</label>
        <select name="offerStatus">
            <option value="PENDING">PENDING</option>
            <option value="ACCEPTED">ACCEPTED</option>
            <option value="REJECTED">REJECTED</option>
        </select>

        <label>Created At</label>
        <input type="date" name="createdAt" required>

        <button type="submit">Save Offer</button>
    </form>
</div>
										
					</div>
				</div>
			</div>
		</div>


	</div>
	<jsp:include page="AdminFooter.jsp"></jsp:include>



</body>
</html>