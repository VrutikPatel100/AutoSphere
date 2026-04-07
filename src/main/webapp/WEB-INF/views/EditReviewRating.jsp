<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Review Rating</title>

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

    textarea.form-control {
        resize: none;
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

                <h3 class="text-center mb-4 form-title">Edit Review Rating</h3>

                <form action="updateReviewRating" method="post">

                    <!-- Hidden ID -->
                    <input type="hidden" name="reviewId" value="${review.reviewId}" />

                    <!-- User -->
                    <div class="mb-3">
                        <label class="form-label">User</label>
                        <select class="form-select" name="userId">
                            <c:forEach items="${user}" var="u">
                                <option value="${u.userId}"
                                    ${u.userId == review.userId ? 'selected' : ''}>
                                    ${u.firstName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Rating -->
                    <div class="mb-3">
                        <label class="form-label">Rating</label>
                        <select class="form-select" name="rating">
                            <option value="1" ${review.rating == 1 ? 'selected' : ''}>1 ⭐</option>
                            <option value="2" ${review.rating == 2 ? 'selected' : ''}>2 ⭐</option>
                            <option value="3" ${review.rating == 3 ? 'selected' : ''}>3 ⭐</option>
                            <option value="4" ${review.rating == 4 ? 'selected' : ''}>4 ⭐</option>
                            <option value="5" ${review.rating == 5 ? 'selected' : ''}>5 ⭐</option>
                        </select>
                    </div>

                    <!-- Comment -->
                    <div class="mb-3">
                        <label class="form-label">Comment</label>
                        <textarea class="form-control" name="comment" rows="3">${review.comment}</textarea>
                    </div>

                    <!-- Date -->
                    <div class="mb-4">
                        <label class="form-label">Created Date</label>
                        <input type="date" class="form-control"
                               name="createdAt" value="${review.createdAt}" />
                    </div>

                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-custom">
                            Update Review
                        </button>
                    </div>

                </form>

            </div>

            <!-- Back -->
            <div class="text-center mt-3">
                <a href="listReviewRating" class="back-link">⬅ Back to List</a>
            </div>

        </div>
    </div>

</div>

</body>
</html>
