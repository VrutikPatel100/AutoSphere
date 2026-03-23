<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Model</title>
</head>
<body>

<h2>Edit Car Model</h2>

<form action="updateCarModel" method="post">

    <!-- Hidden ID -->
    <input type="hidden" name="modelId" value="${carModel.modelId}" />

    <table border="1" cellpadding="10">

        <!-- Brand ID -->
        <tr>
            <td>Brand ID</td>
            <td>
                <input type="number" name="brandId" value="${carModel.brandId}"  />
            </td>
        </tr>

        <!-- Model Name -->
        <tr>
            <td>Model Name</td>
            <td>
                <input type="text" name="modelName" value="${carModel.modelName}" required />
            </td>
        </tr>

        <!-- Body Type -->
        <tr>
            <td>Body Type</td>
            <td>
                <input type="text" name="bodyType" value="${carModel.bodyType}" />
            </td>
        </tr>

        <!-- Launch Year -->
        <tr>
            <td>Launch Year</td>
            <td>
                <input type="date" name="launchYear" value="${carModel.launchYear}" />
            </td>
        </tr>

        <!-- Active -->
        <tr>
            <td>Status</td>
            <td>
                <select name="active">
                    <option value="true" ${carModel.active ? 'selected' : ''}>Active</option>
                    <option value="false" ${!carModel.active ? 'selected' : ''}>Inactive</option>
                </select>
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update Model</button>
            </td>
        </tr>

    </table>

</form>

<br>

<a href="listCarModel">⬅ Back to List</a>

</body>
</html>
