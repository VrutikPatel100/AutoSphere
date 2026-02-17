<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Car Reports</title>

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
.status-open {
    color: #0d6efd;
    font-weight: bold;
}

.status-resolved {
    color: #28a745;
    font-weight: bold;
}

.status-rejected {
    color: #dc3545;
    font-weight: bold;
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
        <div class="col-md-11">
            <div class="card shadow">
                <div class="card-body p-4">

                    <h4 class="text-center mb-4">List Car Reports</h4>

                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Report ID</th>
                                <th>Seller ID</th>
                                <th>Listing ID</th>
                                <th>Reason</th>
                                <th>Status</th>
                                <th>Created At</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach items="${carReports}" var="r">
                                <tr>
                                    <td>${r.reportId}</td>
                                    <td>${r.userId}</td>             
                                    <td>${r.listingId}</td>
                                    <td>${r.reason}</td>

                                    <td>
                                        <c:if test="${r.status == 'OPEN'}">
                                            <span class="status-open">OPEN</span>
                                        </c:if>
                                        <c:if test="${r.status == 'RESOLVED'}">
                                            <span class="status-resolved">RESOLVED</span>
                                        </c:if>
                                        <c:if test="${r.status == 'REJECTED'}">
                                            <span class="status-rejected">REJECTED</span>
                                        </c:if>
                                    </td>

                                    <td>${r.createdAt}</td>

                                    <td>
                                        <a href="viewCarReports?reportId=${r.reportId}" class="view">View</a>
                                        <a href="deleteCarReports?reportId=${r.reportId}"
                                           class="delete"
                                           onclick="return confirm('Are you sure you want to delete this report?')">
                                           Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>

                            <c:if test="${empty reportList}">
                                <tr>
                                    <td colspan="7">No car reports found</td>
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
