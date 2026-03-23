<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Transaction</title>
</head>
<body>

<h2>Edit Car Transaction</h2>

<form action="updateCarTransaction" method="post">

    <!-- Hidden ID -->
    <input type="hidden" name="transactionId" value="${carTransaction.transactionId}" />

    <table border="1" cellpadding="10">

        <!-- Listing -->
        <tr>
            <td>Car Listing</td>
            <td>
                <select name="listingId">
                    <c:forEach items="${allCarList}" var="l">
                        <option value="${l.listingId}"
                            ${l.listingId == carTransaction.listingId ? 'selected' : ''}>
                            ${l.brandName} - ${l.modelName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- User -->
        <tr>
            <td>User</td>
            <td>
                <select name="userId">
                    <c:forEach items="${allUsers}" var="u">
                        <option value="${u.userId}"
                            ${u.userId == carTransaction.userId ? 'selected' : ''}>
                            ${u.firstName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- Final Price -->
        <tr>
            <td>Final Price</td>
            <td>
                <input type="number" step="0.01" name="finalPrice"
                       value="${carTransaction.finalPrice}" />
            </td>
        </tr>

        <!-- Payment Mode -->
        <tr>
            <td>Payment Mode</td>
            <td>
                <select name="paymentMode">
                    <option value="Cash" ${carTransaction.paymentMode == 'Cash' ? 'selected' : ''}>Cash</option>
                    <option value="Online" ${carTransaction.paymentMode == 'Online' ? 'selected' : ''}>Online</option>
                    <option value="Cheque" ${carTransaction.paymentMode == 'Cheque' ? 'selected' : ''}>Cheque</option>
                </select>
            </td>
        </tr>

        <!-- Status -->
        <tr>
            <td>Transaction Status</td>
            <td>
                <select name="transactionStatus">
                    <option value="Pending" ${carTransaction.transactionStatus == 'Pending' ? 'selected' : ''}>Pending</option>
                    <option value="Completed" ${carTransaction.transactionStatus == 'Completed' ? 'selected' : ''}>Completed</option>
                    <option value="Failed" ${carTransaction.transactionStatus == 'Failed' ? 'selected' : ''}>Failed</option>
                </select>
            </td>
        </tr>

        <!-- Completed Date -->
        <tr>
            <td>Completed Date</td>
            <td>
                <input type="date" name="completedAt" value="${carTransaction.completedAt}" />
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update Transaction</button>
            </td>
        </tr>

    </table>

</form>

<br>

<a href="listCarTransaction">⬅ Back to List</a>

</body>
</html>
