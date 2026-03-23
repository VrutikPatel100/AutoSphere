<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Review Rating</title>
</head>
<body>

<h2>Edit Review Rating</h2>

<form action="updateReviewRating" method="post">

    <!-- Hidden ID -->
    <input type="hidden" name="reviewId" value="${review.reviewId}" />

    <table border="1" cellpadding="10">

        <!-- User -->
        <tr>
            <td>User</td>
            <td>
                <select name="userId">
                    <c:forEach items="${user}" var="u">
                        <option value="${u.userId}"
                            ${u.userId == review.userId ? 'selected' : ''}>
                            ${u.firstName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- Rating -->
        <tr>
            <td>Rating</td>
            <td>
                <select name="rating">
                    <option value="1" ${review.rating == 1 ? 'selected' : ''}>1 ⭐</option>
                    <option value="2" ${review.rating == 2 ? 'selected' : ''}>2 ⭐</option>
                    <option value="3" ${review.rating == 3 ? 'selected' : ''}>3 ⭐</option>
                    <option value="4" ${review.rating == 4 ? 'selected' : ''}>4 ⭐</option>
                    <option value="5" ${review.rating == 5 ? 'selected' : ''}>5 ⭐</option>
                </select>
            </td>
        </tr>

        <!-- Comment -->
        <tr>
            <td>Comment</td>
            <td>
                <textarea name="comment" rows="3" cols="40">${review.comment}</textarea>
            </td>
        </tr>

        <!-- Created Date -->
        <tr>
            <td>Created Date</td>
            <td>
                <input type="date" name="createdAt" value="${review.createdAt}" />
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update Review</button>
            </td>
        </tr>

    </table>

</form>

<br>

<a href="listReviewRating">⬅ Back to List</a>

</body>
</html>
