<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Variant</title>

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

                <h3 class="text-center mb-4 form-title">Edit Car Variant</h3>

                <form action="updateCarVariant" method="post">

                    <!-- Hidden ID -->
                    <input type="hidden" name="variantId" value="${carVariant.variantId}" />

                    <!-- Model Dropdown -->
                    <div class="mb-3">
                        <label class="form-label">Car Model</label>
                        <select class="form-select" name="modelId">
                            <c:forEach items="${allCarType}" var="model">
                                <option value="${model.modelId}"
                                    ${model.modelId == carVariant.modelId ? 'selected' : ''}>
                                    ${model.modelName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Variant Name -->
                    <div class="mb-3">
                        <label class="form-label">Variant Name</label>
                        <input type="text" class="form-control" name="variantName"
                               value="${carVariant.variantName}" required />
                    </div>

                    <!-- Price -->
                    <div class="mb-3">
                        <label class="form-label">Ex-Showroom Price</label>
                        <input type="number" class="form-control" name="exShowroomPrice"
                               value="${carVariant.exShowroomPrice}" />
                    </div>

                    <!-- Mileage -->
                    <div class="mb-3">
                        <label class="form-label">Mileage</label>
                        <input type="text" class="form-control" name="mileage"
                               value="${carVariant.mileage}" />
                    </div>

                    <!-- Engine -->
                    <div class="mb-3">
                        <label class="form-label">Engine</label>
                        <input type="text" class="form-control" name="engine"
                               value="${carVariant.engine}" />
                    </div>

                    <!-- Power -->
                    <div class="mb-3">
                        <label class="form-label">Power</label>
                        <input type="text" class="form-control" name="power"
                               value="${carVariant.power}" />
                    </div>

                    <!-- Torque -->
                    <div class="mb-3">
                        <label class="form-label">Torque</label>
                        <input type="text" class="form-control" name="torque"
                               value="${carVariant.torque}" />
                    </div>

                    <!-- Fuel Type -->
                    <div class="mb-3">
                        <label class="form-label">Fuel Type</label>
                        <select class="form-select" name="fuelType">
                            <option value="Petrol" ${carVariant.fuelType == 'Petrol' ? 'selected' : ''}>Petrol</option>
                            <option value="Diesel" ${carVariant.fuelType == 'Diesel' ? 'selected' : ''}>Diesel</option>
                            <option value="CNG" ${carVariant.fuelType == 'CNG' ? 'selected' : ''}>CNG</option>
                            <option value="Electric" ${carVariant.fuelType == 'Electric' ? 'selected' : ''}>Electric</option>
                        </select>
                    </div>

                    <!-- Transmission -->
                    <div class="mb-3">
                        <label class="form-label">Transmission</label>
                        <select class="form-select" name="transmission">
                            <option value="Manual" ${carVariant.transmission == 'Manual' ? 'selected' : ''}>Manual</option>
                            <option value="Automatic" ${carVariant.transmission == 'Automatic' ? 'selected' : ''}>Automatic</option>
                        </select>
                    </div>

                    <!-- Status -->
                    <div class="mb-4">
                        <label class="form-label">Status</label>
                        <select class="form-select" name="active">
                            <option value="true" ${carVariant.active ? 'selected' : ''}>Active</option>
                            <option value="false" ${!carVariant.active ? 'selected' : ''}>Inactive</option>
                        </select>
                    </div>

                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-custom">
                            Update Variant
                        </button>
                    </div>

                </form>

            </div>

            <!-- Back -->
            <div class="text-center mt-3">
                <a href="listCarVariant" class="back-link">⬅ Back to List</a>
            </div>

        </div>
    </div>

</div>

</body>
</html>
	