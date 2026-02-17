<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Car Variant</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>
body {
    background-color: #f8f9fa;
}

.card {
    margin-top: 80px;
    border-radius: 12px;
}

/* Table styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 15px;
}

thead {
    background-color: #343a40;
    color: #ffffff;
}

th, td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #dee2e6;
    font-size: 14px;
}

tbody tr:hover {
    background-color: #f1f1f1;
}

/* Status */
.status-active {
    color: #28a745;
    font-weight: bold;
}

.status-inactive {
    color: #dc3545;
    font-weight: bold;
}

/* Action buttons */
.edit {
    background-color: #0d6efd;
    padding: 4px 10px;
    border-radius: 4px;
    color: white;
    font-size: 13px;
    text-decoration: none;
}

.delete {
    background-color: #dc3545;
    padding: 4px 10px;
    border-radius: 4px;
    color: white;
    font-size: 13px;
    text-decoration: none;
    margin-left: 5px;
}

.edit:hover {
    background-color: #0b5ed7;
    color: white;
}

.delete:hover {
    background-color: #bb2d3b;
    color: white;
}
</style>
</head>

<body>

<!-- Header -->
<jsp:include page="AdminHeader.jsp"></jsp:include>

<!-- Sidebar -->
<jsp:include page="AdminSidebar.jsp"></jsp:include>

<div class="content">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card shadow">
                <div class="card-body p-4">

                    <h4 class="text-center mb-4">List Car Variant</h4>

                  	 <table>
						        <tr>
						            <th>ID</th>
						            <th>Listing</th>
						            <th>User</th>
						            <th>Final Price</th>
						            <th>Payment Mode</th>
						            <th>Status</th>
						            <th>Completed At</th>
						            <th>Action</th>
						        </tr>
						
						        <c:forEach var="t" items="${allTransaction}">
						            <tr>
						                <td>${t.transactionId}</td>
						                <td>${t.listingId}</td>
						                <td>${t.userId}</td>
						                <td>${t.finalPrice}</td>
						                <td>${t.paymentMode}</td>
						                <td>${t.transactionStatus}</td>
						                <td>${t.completedAt}</td>
						                <td>
						                    <a class="edit" href="viewTransaction?transactionId=${t.transactionId}">VIEW</a>
						                    <a class = "delete" href="deleteTransaction?transactionId=${t.transactionId}">DELETE</a>
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
 