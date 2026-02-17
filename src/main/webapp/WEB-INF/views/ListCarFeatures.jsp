<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Car Features</title>

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

/* Action buttons */
.view {
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

.view:hover {
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
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-body p-4">

                    <h4 class="text-center mb-4">List Car Features</h4>

                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Variant ID</th>
                                <th>Safety Features</th>
                                <th>Comfort Features</th>
                                <th>Entertainment Features</th>
                                <th>Exterior Features</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach items="${allCarFeatures}" var="f">
								  <tr>
								    <td>${f.featureId}</td>
								    <td>${f.variantId}</td>
								    <td>${f.safetyFeatures}</td>
								    <td>${f.comfortFeatures}</td>
								    <td>${f.entertainmentFeatures}</td>
								    <td>${f.exteriorFeatures}</td>
								    <td>
								        <a href="viewCarFeatures?featureId=${f.featureId}" class="view">VIEW</a>
								        <a href="deleteCarFeatures?featureId=${f.featureId}"
								           class="delete"
								           onclick="return confirm('Are you sure?')">
								           Delete
								        </a>
								    </td>
								</tr>
                            </c:forEach>

                            <c:if test="${empty allCarFeatures}">
                                <tr>
                                    <td colspan="7">No car features found</td>
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
