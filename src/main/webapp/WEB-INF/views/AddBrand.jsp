<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Car Brand</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow-sm">
                <div class="card-header bg-purple text-white text-center">
                    <h4>Add New Car Brand</h4>
                </div>
                <div class="card-body">

                    <form action="savebrand" method="post">

                        <div class="mb-3">
                            <label for="brandName" class="form-label">Brand Name</label>
                            <input type="text" class="form-control" id="brandName" name="brandName"
                                   placeholder="Enter Car Brand Name" required>
                        </div>

                        <div class="mb-3">
                            <label for="logoUrl" class="form-label">Logo URL</label>
                            <input type="text" class="form-control" id="logoUrl" name="logoUrl"
                                   placeholder="Enter Logo URL (optional)">
                        </div>

                        <button type="submit" class="btn btn-primary w-100">Submit</button>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap 5 JS + Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
    .bg-purple {
        background-color: #6a1b9a !important;
    }
</style>

</body>
</html>
