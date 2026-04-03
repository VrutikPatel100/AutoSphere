<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Car Details</title>

<style>
body {
    font-family: Arial;
    background: #f4f6fb;
    margin: 0;
}

.container {
    width: 80%;
    margin: 40px auto;
    background: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

img {
    width: 100%;
    max-height: 400px;
    object-fit: cover;
    border-radius: 10px;
}

h2 {
    color: #4a148c;
}

.details {
    margin-top: 20px;
    line-height: 28px;
}

.price {
    font-size: 22px;
    font-weight: bold;
    color: #6a1b9a;
}

.back-btn {
    margin-top: 20px;
    display: inline-block;
    padding: 10px 20px;
    background: #6a1b9a;
    color: white;
    text-decoration: none;
    border-radius: 6px;
}
</style>
</head>

<body>

<div class="container">

    <h2>${car.modelName} ${car.variantName}</h2>

    <img src="${car.imageURL}" alt="Car Image">

    <div class="details">
        <p><b>Brand:</b> ${car.brandName}</p>
        <p><b>City:</b> ${car.city}</p>
        <p><b>Year:</b> ${car.year}</p>
        <p><b>KMs Driven:</b> ${car.kmsDriven}</p>
        <p><b>Ownership:</b> ${car.ownership}</p>

        <p class="price">₹ ${car.price}</p>
    </div>

    <a href="customer-dashboard" class="back-btn">⬅ Back</a>

</div>

</body>
</html>
 