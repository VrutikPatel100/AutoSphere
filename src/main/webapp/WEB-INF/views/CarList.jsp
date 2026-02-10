<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Spinny – Used Cars</title>

<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<style>
body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    background: #f5f6f7;
}

/* HEADER LOGO */
.header-logo {
    color: #7a1fa2;
    font-weight: bold;
    font-size: 26px;
}

/* Price badge */
.price-badge {
    color: #7a1fa2;
    font-weight: bold;
}

/* Card images */
.card img {
    border-radius: 10px;
}

/* Banner */
.banner {
    color: #fff;
    padding: 25px;
    border-radius: 12px;
    font-weight: bold;
    text-align: center;
    font-size: 1.2rem;
    background: linear-gradient(135deg, #6a1b9a, #8e24aa);
}

/* Filter panel */
.filter {
    background: #fff;
    padding: 15px;
    border-radius: 10px;
}

/* Footer */
.footer {
    background: #2c003e;
    color: #fff;
    text-align: center;
    padding: 15px;
    margin-top: 30px;
}
</style>
</head>
<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm px-4 py-2">
  <div class="container-fluid">
    <a class="navbar-brand header-logo" href="#">Spinny</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" 
            aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarContent">
      <!-- Menu Links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item"><a class="nav-link" href="#">Buy Car</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Sell Car</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Service</a></li>
      </ul>

      <!-- Location, Search, Shortlisted -->
      <form class="d-flex align-items-center me-3">
        <!-- Location -->
        <div class="input-group me-2">
          <span class="input-group-text bg-white border-end-0"><i class="bi bi-geo-alt-fill"></i></span>
          <select class="form-select border-start-0">
            <option selected>Mumbai</option>
            <option>Delhi</option>
            <option>Bangalore</option>
            <option>Chennai</option>
          </select>
        </div>

        <!-- Search -->
        <div class="input-group me-2">
          <input type="text" class="form-control" placeholder="Search cars, brands..." aria-label="Search">
          <button class="btn btn-primary" type="button"><i class="bi bi-search"></i></button>
        </div>

        <!-- Shortlisted/Favorites -->
        <button class="btn btn-outline-primary position-relative">
          <i class="bi bi-heart-fill"></i>
          <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
            3
          </span>
        </button>
      </form>

      <!-- Call info -->
      <span class="fw-bold d-none d-lg-block">Call: 727-727-7275</span>
    </div>
  </div>
</nav>

<!-- MAIN CONTENT -->
<div class="container my-4">
  <div class="row">

    <!-- LEFT FILTER -->
    <div class="col-lg-3 mb-4">
      <div class="filter">

        <h5 class="mb-2">Price Range</h5>
        <input type="range" class="form-range mb-2" id="price" min="50000" max="7000000" step="50000" value="7000000" oninput="applyFilters()">
        <div class="d-flex justify-content-between">
            <small>Min: ₹0</small>
            <small>Max: ₹<b id="priceVal">70.00 Lakh</b></small>
        </div>
        <hr>

        <h5 class="mb-2">Brands</h5>
        <div class="form-check"><input class="form-check-input brand" type="checkbox" value="Maruti" onchange="applyFilters()" id="brandMaruti"><label class="form-check-label" for="brandMaruti">Maruti</label></div>
        <div class="form-check"><input class="form-check-input brand" type="checkbox" value="Hyundai" onchange="applyFilters()" id="brandHyundai"><label class="form-check-label" for="brandHyundai">Hyundai</label></div>
        <div class="form-check"><input class="form-check-input brand" type="checkbox" value="Honda" onchange="applyFilters()" id="brandHonda"><label class="form-check-label" for="brandHonda">Honda</label></div>
        <div class="form-check"><input class="form-check-input brand" type="checkbox" value="Tata" onchange="applyFilters()" id="brandTata"><label class="form-check-label" for="brandTata">Tata</label></div>
        <div class="form-check"><input class="form-check-input brand" type="checkbox" value="Ford" onchange="applyFilters()" id="brandFord"><label class="form-check-label" for="brandFord">Ford</label></div>
        <hr>

        <h5 class="mb-2">Year</h5>
        <div class="form-check"><input class="form-check-input" type="radio" name="year" value="2024" onchange="applyFilters()" id="year2024"><label class="form-check-label" for="year2024">2024 & above</label></div>
        <div class="form-check"><input class="form-check-input" type="radio" name="year" value="2020" onchange="applyFilters()" id="year2020"><label class="form-check-label" for="year2020">2020 & above</label></div>
        <div class="form-check"><input class="form-check-input" type="radio" name="year" value="2016" onchange="applyFilters()" id="year2016"><label class="form-check-label" for="year2016">2016 & above</label></div>
        <div class="form-check"><input class="form-check-input" type="radio" name="year" value="" onchange="applyFilters()" checked id="yearAll"><label class="form-check-label" for="yearAll">All</label></div>
        <hr>

        <h5 class="mb-2">Fuel</h5>
        <div class="form-check"><input class="form-check-input" type="radio" name="fuel" value="Petrol" onchange="applyFilters()" id="fuelPetrol"><label class="form-check-label" for="fuelPetrol">Petrol</label></div>
        <div class="form-check"><input class="form-check-input" type="radio" name="fuel" value="Diesel" onchange="applyFilters()" id="fuelDiesel"><label class="form-check-label" for="fuelDiesel">Diesel</label></div>
        <div class="form-check"><input class="form-check-input" type="radio" name="fuel" value="" onchange="applyFilters()" checked id="fuelAll"><label class="form-check-label" for="fuelAll">All</label></div>
        <hr>

        <h5 class="mb-2">Transmission</h5>
        <div class="form-check"><input class="form-check-input trans" type="checkbox" value="Manual" onchange="applyFilters()" id="transManual"><label class="form-check-label" for="transManual">Manual</label></div>
        <div class="form-check"><input class="form-check-input trans" type="checkbox" value="Automatic" onchange="applyFilters()" id="transAuto"><label class="form-check-label" for="transAuto">Automatic</label></div>

      </div>
    </div>

    <!-- RIGHT CONTENT -->
    <div class="col-lg-9">

      <!-- Banners -->
      <div class="row mb-4 g-3">
        <div class="col-md-6"><div class="banner">3-year warranty<br>Good promise</div></div>
        <div class="col-md-6"><div class="banner">Best deals<br>Assured cars</div></div>
      </div>

      <!-- Car Grid -->
      <div class="row row-cols-1 row-cols-md-3 g-3" id="cars"></div>

    </div>
  </div>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2026 Spinny Clone | JSP Frontend Only
</div>

<!-- SCRIPTS -->
<script>
const cars = [
 {name:"2014 Honda City", brand:"Honda", year:2014, fuel:"Petrol", trans:"Manual", price:4.01,
  img:"https://images.unsplash.com/photo-1549924231-f129b911e442"},
 {name:"2022 Renault Kwid", brand:"Renault", year:2022, fuel:"Petrol", trans:"Automatic", price:4.57,
  img:"https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2"},
 {name:"2018 Maruti Ignis", brand:"Maruti", year:2018, fuel:"Petrol", trans:"Automatic", price:4.98,
  img:"https://images.unsplash.com/photo-1590362891991-f776e747a588"},
 {name:"2013 Ford Figo", brand:"Ford", year:2013, fuel:"Diesel", trans:"Manual", price:2.72,
  img:"https://images.unsplash.com/photo-1590362891991-f776e747a588"},
 {name:"2024 Tata Altroz", brand:"Tata", year:2024, fuel:"Petrol", trans:"Manual", price:7.05,
  img:"https://images.unsplash.com/photo-1621874073603-9bb3c7d24a68"},
 {name:"2015 VW Vento", brand:"Volkswagen", year:2015, fuel:"Petrol", trans:"Manual", price:5.58,
  img:"https://images.unsplash.com/photo-1617814065893-00757125f42f"}
];

function render(list){
    let html="";
    list.forEach(c=>{
        html+=`
        <div class="col">
          <div class="card shadow-sm h-100">
            <img src="${c.img}" class="card-img-top">
            <div class="card-body">
              <h5 class="card-title">${c.name}</h5>
              <p class="price-badge">₹ ${c.price} Lakh</p>
              <p class="card-text">${c.fuel} • ${c.trans}</p>
              <p class="card-text">Year: ${c.year}</p>
            </div>
          </div>
        </div>`;
    });
    document.getElementById("cars").innerHTML=html;
}

function applyFilters(){
    let maxPrice=document.getElementById("price").value;
    document.getElementById("priceVal").innerText=(maxPrice/100000).toFixed(2)+" Lakh";

    let brands=[...document.querySelectorAll(".brand:checked")].map(b=>b.value);
    let yearRadio=document.querySelector("input[name=year]:checked");
    let year=yearRadio?parseInt(yearRadio.value):0;
    let fuelRadio=document.querySelector("input[name=fuel]:checked");
    let fuel=fuelRadio?fuelRadio.value:"";
    let trans=[...document.querySelectorAll(".trans:checked")].map(t=>t.value);

    let filtered=cars.filter(c=>{
        return (c.price*100000<=maxPrice) &&
               (brands.length==0 || brands.includes(c.brand)) &&
               (year==0 || c.year>=year) &&
               (fuel=="" || c.fuel==fuel) &&
               (trans.length==0 || trans.includes(c.trans));
    });
    render(filtered);
}

window.onload=()=>render(cars);
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
