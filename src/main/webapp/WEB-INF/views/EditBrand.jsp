<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Brand</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: #f4f6f9;
        font-family: 'Segoe UI', sans-serif;
    }

    /* Card Styling */
    .card {
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        border: none;
    }

    /* Title */
    .form-title {
        font-weight: 600;
        color: #6f42c1;
    }

    /* Button */
    .btn-custom {
    background-color: #4b4bb7;
    color: white;
    border-radius: 20px; /* more rounded */
    padding: 10px 28px;
    border: none;
    font-weight: 500;
}

.btn-custom:hover {
    background-color: #3f3fa3;
}


    /* Input focus */
    .form-control:focus, .form-select:focus {
        border-color: #6f42c1;
        box-shadow: 0 0 0 0.2rem rgba(111, 66, 193, 0.25);
    }

    /* Logo */
    .logo-img {
        border-radius: 12px;
        border: 2px solid #e0e0e0;
        padding: 6px;
        background: white;
    }

    /* Back link */
    .back-link {
        text-decoration: none;
        color: #6f42c1;
        font-weight: 500;
        transition: 0.3s;
    }

    .back-link:hover {
        color: #4b2a91;
        text-decoration: underline;
    }
</style>

</head>
<body>

<div class="container mt-5">

    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card p-4">

                <h3 class="text-center mb-4 form-title">Edit Car Brand</h3>

                <form action="updatebrand" method="post" enctype="multipart/form-data">

                    <!-- Hidden ID -->
                    <input type="hidden" name="brandId" value="${carBrand.brandId}" />

                    <!-- Brand Name -->
                    <div class="mb-3">
                        <label class="form-label">Brand Name</label>
                        <input type="text" class="form-control" name="brandName" value="${carBrand.brandName}" required />
                    </div>

                    <!-- Current Logo -->
                    <div class="mb-3 text-center">
                        <label class="form-label d-block">Current Logo</label>
                        <img src="${carBrand.logoUrl}" width="120" height="120" class="logo-img"/>
                    </div>

                    <!-- Upload New Logo -->
                    <div class="mb-3">
                        <label class="form-label">Change Logo</label>
                        <input type="file" class="form-control" name="logoFile" />
                    </div>

                    <!-- Status -->
                    <div class="mb-4">
                        <label class="form-label">Status</label>
                        <select class="form-select" name="active">
                            <option value="true" ${carBrand.active ? 'selected' : ''}>Active</option>
                            <option value="false" ${!carBrand.active ? 'selected' : ''}>Inactive</option>
                        </select>
                    </div>

                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-custom">Update Brand</button>
                    </div>

                </form>

            </div>

            <!-- Back -->
            <div class="text-center mt-3">
                <a href="listbrand" class="back-link">⬅ Back to List</a>
            </div>

        </div>
    </div>

</div>

</body>
</html>
