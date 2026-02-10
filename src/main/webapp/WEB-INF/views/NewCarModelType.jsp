<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Car Model Type</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background-color: #f8f9fa;
    }
    .card {
        margin-top: 60px;
        border-radius: 12px;
    }
</style>
</head>

<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">
            <div class="card shadow">
                <div class="card-body p-4">
                    <h4 class="text-center mb-4">Add New Car Model Type</h4>

                    <form action="savecartype" method="post">

                        <!-- Body Type -->
                        <div class="mb-3">
                            <label class="form-label">Body Type</label>
                            <input type="text"
                                   name="bodyType"
                                   class="form-control"
                                   placeholder="Enter body type (e.g., SUV)"
                                   required>
                        </div>

                        <!-- Model Name (Optional) -->
                        <div class="mb-3">
                            <label class="form-label">Model Name</label>
                            <input type="text"
                                   name="modelName"
                                   class="form-control"
                                   placeholder="Enter model name (optional)">
                        </div>

                        <!-- Buttons -->
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary">
                                Save Car Model Type
                            </button>
                            <a href="admin-dashboard" class="btn btn-secondary">
                                Cancel
                            </a>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
