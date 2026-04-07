<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Saved Listing</title>

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

                <h3 class="text-center mb-4 form-title">Edit Saved Listing</h3>

                <form action="updateSavedListing" method="post">

                    <!-- Hidden ID -->
                    <input type="hidden" name="wishlistId" value="${saved.wishlistId}" />

                    <!-- User -->
                    <div class="mb-3">
                        <label class="form-label">User</label>
                        <select class="form-select" name="userId">
                            <c:forEach items="${all}" var="u">
                                <option value="${u.userId}"
                                    ${u.userId == saved.userId ? 'selected' : ''}>
                                    ${u.firstName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Car Listing -->
                    <div class="mb-3">
                        <label class="form-label">Car Listing</label>
                        <select class="form-select" name="listingId">
                            <c:forEach items="${carList}" var="c">
                                <option value="${c.listingId}"
                                    ${c.listingId == saved.listingId ? 'selected' : ''}>
                                    ${c.brandName} - ${c.modelName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Date -->
                    <div class="mb-4">
                        <label class="form-label">Added Date</label>
                        <input type="date" class="form-control"
                               name="addedAt" value="${saved.addedAt}" />
                    </div>

                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-custom">
                            Update Saved Listing
                        </button>
                    </div>

                </form>

            </div>

            <!-- Back -->
            <div class="text-center mt-3">
                <a href="listSavedListing" class="back-link">⬅ Back to List</a>
            </div>

        </div>
    </div>

</div>

</body>
</html>
