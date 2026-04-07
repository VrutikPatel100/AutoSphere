<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Transaction</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: #f4f6f9;
        font-family: 'Segoe UI', sans-serif;
    }

    .card {
        border-radius: 15px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        border: none;
    }

    .form-title {
        font-weight: 600;
        color: #4b4bb7;
    }

    .btn-custom {
        background-color: #4b4bb7;
        color: white;
        border-radius: 20px;
        padding: 10px 28px;
        border: none;
        font-weight: 500;
        transition: 0.3s;
    }

    .btn-custom:hover {
        background-color: #3f3fa3;
    }

    .form-control:focus, .form-select:focus {
        border-color: #4b4bb7;
        box-shadow: 0 0 5px rgba(75,75,183,0.5);
    }

    .back-link {
        text-decoration: none;
        color: #4b4bb7;
        font-weight: 500;
    }

    .back-link:hover {
        color: #3f3fa3;
        text-decoration: underline;
    }

</style>

</head>
<body>

<div class="container mt-5">

    <div class="row justify-content-center">
        <div class="col-md-7">

            <div class="card p-4">

                <h3 class="text-center mb-4 form-title">Edit Car Transaction</h3>

                <form action="updateCarTransaction" method="post">

                    <!-- Hidden ID -->
                    <input type="hidden" name="transactionId" value="${carTransaction.transactionId}" />

                    <!-- Listing -->
                    <div class="mb-3">
                        <label class="form-label">Car Listing</label>
                        <select class="form-select" name="listingId">
                            <c:forEach items="${allCarList}" var="l">
                                <option value="${l.listingId}"
                                    ${l.listingId == carTransaction.listingId ? 'selected' : ''}>
                                    ${l.brandName} - ${l.modelName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- User -->
                    <div class="mb-3">
                        <label class="form-label">User</label>
                        <select class="form-select" name="userId">
                            <c:forEach items="${allUsers}" var="u">
                                <option value="${u.userId}"
                                    ${u.userId == carTransaction.userId ? 'selected' : ''}>
                                    ${u.firstName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Final Price -->
                    <div class="mb-3">
                        <label class="form-label">Final Price</label>
                        <input type="number" step="0.01" class="form-control"
                               name="finalPrice" value="${carTransaction.finalPrice}" />
                    </div>

                    <!-- Payment Mode -->
                    <div class="mb-3">
                        <label class="form-label">Payment Mode</label>
                        <select class="form-select" name="paymentMode">
                            <option value="Cash" ${carTransaction.paymentMode == 'Cash' ? 'selected' : ''}>Cash</option>
                            <option value="Online" ${carTransaction.paymentMode == 'Online' ? 'selected' : ''}>Online</option>
                            <option value="Cheque" ${carTransaction.paymentMode == 'Cheque' ? 'selected' : ''}>Cheque</option>
                        </select>
                    </div>

                    <!-- Status -->
                    <div class="mb-3">
                        <label class="form-label">Transaction Status</label>
                        <select class="form-select" name="transactionStatus">
                            <option value="Pending" ${carTransaction.transactionStatus == 'Pending' ? 'selected' : ''}>Pending</option>
                            <option value="Completed" ${carTransaction.transactionStatus == 'Completed' ? 'selected' : ''}>Completed</option>
                            <option value="Failed" ${carTransaction.transactionStatus == 'Failed' ? 'selected' : ''}>Failed</option>
                        </select>
                    </div>

                    <!-- Date -->
                    <div class="mb-4">
                        <label class="form-label">Completed Date</label>
                        <input type="date" class="form-control"
                               name="completedAt" value="${carTransaction.completedAt}" />
                    </div>

                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-custom">
                            Update Transaction
                        </button>
                    </div>

                </form>

            </div>

            <!-- Back -->
            <div class="text-center mt-3">
                <a href="listCarTransaction" class="back-link">⬅ Back to List</a>
            </div>

        </div>
    </div>

</div>

</body>
</html>
