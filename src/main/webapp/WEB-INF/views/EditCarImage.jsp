<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Image</title>
</head>
<body>

<h2>Edit Car Image</h2>

<form action="updateCarImage" method="post" enctype="multipart/form-data">

    <!-- Hidden ID -->
    <input type="hidden" name="imageId" value="${carImage.imageId}" />

    <table border="1" cellpadding="10">

        <!-- Model Dropdown -->
        <tr>
            <td>Car Model</td>
            <td>
                <select name="modelName">
                    <c:forEach items="${allCarModel}" var="model">
                        <option value="${model.modelName}"
                            ${model.modelName == carImage.modelName ? 'selected' : ''}>
                            ${model.modelName}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <!-- Current Image -->
        <tr>
            <td>Current Image</td>
            <td>
                <img src="${carImage.imageURL}" width="150" height="120"/>
            </td>
        </tr>

        <!-- Upload New Image -->
        <tr>
            <td>Change Image</td>
            <td>
                <input type="file" name="imageFile" />
            </td>
        </tr>

        <!-- Primary Image -->
        <tr>
            <td>Is Primary</td>
            <td>
                <select name="primary">
                    <option value="true" ${carImage.primary ? 'selected' : ''}>Yes</option>
                    <option value="false" ${!carImage.primary ? 'selected' : ''}>No</option>
                </select>
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update Image</button>
            </td>
        </tr>

    </table>

</form>

<br>

<a href="listCarImage">⬅ Back to List</a>

</body>
</html>
