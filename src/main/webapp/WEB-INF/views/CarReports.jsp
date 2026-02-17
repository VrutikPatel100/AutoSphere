<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Car Report</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
        }
        .container {
            width: 500px;
            margin: 40px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 0px 10px #ccc;
        }
        select, input, textarea {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
        }
        button {
            padding: 10px;
            width: 100%;
            background-color: #dc3545;
            color: white;
            border: none;
        }
        button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Car Report</h2>

    <form action="saveCarReport" method="post">

        <!-- Seller Dropdown -->
        <label>Select Seller</label>
        <select name="userId" required>
            <option value="">Select Seller</option>
            <c:forEach var="seller" items="${allUser}">
                <option value="${seller.userId}">
                    ${seller.firstName} ${seller.lastName}
                </option>
            </c:forEach>
        </select>

        <!-- Listing Dropdown -->
        <label>Select Listing</label>
        <select name="listingId" required>
            <option value="">Select Listing</option>
            <c:forEach var="listing" items="${allCar}">
                <option value="${listing.listingId}">
                    ${listing.listingId}
                </option>
            </c:forEach>
        </select>

        <!-- Reason -->
        <label>Reason</label>
        <select name="reason" required>
            <option value="">Select Reason</option>
            <option value="SCAM">SCAM</option>
            <option value="FAKE_ITEM">FAKE ITEM</option>
            <option value="ABUSE">ABUSE</option>
            <option value="OTHER">OTHER</option>
        </select>

        <!-- Status -->
        <label>Status</label>
        <select name="status" required>
            <option value="">Select Status</option>
            <option value="OPEN">OPEN</option>
            <option value="RESOLVED">RESOLVED</option>
            <option value="REJECTED">REJECTED</option>
        </select>
        
        <!-- Created At -->
		<!-- <label>Created At</label>
		<input type="date" name="createdAt" required> -->
        

        <button type="submit">Submit Report</button>

    </form>
</div>

</body>
</html>
