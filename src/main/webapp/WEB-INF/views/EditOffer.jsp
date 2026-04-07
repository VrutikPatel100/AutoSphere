<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Offer</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: #f4f6f9;
        font-family: 'Segoe UI', sans-serif;
    }

    /* Card */
    .card {
        border-radius: 15px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        border: none;
    }

    /* Title */
    .form-title {
        font-weight: 600;
        color: #4b4bb7;
    }

    /* Button */
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

    /* Inputs */
    .form-control:focus, .form-select:focus {
        border-color: #4b4bb7;
        box-shadow: 0 0 5px rgba(75,75,183,0.5);
    }

    /* Back link */
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

                <h3 class="text-center mb-4 form-title">Edit Offer</h3>

                <form action="updateOffer" method="post">

                    <!-- Hidden ID -->
                    <input type="hidden" name="offerId" value="${offer.offerId}" />

                    <!-- Listing -->
                    <div class="mb-3">
                        <label class="form-label">Car Listing</label>
                        <select class="form-select" name="listingId">
                            <c:forEach items="${allCarList}" var="l">
                                <option value="${l.listingId}"
                                    ${l.listingId == offer.listingId ? 'selected' : ''}>
                                    ${l.brandName} - ${l.modelName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- User -->
                    <div class="mb-3">
                        <label class="form-label">User</label>
                        <select class="form-select" name="userId">
                            <c:forEach items="${allUser}" var="u">
                                <option value="${u.userId}"
                                    ${u.userId == offer.userId ? 'selected' : ''}>
                                    ${u.firstName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Offered Price -->
                    <div class="mb-3">
                        <label class="form-label">Offered Price</label>
                        <input type="number" step="0.01" class="form-control"
                               name="offeredPrice" value="${offer.offeredPrice}" />
                    </div>

                    <!-- Status -->
                    <div class="mb-3">
                        <label class="form-label">Status</label>
                        <select class="form-select" name="offerStatus">
                            <option value="Pending" ${offer.offerStatus == 'Pending' ? 'selected' : ''}>Pending</option>
                            <option value="Accepted" ${offer.offerStatus == 'Accepted' ? 'selected' : ''}>Accepted</option>
                            <option value="Rejected" ${offer.offerStatus == 'Rejected' ? 'selected' : ''}>Rejected</option>
                        </select>
                    </div>

                    <!-- Date -->
                    <div class="mb-4">
                        <label class="form-label">Created Date</label>
                        <input type="date" class="form-control"
                               name="createdAt" value="${offer.createdAt}" />
                    </div>

                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-custom">
                            Update Offer
                        </button>
                    </div>

                </form>

            </div>

            <!-- Back -->
            <div class="text-center mt-3">
                <a href="listCarOffer" class="back-link">⬅ Back to List</a>
            </div>

        </div>
    </div>

</div>

</body>
</html>
