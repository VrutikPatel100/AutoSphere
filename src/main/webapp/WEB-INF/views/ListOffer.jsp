<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OFFER LIST</title>

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
    background-color: #f8f9fa;
    font-family: Arial, sans-serif;
}

.container {
    width: 95%;
    margin: 40px auto;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
    background: white;
}

thead {
    background-color: #343a40;
    color: white;
}

th, td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

tbody tr:hover {
    background-color: #f2f2f2;
}

.status-pending {
    color: orange;
    font-weight: bold;
}

.status-accepted {
    color: green;
    font-weight: bold;
}

.status-rejected {
    color: red;
    font-weight: bold;
}

.action-btn {
    padding: 4px 8px;
    text-decoration: none;
    border-radius: 4px;
    font-size: 13px;
    color: white;
}

.accept {
    background-color: #28a745;
}

.reject {
    background-color: #dc3545;
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
			<div class="col-md-12 col-lg-10">
				<div class="card shadow">
					<div class="card-body p-4">
						<h4 class="text-center mb-4">OFFER LIST</h4>

						 	
							<table>
							    <thead>
							        <tr>
							            <th>Offer ID</th>
							            <th>Listing ID</th>
							            <th>Buyer ID</th>
							            <th>Offered Price</th>
							            <th>Status</th>
							            <th>Created At</th>
							            <th>Action</th>
							        </tr>
							    </thead>
							
							    <tbody>
							
							        <c:forEach items="${allOffer}" var="o">
							            <tr>
							                <td>${o.offerId}</td>
							                <td>${o.listingId}</td>
							                <td>${o.userId}</td>
							                <td>₹ ${o.offeredPrice}</td>
							
							                <td>
							                    <c:choose>
							                        <c:when test="${o.offerStatus == 'PENDING'}">
							                            <span class="status-pending">PENDING</span>
							                        </c:when>
							                        <c:when test="${o.offerStatus == 'ACCEPTED'}">
							                            <span class="status-accepted">ACCEPTED</span>
							                        </c:when>
							                        <c:otherwise>
							                            <span class="status-rejected">REJECTED</span>
							                        </c:otherwise>
							                    </c:choose>
							                </td>
							
							                <td>${o.createdAt}</td>
							
							                <td>
							                    <c:if test="${o.offerStatus == 'PENDING'}">
							                        <a href="viewOffer?offerId=${o.offerId}" class="action-btn accept">VIEW</a>
							                        <a href="deleteOffer?offerId=${o.offerId}" class="action-btn reject">DELETE</a>
							                    </c:if>
							                </td>
							
							            </tr>
							        </c:forEach>
							
							        <c:if test="${empty allOffer}">
							            <tr>
							                <td colspan="7">No Offers Found</td>
							            </tr>
							        </c:if>
							
							    </tbody>
							
							</table>

					</div>
				</div>
			</div>
		</div>


	</div>
	<jsp:include page="AdminFooter.jsp"></jsp:include>



</body>
</html>