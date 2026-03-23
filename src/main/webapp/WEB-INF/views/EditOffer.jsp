<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Offer</title>
</head>
<body>

<h2>Edit Offer</h2>

<form action="updateOffer" method="post">

    <!-- Hidden ID -->
    <input type="hidden" name="offerId" value="${offer.offerId}" />

    <table border="1" cellpadding="10">

        <!-- Listing -->
        <tr>
            <td>Car Listing</td>
            <td>
                <select name="listingId">
                    <c:forEach items="${allCarList}" var="l">
                        <option value="${l.listingId}"
                            ${l.listingId == offer.listingId ? 'selected' : ''}>
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
                    <c:forEach items="${allUser}" var="u">
                        <option value="${u.userId}"
                            ${u.userId == offer.userId ? 'selected' : ''}>
                            ${u.firstName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- Offered Price -->
        <tr>
            <td>Offered Price</td>
            <td>
                <input type="number" step="0.01" name="offeredPrice"
                       value="${offer.offeredPrice}" />
            </td>
        </tr>

        <!-- Status -->
        <tr>
            <td>Status</td>
            <td>
                <select name="offerStatus">
                    <option value="Pending" ${offer.offerStatus == 'Pending' ? 'selected' : ''}>Pending</option>
                    <option value="Accepted" ${offer.offerStatus == 'Accepted' ? 'selected' : ''}>Accepted</option>
                    <option value="Rejected" ${offer.offerStatus == 'Rejected' ? 'selected' : ''}>Rejected</option>
                </select>
            </td>
        </tr>

        <!-- Created Date -->
        <tr>
            <td>Created Date</td>
            <td>
                <input type="date" name="createdAt" value="${offer.createdAt}" />
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update Offer</button>
            </td>
        </tr>

    </table>

</form>

<br>

<a href="listCarOffer">⬅ Back to List</a>

</body>
</html>
