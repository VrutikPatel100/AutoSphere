<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Variant</title>
</head>
<body>

<h2>Edit Car Variant</h2>

<form action="updateCarVariant" method="post">

    <!-- Hidden ID -->
    <input type="hidden" name="variantId" value="${carVariant.variantId}" />

    <table border="1" cellpadding="10">

        <!-- Model Dropdown -->
        <tr>
            <td>Car Model</td>
            <td>
                <select name="modelId">
                    <c:forEach items="${allCarType}" var="model">
                        <option value="${model.modelId}"
                            ${model.modelId == carVariant.modelId ? 'selected' : ''}>
                            ${model.modelName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- Variant Name -->
        <tr>
            <td>Variant Name</td>
            <td>
                <input type="text" name="variantName" value="${carVariant.variantName}" required />
            </td>
        </tr>

        <!-- Price -->
        <tr>
            <td>Ex-Showroom Price</td>
            <td>
                <input type="number" name="exShowroomPrice" value="${carVariant.exShowroomPrice}" />
            </td>
        </tr>

        <!-- Mileage -->
        <tr>
            <td>Mileage</td>
            <td>
                <input type="text" name="mileage" value="${carVariant.mileage}" />
            </td>
        </tr>

        <!-- Engine -->
        <tr>
            <td>Engine</td>
            <td>
                <input type="text" name="engine" value="${carVariant.engine}" />
            </td>
        </tr>

        <!-- Power -->
        <tr>
            <td>Power</td>
            <td>
                <input type="text" name="power" value="${carVariant.power}" />
            </td>
        </tr>

        <!-- Torque -->
        <tr>
            <td>Torque</td>
            <td>
                <input type="text" name="torque" value="${carVariant.torque}" />
            </td>
        </tr>

        <!-- Fuel Type -->
        <tr>
            <td>Fuel Type</td>
            <td>
                <select name="fuelType">
                    <option value="Petrol" ${carVariant.fuelType == 'Petrol' ? 'selected' : ''}>Petrol</option>
                    <option value="Diesel" ${carVariant.fuelType == 'Diesel' ? 'selected' : ''}>Diesel</option>
                    <option value="CNG" ${carVariant.fuelType == 'CNG' ? 'selected' : ''}>CNG</option>
                    <option value="Electric" ${carVariant.fuelType == 'Electric' ? 'selected' : ''}>Electric</option>
                </select>
            </td>
        </tr>

        <!-- Transmission -->
        <tr>
            <td>Transmission</td>
            <td>
                <select name="transmission">
                    <option value="Manual" ${carVariant.transmission == 'Manual' ? 'selected' : ''}>Manual</option>
                    <option value="Automatic" ${carVariant.transmission == 'Automatic' ? 'selected' : ''}>Automatic</option>
                </select>
            </td>
        </tr>

        <!-- Active -->
        <tr>
            <td>Status</td>
            <td>
                <select name="active">
                    <option value="true" ${carVariant.active ? 'selected' : ''}>Active</option>
                    <option value="false" ${!carVariant.active ? 'selected' : ''}>Inactive</option>
                </select>
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update Variant</button>
            </td>
        </tr>

    </table>

</form>

<br>

<a href="listCarVariant">⬅ Back to List</a>

</body>
</html>
