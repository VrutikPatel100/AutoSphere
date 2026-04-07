<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Listing</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
	body {
		background: #f4f6f9;
		font-family: 'Segoe UI', sans-serif;
	}

	.card {
		border-radius: 15px;
		box-shadow: 0 8px 25px rgba(0,0,0,0.1);
		border: none;
	}

	.form-title {
		font-weight: 600;
		color: #4b4bb7;
	}

	.btn-custom {
		background-color: #4b4bb7;
		color: white;
		border-radius: 20px;
		padding: 10px 28px;
		border: none;
		font-weight: 500;
	}

	.btn-custom:hover {
		background-color: #3f3fa3;
	}

	.form-control:focus, .form-select:focus {
		border-color: #4b4bb7;
		box-shadow: 0 0 5px rgba(75,75,183,0.5);
	}

	.img-preview {
		border-radius: 12px;
		border: 2px solid #ddd;
		padding: 6px;
		background: #fff;
	}

	.back-link {
		text-decoration: none;
		color: #4b4bb7;
		font-weight: 500;
	}

	.back-link:hover {
		color: #3f3fa3;
		text-decoration: underline;
	}
</style>

</head>
<body>

<div class="container mt-5">

	<div class="row justify-content-center">
		<div class="col-md-10">

			<div class="card p-4">

				<h3 class="text-center mb-4 form-title">Edit Car Listing</h3>

				<form action="updateCarListing" method="post" enctype="multipart/form-data">

					<input type="hidden" name="listingId" value="${carListing.listingId}" />

					<div class="row">

						<!-- User -->
						<div class="col-md-6 mb-3">
							<label class="form-label">User</label>
							<select class="form-select" name="userId">
								<c:forEach items="${allUser}" var="u">
									<option value="${u.userId}"
										${u.userId == carListing.userId ? 'selected' : ''}>
										${u.firstName}
									</option>
								</c:forEach>
							</select>
						</div>

						<!-- Brand -->
						<div class="col-md-6 mb-3">
							<label class="form-label">Brand</label>
							<select class="form-select" name="brandId">
								<c:forEach items="${allCarBrand}" var="b">
									<option value="${b.brandId}"
										${b.brandId == carListing.brandId ? 'selected' : ''}>
										${b.brandName}
									</option>
								</c:forEach>
							</select>
						</div>

						<!-- Model -->
						<div class="col-md-6 mb-3">
							<label class="form-label">Model</label>
							<select class="form-select" name="modelId">
								<c:forEach items="${allCarModel}" var="m">
									<option value="${m.modelId}"
										${m.modelId == carListing.modelId ? 'selected' : ''}>
										${m.modelName}
									</option>
								</c:forEach>
							</select>
						</div>

						<!-- Variant -->
						<div class="col-md-6 mb-3">
							<label class="form-label">Variant</label>
							<select class="form-select" name="variantId">
								<c:forEach items="${allCarVariant}" var="v">
									<option value="${v.variantId}"
										${v.variantId == carListing.variantId ? 'selected' : ''}>
										${v.variantName}
									</option>
								</c:forEach>
							</select>
						</div>

						<!-- City -->
						<div class="col-md-6 mb-3">
							<label class="form-label">City</label>
							<input type="text" class="form-control" name="city"
								value="${carListing.city}" />
						</div>

						<!-- KMs -->
						<div class="col-md-6 mb-3">
							<label class="form-label">KMs Driven</label>
							<input type="number" class="form-control" name="kmsDriven"
								value="${carListing.kmsDriven}" />
						</div>

						<!-- Year -->
						<div class="col-md-6 mb-3">
							<label class="form-label">Year</label>
							<input type="number" class="form-control" name="year"
								value="${carListing.year}" />
						</div>

						<!-- Ownership -->
						<div class="col-md-6 mb-3">
							<label class="form-label">Ownership</label>
							<input type="text" class="form-control" name="ownership"
								value="${carListing.ownership}" />
						</div>

						<!-- Price -->
						<div class="col-md-6 mb-3">
							<label class="form-label">Price</label>
							<input type="number" class="form-control" name="price"
								value="${carListing.price}" />
						</div>

						<!-- Status -->
						<div class="col-md-6 mb-3">
							<label class="form-label">Status</label>
							<select class="form-select" name="status">
								<option value="Available"
									${carListing.status == 'Available' ? 'selected' : ''}>Available</option>
								<option value="Sold"
									${carListing.status == 'Sold' ? 'selected' : ''}>Sold</option>
							</select>
						</div>

						<!-- Current Image -->
						<div class="col-md-6 mb-3 text-center">
							<label class="form-label d-block">Current Image</label>
							<img src="${carListing.imageURL}" width="150" class="img-preview"/>
						</div>

						<!-- Upload -->
						<div class="col-md-6 mb-3">
							<label class="form-label">Upload New Image</label>
							<input type="file" class="form-control" name="imageFile" />
						</div>

						<!-- Date -->
						<div class="col-md-6 mb-4">
							<label class="form-label">Created Date</label>
							<input type="date" class="form-control" name="createdAt"
								value="${carListing.createdAt}" />
						</div>

					</div>

					<!-- Submit -->
					<div class="text-center">
						<button type="submit" class="btn btn-custom">
							Update Listing
						</button>
					</div>

				</form>

			</div>

			<!-- Back -->
			<div class="text-center mt-3">
				<a href="allCarList" class="back-link">⬅ Back to List</a>
			</div>

		</div>
	</div>

</div>

</body>
</html>
