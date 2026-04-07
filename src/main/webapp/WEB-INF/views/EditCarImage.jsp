<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Image</title>

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

    /* Image preview */
    .img-preview {
        border-radius: 12px;
        border: 2px solid #ddd;
        padding: 6px;
        background: #fff;
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

                <h3 class="text-center mb-4 form-title">Edit Car Image</h3>

                <form action="updateCarImage" method="post" enctype="multipart/form-data">

                    <!-- Hidden ID -->
                    <input type="hidden" name="imageId" value="${carImage.imageId}" />

                    <!-- Model Dropdown -->
                    <div class="mb-3">
                        <label class="form-label">Car Model</label>
                        <select class="form-select" name="modelName">
                            <c:forEach items="${allCarModel}" var="model">
                                <option value="${model.modelName}"
                                    ${model.modelName == carImage.modelName ? 'selected' : ''}>
                                    ${model.modelName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Current Image -->
                    <div class="mb-3 text-center">
                        <label class="form-label d-block">Current Image</label>
                        <img src="${carImage.imageURL}" width="150" height="120" class="img-preview"/>
                    </div>

                    <!-- Change Image -->
                    <div class="mb-3">
                        <label class="form-label">Change Image</label>
                        <input type="file" class="form-control" name="imageFile" />
                    </div>

                    <!-- Primary -->
                    <div class="mb-4">
                        <label class="form-label">Is Primary</label>
                        <select class="form-select" name="primary">
                            <option value="true" ${carImage.primary ? 'selected' : ''}>Yes</option>
                            <option value="false" ${!carImage.primary ? 'selected' : ''}>No</option>
                        </select>
                    </div>

                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-custom">
                            Update Image
                        </button>
                    </div>

                </form>

            </div>

            <!-- Back -->
            <div class="text-center mt-3">
                <a href="listCarImage" class="back-link">⬅ Back to List</a>
            </div>

        </div>
    </div>

</div>

</body>
</html>
