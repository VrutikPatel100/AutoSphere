<%@ page contentType="text/html;charset=UTF-8"%>

<!-- HEADER -->
<div class="header">

    <a href="customer-dashboard" class="logo">
        <div class="logo-icon">
            <span>A</span>
        </div>
        AutoSphere
    </a>

   <form action="searchCity" method="post" class="search-bar">
			<input type="text" name="city" placeholder="Select City" required>
			<input type="submit" value="Search">
		</form>

		<!-- CAR SEARCH -->
		<form action="searchCar" method="post" class="search-bar">
			<input type="text" name="car" placeholder="Search cars..." required>
			<input type="submit" value="Search">
		</form>

    <div class="menu">
        <a href="CustomerCarList">List Car</a>
        <a href="#brands">Car Brand</a>
        <a href="wishlist">My Cart</a>
        <a href="login">Login</a>
        <a href="#">Register</a>
    </div>

</div>
