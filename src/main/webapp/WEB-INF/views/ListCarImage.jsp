<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Car Image List</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
        }
        .container {
            width: 900px;
            margin: 40px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 0px 10px #ccc;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        img {
            width: 120px;
            height: 80px;
            object-fit: cover;
            border-radius: 5px;
        }
        .primary {
            color: green;
            font-weight: bold;
        }
        .secondary {
            color: red;
        }
        .btn {
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 4px;
            color: white;
        }
        .edit {
            background-color: #28a745;
        }
        .delete {
            background-color: #dc3545;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Car Image List</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Model Name</th>
            <th>Image</th>
            <th>Primary</th>
            <th>Actions</th>
        </tr>

        <c:forEach var="img" items="${carList}">
            <tr>
                <td>${img.imageId}</td>
                <td>${img.modelName}</td>
                <td>
                    <img src="${img.imageUrl}" alt="Car Image">
                </td>
                <td>
                    <c:if test="${img.primary}">
                        <span class="primary">Yes</span>
                    </c:if>
                    <c:if test="${!img.primary}">
                        <span class="secondary">No</span>
                    </c:if>
                </td>
                <td>
                    <a href="viewCarImage?imageId=${img.imageId}" class="btn edit">View</a>
                    <a href="deleteCarImage?imageId=${img.imageId}" class="btn delete">Delete</a>
                </td>
            </tr>
        </c:forEach>

    </table>

</div>

</body>
</html>
