<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Car Transaction</title>
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
        select, input {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
        }
        button {
            padding: 10px;
            width: 100%;
            background-color: #28a745;
            color: white;
            border: none;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Car Transaction</h2>

    <form action="saveCarTransaction" method="post">

        <!-- Listing Dropdown -->
        <label>Select Listing</label>
        <select name="listingId" required>
            <option value="">Select Listing</option>
            <c:forEach var="listing" items="${allCarList}">
                <option value="${listing.listingId}">
                    ${listing.listingId} 
                </option>
            </c:forEach>
        </select>

        <!-- Buyer Dropdown -->
        <label>Select Buyer</label>
        <select name="buyerId" required>
            <option value="">Select Buyer</option>
            <c:forEach var="buyer" items="${allUsers}">
                <option value="${buyer.userId}">
                    ${buyer.firstName} ${buyer.lastName}
                </option>
            </c:forEach>
        </select>

        <!-- Seller Dropdown -->
        <label>Select Seller</label>
        <select name="sellerId" required>
            <option value="">Select Seller</option>
            <c:forEach var="seller" items="${allUsers}">
                <option value="${seller.userId}">
                    ${seller.firstName} ${seller.lastName}
                </option>
            </c:forEach>
        </select>

        <!-- Final Price -->
        <label>Final Price</label>
        <input type="number" step="0.01" name="finalPrice" required>

        <!-- Payment Mode -->
        <label>Payment Mode</label>
        <select name="paymentMode" required>
            <option value="">Select Payment Mode</option>
            <option value="CASH">CASH</option>
            <option value="ONLINE">ONLINE</option>
        </select>

        <!-- Transaction Status -->
        <label>Transaction Status</label>
        <select name="transactionStatus" required>
            <option value="">Select Status</option>
            <option value="INITIATED">INITIATED</option>
            <option value="COMPLETED">COMPLETED</option>
            <option value="CANCELLED">CANCELLED</option>
        </select>

        <!-- Completed At -->
        <label>Completed At</label>
        <input type="date" name="completedAt">

        <button type="submit">Submit Transaction</button>

    </form>
</div>

</body>
</html>
