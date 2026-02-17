<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Car Variant</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>
body {
    background-color: #f8f9fa;
}

.card {
    margin-top: 80px;
    border-radius: 12px;
}

/* Table styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 15px;
}

thead {
    background-color: #343a40;
    color: #ffffff;
}

th, td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #dee2e6;
    font-size: 14px;
}

tbody tr:hover {
    background-color: #f1f1f1;
}

/* Status */
.status-active {
    color: #28a745;
    font-weight: bold;
}

.status-inactive {
    color: #dc3545;
    font-weight: bold;
}

/* Action buttons */
.edit {
    background-color: #0d6efd;
    padding: 4px 10px;
    border-radius: 4px;
    color: white;
    font-size: 13px;
    text-decoration: none;
}

.delete {
    background-color: #dc3545;
    padding: 4px 10px;
    border-radius: 4px;
    color: white;
    font-size: 13px;
    text-decoration: none;
    margin-left: 5px;
}

.edit:hover {
    background-color: #0b5ed7;
    color: white;
}

.delete:hover {
    background-color: #bb2d3b;
    color: white;
}
</style>
</head>

<body>

<!-- Header -->
<jsp:include page="AdminHeader.jsp"></jsp:include>

<!-- Sidebar -->
<jsp:include page="AdminSidebar.jsp"></jsp:include>

<div class="content">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card shadow">
                <div class="card-body p-4">

                    <h4 class="text-center mb-4">List Car Variant</h4>

                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Variant Name</th>
                                <th>Price</th>
                                <th>Mileage</th>
                                <th>Engine</th>
                                <th>Power</th>
                                <th>Torque</th>
                               
                                <th>fuelType</th>
                                <th>transmission</th>                               
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach items="${allCarVariant}" var="v">
                                <tr>
                                    <td>${v.variantId}</td>
                                    <td>${v.variantName}</td>
                                    <td>${v.exShowroomPrice}</td>
                                    <td>${v.mileage}</td>
                                    <td>${v.engine}</td>
                                    <td>${v.power}</td>
                                    <td>${v.torque}</td>
                                  
                                    <td>${v.fuelType}</td>
                                    <td>${v.transmission}</td>
                                    <td>
                                        <c:if test="${v.active}">
                                            <span class="status-active">Active</span>
                                        </c:if>
                                        <c:if test="${!v.active}">
                                            <span class="status-inactive">Inactive</span>
                                        </c:if>
                                    </td>
                                    <td>
                                        <a href="editCarVariant?variantId=${v.variantId}" class="edit">VIEW</a>
                                        <a href="deleteCarVariant?variantId=${v.variantId}"class="delete"
                                           onclick="return confirm('Are you sure you want to delete this variant?')">
                                           Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>

                            <c:if test="${empty allCarVariant}">
                                <tr>
                                    <td colspan="9">No car variants found</td>
                                </tr>
                            </c:if>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="AdminFooter.jsp"></jsp:include>

</body>
</html>
 