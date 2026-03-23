<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Brand</title>
</head>
<body>

<h2>Edit Car Brand</h2>

<form action="updatebrand" method="post" enctype="multipart/form-data">

    <!-- Hidden ID -->
    <input type="hidden" name="brandId" value="${carBrand.brandId}" />

    <table border="1" cellpadding="10">

        <!-- Brand Name -->
        <tr>
            <td>Brand Name</td>
            <td>
                <input type="text" name="brandName" value="${carBrand.brandName}" required />
            </td>
        </tr>

        <!-- Current Logo -->
        <tr>
            <td>Current Logo</td>
            <td>
                <img src="${carBrand.logoUrl}" width="120" height="120"/>
            </td>
        </tr>

        <!-- Upload New Logo -->
        <tr>
            <td>Change Logo</td>
            <td>
                <input type="file" name="logoFile" />
            </td>
        </tr>

        <!-- Active Status -->
        <tr>
            <td>Status</td>
            <td>
                <select name="active">
                    <option value="true" ${carBrand.active ? 'selected' : ''}>Active</option>
                    <option value="false" ${!carBrand.active ? 'selected' : ''}>Inactive</option>
                </select>
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update Brand</button>
            </td>
        </tr>

    </table>

</form>

<br>

<a href="listbrand">⬅ Back to List</a>

</body>
</html>
