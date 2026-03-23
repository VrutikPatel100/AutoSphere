<%@ page contentType="text/html;charset=UTF-8"%>

<!-- HEADER -->
<div class="header">

    <a href="customer-dashboard" class="logo">
        <div class="logo-icon">
            <span>A</span>
        </div>
        AutoSphere
    </a>

    <input type="text" class="city-select" placeholder="Select City">

    <div class="search-bar">
        <input type="text" id="searchInput"
               placeholder="Search cars by brand or model"
               onkeyup="searchCars()">
    </div>

    <div class="menu">
        <a href="CustomerCarList">List Car</a>
        <a href="#brands">Car Brand</a>
        <a href="wishlist">My Cart</a>
        <a href="#">Buy Car</a>
        <a href="#">Sell Car</a>
        <a href="login">Login</a>
        <a href="#">Register</a>
    </div>

</div>
