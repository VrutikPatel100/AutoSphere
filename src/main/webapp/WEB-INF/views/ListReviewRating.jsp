<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Review Rating</title>

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
    <h2 class="mb-3 text-center text-purple">Car Review Ratingt</h2>
   		<!-- <div class="btn">
	    	<a href="addbrand" class="btn btn-info">+ Add Brand</a>
		</div> -->

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Review ID</th>
                <th>User ID</th>
                <th>Rating</th>
                <th>Comment</th>
                <th>Created Date</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>

            <c:forEach items="${allCarReview}" var="r">

                <tr>
                    <td>${r.reviewId}</td>
                    <td>${r.userId}</td>
                    <td>⭐ ${r.rating}/5</td>
                    <td>${r.comment}</td>
                    <td>${r.createdAt}</td>
                    <%-- <td>
                        <fmt:formatDate value="${r.createdAt}" pattern="dd-MM-yyyy"/>
                    </td> --%>
                    <td>
	                    <a href="viewReviewRating?reviewId=${r.reviewId}" class="btn btn-primary">View</a>
	                    <a href="deleteReviewRating?reviewId=${r.reviewId}" class="btn btn-danger">Delete</a>
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
