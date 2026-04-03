<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Listing</title>
</head>
<body>

	<h2>Edit Car Listing</h2>

	<form action="updateCarListing" method="post"
		enctype="multipart/form-data">

		<input type="hidden" name="listingId" value="${carListing.listingId}" />

		<table border="1" cellpadding="10">

			<tr>
				<td>User</td>
				<td><select name="userId">
						<c:forEach items="${allUser}" var="u">
							<option value="${u.userId}"
								${u.userId == carListing.userId ? 'selected' : ''}>
								${u.firstName}</option>
						</c:forEach>
				</select></td>
			</tr>

			<tr>
				<td>Brand</td>
				<td><select name="brandId">
						<c:forEach items="${allCarBrand}" var="b">
							<option value="${b.brandId}"
								${b.brandId == carListing.brandId ? 'selected' : ''}>
								${b.brandName}</option>
						</c:forEach>
				</select></td>
			</tr>

			<tr>
				<td>Model</td>
				<td><select name="modelId">
						<c:forEach items="${allCarModel}" var="m">
							<option value="${m.modelId}"
								${m.modelId == carListing.modelId ? 'selected' : ''}>
								${m.modelName}</option>
						</c:forEach>
				</select></td>
			</tr>

			<tr>
				<td>Variant</td>
				<td><select name="variantId">
						<c:forEach items="${allCarVariant}" var="v">
							<option value="${v.variantId}"
								${v.variantId == carListing.variantId ? 'selected' : ''}>
								${v.variantName}</option>
						</c:forEach>
				</select></td>
			</tr>

			<tr>
				<td>City</td>
				<td><input type="text" name="city" value="${carListing.city}" /></td>
			</tr>

			<tr>
				<td>KMs Driven</td>
				<td><input type="number" name="kmsDriven"
					value="${carListing.kmsDriven}" /></td>
			</tr>

			<tr>
				<td>Year</td>
				<td><input type="number" name="year" value="${carListing.year}" /></td>
			</tr>

			<tr>
				<td>Ownership</td>
				<td><input type="text" name="ownership"
					value="${carListing.ownership}" /></td>
			</tr>

			<tr>
				<td>Price</td>
				<td><input type="number" name="price"
					value="${carListing.price}" /></td>
			</tr>

			<tr>
				<td>Status</td>
				<td><select name="status">
						<option value="Available"
							${carListing.status == 'Available' ? 'selected' : ''}>Available</option>
						<option value="Sold"
							${carListing.status == 'Sold' ? 'selected' : ''}>Sold</option>
				</select></td>
			</tr>

			<!-- OLD IMAGE -->
			<tr>
				<td>Current Image</td>
				<td><img src="${carListing.imageURL}" width="150" /></td>
			</tr>

			<!-- NEW IMAGE -->
			<tr>
				<td>Upload New Image</td>
				<td><input type="file" name="imageFile" /></td>
			</tr>

			<tr>
				<td>Created Date</td>
				<td><input type="date" name="createdAt"
					value="${carListing.createdAt}" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<button type="submit">Update Listing</button>
				</td>
			</tr>

		</table>

	</form>


	<br>

	<a href="allCarList">⬅ Back to List</a>

</body>
</html>
