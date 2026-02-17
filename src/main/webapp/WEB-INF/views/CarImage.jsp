<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Car Image</title>
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
            background-color: #007bff;
            color: white;
            border: none;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Add Car Image</h2>

    <form action="saveCarImage" method="post">

        <!-- Model Name Dropdown -->
        <label>Select Model</label>
        <select name="modelName" required>
            <option value="">Select Model</option>
            <c:forEach var="m" items="${allCarModel}">
                <option value="${m.modelName}">
                    ${m.modelName}
                </option>
            </c:forEach>
        </select>

        <!-- Image URL -->
        <label>Image URL</label>
        <input type="text" name="imageUrl" required>

        <!-- Is Primary -->
        <label>Is Primary Image?</label>
        <select name="isPrimary" required>
            <option value="">Select Option</option>
            <option value="true">Yes (Primary)</option>
            <option value="false">No (Secondary)</option>
        </select>

        <button type="submit">Save Car Image</button>

    </form>
</div>

</body>
</html>
