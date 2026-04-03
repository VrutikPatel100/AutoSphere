<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Car Not Found</title>

<style>
body {
    font-family: Arial;
    background: #f4f6fb;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.box {
    text-align: center;
    background: white;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

h2 {
    color: #e53935;
}

a {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 20px;
    background: #6a1b9a;
    color: white;
    text-decoration: none;
    border-radius: 6px;
}
</style>
</head>

<body>

<div class="box"> 

    <h2>🚫 Car Not Found</h2>
    <p>Sorry, the car you are looking for does not exist.</p> 

    <a href="customer-dashboard">Go Back Home</a>

</div>

</body>
</html>
