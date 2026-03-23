<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Features</title>
</head>
<body>

	<h2>Edit Car Features</h2>

	<form action="updateCarFeatures" method="post">

		<!-- Hidden ID -->
		<input type="hidden" name="featureId" value="${carFeature.featureId}" />

		<table border="1" cellpadding="10">

			<!-- Variant ID -->
			<tr>
				<td>Variant ID</td>
				<td><input type="number" name="variantId"
					value="${carFeature.variantId}"  /></td>
			</tr>

			<!-- Safety Features -->
			<tr>
				<td>Safety Features</td>
				<td><textarea name="safetyFeatures" rows="3" cols="40">
${carFeature.safetyFeatures}
                </textarea></td>
			</tr>

			<!-- Comfort Features -->
			<tr>
				<td>Comfort Features</td>
				<td><textarea name="comfortFeatures" rows="3" cols="40">
${carFeature.comfortFeatures}
                </textarea></td>
			</tr>

			<!-- Entertainment Features -->
			<tr>
				<td>Entertainment Features</td>
				<td><textarea name="entertainmentFeatures" rows="3" cols="40">
${carFeature.entertainmentFeatures}
                </textarea></td>
			</tr>

			<!-- Exterior Features -->
			<tr>
				<td>Exterior Features</td>
				<td><textarea name="exteriorFeatures" rows="3" cols="40">
${carFeature.exteriorFeatures}
                </textarea></td>
			</tr>

			<!-- Submit -->
			<tr>
				<td colspan="2" align="center">
					<button type="submit">Update Features</button>
				</td>
			</tr>

		</table>

	</form>

	<br>

	<a href="listCarFeatures">⬅ Back to List</a>

</body>
</html>

