<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Report</title>
</head>
<body>

<h2>Edit Car Report</h2>

<form action="updateCarReports" method="post">

    <!-- Hidden ID -->
    <input type="hidden" name="reportId" value="${report.reportId}" />

    <table border="1" cellpadding="10">

        <!-- User -->
        <tr>
            <td>User</td>
            <td>
                <select name="userId">
                    <c:forEach items="${allUser}" var="u">
                        <option value="${u.userId}"
                            ${u.userId == report.userId ? 'selected' : ''}>
                            ${u.firstName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- Listing -->
        <tr>
            <td>Car Listing</td>
            <td>
                <select name="listingId">
                    <c:forEach items="${allCar}" var="c">
                        <option value="${c.listingId}"
                            ${c.listingId == report.listingId ? 'selected' : ''}>
                            ${c.brandName} - ${c.modelName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- Reason -->
        <tr>
            <td>Reason</td>
            <td>
                <textarea name="reason" rows="3" cols="40">${report.reason}</textarea>
            </td>
        </tr>

        <!-- Status -->
        <tr>
            <td>Status</td>
            <td>
                <select name="status">
                    <option value="Pending" ${report.status == 'Pending' ? 'selected' : ''}>Pending</option>
                    <option value="Reviewed" ${report.status == 'Reviewed' ? 'selected' : ''}>Reviewed</option>
                    <option value="Resolved" ${report.status == 'Resolved' ? 'selected' : ''}>Resolved</option>
                </select>
            </td>
        </tr>

        <!-- Created Date -->
        <tr>
            <td>Created Date</td>
            <td>
                <input type="date" name="createdAt" value="${report.createdAt}" />
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update Report</button>
            </td>
        </tr>

    </table>

</form>

<br>

<a href="listCarReports">⬅ Back to List</a>

</body>
</html>
