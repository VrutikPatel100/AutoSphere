<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Car Features</title>

<style>
    body {
        font-family: Arial;
        background-color: #f4f4f4;
    }
    .container {
        width: 400px;
        margin: 40px auto;
        background: white;
        padding: 20px;
        border-radius: 5px;
    }
    input, select, button {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
    }
    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
</style>
</head>

<body>

<div class="container">
    <h2>Add Car Features</h2>

    <form action="saveCarFeature" method="post">

        <!-- Variant Dropdown (Foreign Key) -->
        <label>Car Variant</label>
        <select name="variantId" required>
            <option value="">-- Select Variant --</option>
            <c:forEach items="${allCarType}" var="v">
                <option value="${v.modelId}">${v.modelName}</option>
            </c:forEach>
        </select>

        <!-- Safety Features -->
        <label>Safety Features</label>
        <input type="text" name="safetyFeatures"
               placeholder="Airbags, ABS" />

        <!-- Comfort Features -->
        <label>Comfort Features</label>
        <input type="text" name="comfortFeatures"
               placeholder="AC, Power Steering" />

        <!-- Entertainment Features -->
        <label>Entertainment Features</label>
        <input type="text" name="entertainmentFeatures"
               placeholder="Music System, Bluetooth" />

        <!-- Exterior Features -->
        <label>Exterior Features</label>
        <input type="text" name="exteriorFeatures"
               placeholder="Alloy Wheels, LED Lamps" />

        <button type="submit">Save Features</button>

    </form>
</div>

</body>
</html>
