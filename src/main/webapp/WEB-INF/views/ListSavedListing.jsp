<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Saved Listing</title>

<!-- Bootstrap 5 CSS (optional but looks nice) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    .btn-edit {
        background-color: #007bff;
        color: white;
    }
    .btn-edit:hover {
        background-color: #0056b3;
        color: white;
    }
    .btn-delete {
        background-color: #dc3545;
        color: white;
    }
    .btn-delete:hover {
        background-color: #a71d2a;
        color: white;
    }
   
    
 
    
    
    }
</style>

<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>

<body class="bg-light">


<!-- header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>


	<!-- Sidebar -->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	

	
	

<div class="content">
    <h2 class="mb-3 text-center text-purple">Car Saved Listing</h2>
   		<!-- <div class="btn">
	    	<a href="addbrand" class="btn btn-info">+ Add Brand</a>
		</div> -->
			<table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Wishlist ID</th>
                <th>User ID</th>
                <th>Listing ID</th>
                <th>Added Date</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>

            <!-- Empty List Check -->
            <c:if test="${empty allSaved}">
                <tr>
                    <td colspan="5" class="text-center text-danger">
                        No Saved Listings Found
                    </td>
                </tr>
            </c:if>

            <!-- Data Loop -->
            <c:forEach items="${allSaved}" var="s">

                <tr>
                    <td>${s.wishlistId}</td>
                    <td>${s.userId}</td>
                    <td>${s.listingId}</td>
                    <td>${s.addedAt}</td>
                    
                   <%--  <td>
                        <fmt:formatDate value="${s.addedAt}" pattern="dd-MM-yyyy"/>
                    </td> --%>

                    <td>
                        <a href="viewSavedListing?wishlistId=${s.wishlistId}"
                           class="btn btn-sm btn-info">
                            View
                        </a>

                        <a href="deleteSavedListing?wishlistId=${s.wishlistId}"
                           class="btn btn-sm btn-danger"
                           onclick="return confirm('Are you sure?')">
                            Delete
                        </a>
                    </td>
                </tr>

            </c:forEach>

        </tbody>
    </table>
</div>

<!-- Optional Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
