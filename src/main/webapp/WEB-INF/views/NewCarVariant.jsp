<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Car Variant</title>

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
<%-- <jsp:include page="AdminCSS.jsp"></jsp:include> --%>
</head>

<body>

<%-- 	<!-- header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>


	<!-- Sidebar -->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	 --%>
<div class="container">
    <h2>Add Car Variant</h2>

    <form action="saveCarVariant" method="post">

        <!-- Variant Name -->
        <label>Variant Name</label>
        <input type="text" name="variantName" required />

        <!-- Ex Showroom Price -->
        <label>Ex-Showroom Price</label>
        <input type="number" name="exShowroomPrice" required />

        <!-- Mileage -->
        <label>Mileage</label>
        <input type="text" name="mileage" />

        <!-- Engine -->
        <label>Engine</label>
        <input type="text" name="engine" />

        <!-- Power -->
        <label>Power</label>
        <input type="text" name="power" />

        <!-- Torque -->
        <label>Torque</label>
        <input type="text" name="torque" />

        <!-- Active -->
        <label>Status</label>
        <select name="active">
            <option value="true">Active</option>
            <option value="false">Inactive</option>
        </select>
        
        <!-- fuelType -->
        <label>fuelType</label>
        <input type="text" name="fuelType" />
        
        <!-- transmission -->
        <label>transmission</label>
        <input type="text" name="transmission" />
        
        

        <button type="submit">Save Variant</button>
    </form>
</div>

</body>
</html>
