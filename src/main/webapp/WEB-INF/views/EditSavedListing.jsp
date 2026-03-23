<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Saved Listing</title>
</head>
<body>

<h2>Edit Saved Listing</h2>

<form action="updateSavedListing" method="post">

    <!-- Hidden ID -->
    <input type="hidden" name="wishlistId" value="${saved.wishlistId}" />

    <table border="1" cellpadding="10">

        <!-- User -->
        <tr>
            <td>User</td>
            <td>
                <select name="userId">
                    <c:forEach items="${all}" var="u">
                        <option value="${u.userId}"
                            ${u.userId == saved.userId ? 'selected' : ''}>
                            ${u.firstName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- Car Listing -->
        <tr>
            <td>Car Listing</td>
            <td>
                <select name="listingId">
                    <c:forEach items="${carList}" var="c">
                        <option value="${c.listingId}"
                            ${c.listingId == saved.listingId ? 'selected' : ''}>
                            ${c.brandName} - ${c.modelName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- Added Date -->
        <tr>
            <td>Added Date</td>
            <td>
                <input type="date" name="addedAt" value="${saved.addedAt}" />
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update Saved Listing</button>
            </td>
        </tr>

    </table>

</form>

<br>

<a href="listSavedListing">⬅ Back to List</a>

</body>
</html>
