<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Car Listing</title>

<style>
    body { font-family: Arial; background:#f4f4f4; }
    .container { width:600px; margin:30px auto; background:white; padding:20px; border-radius:8px; }
    input, select { width:100%; padding:8px; margin:8px 0; }
    button { padding:10px; width:100%; background:#2c3e50; color:white; border:none; border-radius:5px; }
</style>

</head>
<body>

<div class="container">

<h2>Add Car Listing</h2>

<form action="saveCarListing" method="post">

    <!-- Seller -->
    <label>Seller</label>
    <select name="userId" required>
        <option value="">Select Seller</option>
        <c:forEach items="${allUser}" var="u">
            <option value="${u.userId}">
                ${u.firstName} ${u.lastName}
            </option>
        </c:forEach>
    </select>

    <!-- Brand -->
    <label>Brand</label>
    <select name="brandId" required>
        <option value="">Select Brand</option>
        <c:forEach items="${allCarBrand}" var="b">
            <option value="${b.brandId}">
                ${b.brandName}
            </option>
        </c:forEach>
    </select>

    <!-- Model -->
    <label>Model</label>
    <select name="modelId" required>
        <option value="">Select Model</option>
        <c:forEach items="${allCarModel}" var="m">
            <option value="${m.modelId}">
                ${m.modelName}
            </option>
        </c:forEach>
    </select>

    <!-- Variant -->
    <label>Variant</label>
    <select name="variantId" required>
        <option value="">Select Variant</option>
        <c:forEach items="${allCarVariant}" var="v">
            <option value="${v.variantId}">
                ${v.variantName}
            </option>
        </c:forEach>
    </select>

    <!-- City -->
    <label>City</label>
    <input type="text" name="city" required>

    <!-- KMS Driven -->
    <label>Kilometers Driven</label>
    <input type="number" name="kmsDriven" required>

    <!-- Year -->
    <label>Manufacturing Year</label>
    <input type="number" name="year" required>

    <!-- Ownership -->
    <label>Ownership</label>
    <select name="ownership" required>
        <option value="FIRST">First</option>
        <option value="SECOND">Second</option>
        <option value="THIRD">Third</option>
    </select>

    <!-- Price -->
    <label>Price</label>
    <input type="number" name="price" required>

    <!-- Status -->
    <label>Status</label>
    <select name="status">
        <option value="AVAILABLE">Available</option>
        <option value="SOLD">Sold</option>
    </select>

    <!-- Created At -->
    <label>Created Date</label>
    <input type="date" name="createdAt">

    <button type="submit">Save Listing</button>

</form>

</div>

</body>
</html>
