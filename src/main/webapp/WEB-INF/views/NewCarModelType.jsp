<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>New Car Model</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>

/* Background */
body {
	background: #f4f6fb;
}

/* Center container */
.form-container {
	max-width: 650px;
	margin: 40px auto;
}

/* Card */
.form-card {
	background: #fff;
	padding: 25px;
	border-radius: 12px;
	box-shadow: 0 4px 20px rgba(0,0,0,0.1);
}

/* Title box */
.title-box {
	background: #f1f1f1;
	border-radius: 12px;
	padding: 15px;
	text-align: center;
	margin-bottom: 20px;
}

.title-box h3 {
	margin: 0;
	color: #4e4bb5;
	font-weight: 600;
}

/* Inputs */
.form-control {
	height: 40px;
	font-size: 14px;
}

/* Purple button */
.btn-purple {
	background-color: #4e4bb5;
	color: #fff;
	border: none;
	height: 45px;
	border-radius: 12px;
	width: 100%;
}

.btn-purple:hover {
	background-color: #3f3ca0;
}

/* Cancel button */
.btn-cancel {
	background-color: #6c757d;
	color: #fff;
	border: none;
	height: 45px;
	border-radius: 12px;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	text-decoration: none;
}

.btn-cancel:hover {
	background-color: #5a6268;
	color: #fff;
}

/* Button spacing */
.button-group {
	display: grid;
	gap: 10px;
	margin-top: 15px;
}

</style>

</head>

<body>

<div class="container-scroller">

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<div class="container-fluid page-body-wrapper">

		<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

		<div class="main-panel">
			<div class="content-wrapper">

				<h3 class="mb-3">Welcome ${sessionScope.user.firstName}</h3>

				<!-- Compact Form -->
				<div class="form-container">
					<div class="form-card">

						<!-- Title -->
						<div class="title-box">
							<h3>New Car Model</h3>
						</div>

						<form action="savecartype" method="post">


						<!-- Brand -->
<div class="mb-3">
    <label>Select Brand</label>
    <select name="brandId" class="form-control" required>
        <c:forEach items="${allBrand}" var="b">
            <option value="${b.brandId}">
                ${b.brandName}
            </option>
        </c:forEach>
    </select>
</div>
						
							<!-- Body Type -->
							<div class="mb-3">
								<label>Body Type</label>
								<input type="text"
									name="bodyType"
									class="form-control"
									placeholder="Enter body type (e.g., SUV)"
									required>
							</div>

							<!-- Model Name -->
							<div class="mb-3">
								<label>Model Name</label>
								<input type="text"
									name="modelName"
									class="form-control"
									placeholder="Enter model name (optional)">
							</div>

							<!-- Launch Year -->
							<div class="mb-3">
								<label>Launch Year</label>
								<input type="date"
									name="launchYear"
									class="form-control">
							</div>

							<!-- Buttons -->
							<div class="button-group">

								<button type="submit" class="btn-purple">
									Save Car Model Type
								</button>

								<a href="admin-dashboard" class="btn-cancel">
									Cancel
								</a>

							</div>

						</form>

					</div>
				</div>

			</div>

			<jsp:include page="AdminFooter.jsp"></jsp:include>

		</div>
	</div>
</div>

</body>
</html>