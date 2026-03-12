<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>AutoSphere | Buy & Sell Cars</title>

<style>
body {
	margin: 0;
	font-family: Arial;
	background: #f4f6fb;
}

/* HEADER */
.header {
	display: flex;
	align-items: center;
	padding: 15px 40px;
	background: white;
	border-bottom: 1px solid #ddd;
}

.logo {
	font-size: 26px;
	font-weight: bold;
	color: #6a1b9a;
}

.city-select {
	padding: 8px 16px;
	border-radius: 22px;
	border: 1px solid #d1c4e9;
	background: #f3e5f5;
	margin: 0 20px;
}

.search-bar {
	display: flex;
	align-items: center;
	background: #f3e5f5;
	padding: 8px 14px;
	border-radius: 25px;
	width: 320px;
}

.search-bar input {
	border: none;
	background: transparent;
	outline: none;
	width: 100%;
}

.menu {
	margin-left: auto;
}

.menu a {
	margin-left: 18px;
	text-decoration: none;
	color: #333;
}

.menu a:hover {
	color: #6a1b9a;
}

/* HERO */
.hero {
	padding: 40px;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
	text-align: center;
}

.hero h1 {
	color: #4a148c;
}

.section h2 {
	color: #4a148c;
}

.how-section h2 {
	color: #4a148c;
}

.brand-section {
	color: #4a148c;
}

/* SLIDER */
.slider-container {
	position: relative;
	overflow: hidden;
	margin-top: 30px;
}

.slider {
	display: flex;
	transition: 0.5s;
}

.slider img {
	width: 300px;
	height: 200px;
	margin-right: 15px;
	border-radius: 10px;
	object-fit: cover;
}

.arrow {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	background: #6a1b9a;
	color: white;
	border: none;
	font-size: 20px;
	padding: 10px 15px;
	cursor: pointer;
	border-radius: 50%;
}

.left {
	left: 10px;
}

.right {
	right: 10px;
}

/* BUTTON */
.sell-btn {
	padding: 12px 25px;
	background: #e91e63;
	color: white;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	margin-top: 20px;
}

/* BENEFITS */
.section {
	padding: 50px;
	text-align: center;
	background: white;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.cards {
	display: flex;
	justify-content: center;
	margin-top: 25px;
	flex-wrap: wrap;
}

.card {
	width: 200px;
	margin: 10px;
	padding: 15px;
	background: #fafafa;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
	border-radius: 10px;
}

.card img {
	width: 100%;
	height: 120px;
	object-fit: cover;
	border-radius: 8px;
}

/* HOW IT WORKS */
.how-section {
	background: #f7f7f7;
	padding: 60px 20px;
	text-align: center;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.how-cards {
	display: flex;
	justify-content: center;
	gap: 60px;
	flex-wrap: wrap;
	margin-top: 40px;
}

.how-card {
	width: 220px;
}

.how-card img {
	width: 140px;
	margin-bottom: 10px;
}

.how-btn {
	margin-top: 30px;
	padding: 12px 30px;
	background: #6a1b9a;
	color: white;
	border: none;
	border-radius: 25px;
	cursor: pointer;
}

/* POPULAR BRANDS */
.brand-section {
	padding: 60px;
	text-align: center;
	background: #f4f6fb;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.brand-grid {
	display: grid;
	grid-template-columns: repeat(6, 1fr);
	gap: 20px;
	margin-top: 40px;
}

.brand-card {
	background: white;
	padding: 20px;
	border-radius: 15px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.brand-card img {
	width: 60px;
	margin-bottom: 10px;
}

/* FOOTER */
.footer {
	background: #3b005a;
	color: white;
	padding: 60px;
}

.footer-container {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

.footer-col {
	width: 220px;
}

.footer-col h3 {
	margin-bottom: 15px;
}

.footer-col p {
	font-size: 14px;
	line-height: 22px;
	color: #ddd;
}

.footer-col a {
	display: block;
	color: #ddd;
	text-decoration: none;
	margin-bottom: 8px;
	font-size: 14px;
}

.footer-bottom {
	margin-top: 30px;
	text-align: center;
	color: #ccc;
	font-size: 14px;
}
</style>
</head>

<body>

	<!-- HEADER -->

	<div class="header">
		<div class="logo">AutoSphere</div>

		<input type="text" class="city-select" placeholder="Select City">

		<div class="search-bar">
			<input type="text" placeholder="Search cars by brand or model">
		</div>

		<div class="menu">
			<a href="CustomerCarList">List Car</a> 
			<a href="#">Car Brand</a> 
			<a href="#">Buy Car</a>
		 	<a href="#">Sell Car</a> 
		 	<a href="#">Login</a>
			<a href="#">Register</a>
		</div>
	</div>

	<!-- HERO -->

	<div class="hero">

		<h1>Cars you’ll love to buy</h1>
		<p>Verified used cars with full inspection</p>

		<div class="slider-container">

			<button class="arrow left" onclick="slideLeft()">❮</button>

			<!-- <div class="slider" id="slider"> -->

				<!-- <img
					src="https://tse2.mm.bing.net/th/id/OIP.ol3_UawwhWz5LhXFWAdoNgHaE8">
				<img
					src="https://tse3.mm.bing.net/th/id/OIP.k83Uo4eIEvIwprOFSEAAFAHaEo">
				<img
					src="https://tse2.mm.bing.net/th/id/OIP.vpDq_k4ERgsBgSBr60_YPwHaE6">
				<img
					src="https://images.carexpert.com.au/resize/3000/-/app/uploads/2024/10/Mahindra-XUV700-Black-Edition_HERO-3x2-1.jpg">
				<img
					src="https://autotest.com.ar/wp-content/uploads/2023/02/NUEVO-VOLKSWAGEN-VIRTUS-FRENTE-1024x631.jpg">
				<img
					src="https://www.motortrend.com/uploads/2022/11/2024-audi-q8-sportback-front-three-quarter-motion2.jpg">
				<img
					src="https://tse3.mm.bing.net/th/id/OIP.gMp3sYxs2MI7nHeTfldObAHaDw?pid=Api&P=0&h=220">
				<img
					src="https://tse2.mm.bing.net/th/id/OIP.3kw2cUmULlG4eeMuWgSVpQHaEK?pid=Api&P=0&h=220">
				<img
					src="https://tse3.mm.bing.net/th/id/OIP.n6S8RW6843N_fi6DloHTgQHaDu?pid=Api&P=0&h=220">
				<img
					src="https://tse2.mm.bing.net/th/id/OIP.sU50XnjaVMAl8jUzpQMjYQHaE8?pid=Api&P=0&h=220">
 -->

				<div class="slider" id="slider">

					<c:forEach var="img" items="${image}">
						<img src="${img}">
					</c:forEach>

				</div>


			<!-- </div>-->

			<button class="arrow right" onclick="slideRight()">❯</button>

		</div>

		<button class="sell-btn">Sell My Car</button>

	</div>

	<!-- BENEFITS -->

	<div class="section">

		<h2>AutoSphere Assured Benefits</h2>

		<div class="cards">

			<div class="card">
				<img
					src="https://tse2.mm.bing.net/th/id/OIP.Dt_cmV3c7iAiI9hH3a_-oQHaHa?pid=Api&P=0&h=220">
				✔ 200+ Quality Checks
			</div>

			<div class="card">
				<img
					src="https://tse2.mm.bing.net/th/id/OIP.dLwwkw6ARI0Jm1Y6LMvgXwHaFL?pid=Api&P=0&h=220">
				✔ 7 Days Trial
			</div>

			<div class="card">
				<img
					src="https://tse4.mm.bing.net/th/id/OIP.2-oHKJ06_H3EnJgGQQKTiQHaE8?pid=Api&P=0&h=220">
				✔ 1 Year Warranty
			</div>

			<div class="card">
				<img
					src="https://tse3.mm.bing.net/th/id/OIP.ApW2_1cwNgxi_flgt4ZQngHaEl?pid=Api&P=0&h=220">
				✔ Fixed Price
			</div>

		</div>

	</div>

	<!-- HOW AUTOSPHERE WORKS -->

	<div class="how-section">

		<h2>How AutoSphere Works</h2>
		<p>You won’t just love our cars, you’ll love the way you buy them.</p>

		<div class="how-cards">

			<div class="how-card">
				<img src="https://cdn-icons-png.flaticon.com/512/854/854878.png">
				<h3>Choose your car</h3>
			</div>

			<div class="how-card">
				<img
					src="https://tse3.mm.bing.net/th/id/OIP.3I6DIZqr146CnNMUkrljrQHaE8?pid=Api&P=0&h=220">
				<h3>Book test drive</h3>
			</div>

			<div class="how-card">
				<img
					src="https://tse2.mm.bing.net/th/id/OIP.TinBeamEG8ni7EGH1fS6NAHaHa?pid=Api&P=0&h=220">
				<h3>Online payment</h3>
			</div>

		</div>

		<button class="how-btn">Watch how it works ▶</button>

	</div>

	<!-- POPULAR BRANDS -->

	<div class="brand-section">

		<h2>Explore Popular Brands</h2>

		<div class="brand-grid">

			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/hyundai.png">
				<p>Hyundai</p>
			</div>
			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/suzuki.png">
				<p>Maruti</p>
			</div>
			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/honda.png">
				<p>Honda</p>
			</div>
			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/tata.png">
				<p>Tata</p>
			</div>
			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/ford.png">
				<p>Ford</p>
			</div>
			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/renault.png">
				<p>Renault</p>
			</div>

			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/volkswagen.png">
				<p>Volkswagen</p>
			</div>
			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/kia.png">
				<p>Kia</p>
			</div>
			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/skoda.png">
				<p>Skoda</p>
			</div>
			<div class="brand-card">
				<img src="https://img.icons8.com/color/96/nissan.png">
				<p>Datsun</p>
			</div>

		</div>

	</div>

	<!-- FOOTER -->

	<div class="footer">

		<div class="footer-container">

			<div class="footer-col">
				<h3>AutoSphere</h3>
				<p>AutoSphere is the easiest way to buy and sell used cars
					online with verified inspection and doorstep delivery.</p>
			</div>

			<div class="footer-col">
				<h3>Company</h3>
				<a href="#">About</a> <a href="#">Careers</a> <a href="#">Blog</a> <a
					href="#">Contact</a>
			</div>

			<div class="footer-col">
				<h3>Services</h3>
				<a href="#">Buy Car</a> <a href="#">Sell Car</a> <a href="#">Car
					Loan</a> <a href="#">Insurance</a>
			</div>

			<div class="footer-col">
				<h3>Support</h3>
				<a href="#">FAQ</a> <a href="#">Terms</a> <a href="#">Privacy</a>
			</div>

		</div>

		<div class="footer-bottom">© 2026 AutoSphere | MCA Sem 4 Project
		</div>

	</div>

	<script>
		let scroll = 0;
		const slider = document.getElementById("slider");
		const imageWidth = 315;

		const images = slider.querySelectorAll("img");
		const totalImages = images.length;

		function slideLeft() {
			scroll += imageWidth;

			if (scroll > 0) {
				scroll = -(imageWidth * (totalImages - 1));
			}

			slider.style.transform = "translateX(" + scroll + "px)";
		}

		function slideRight() {
			scroll -= imageWidth;

			if (Math.abs(scroll) >= imageWidth * totalImages) {
				scroll = 0;
			}

			slider.style.transform = "translateX(" + scroll + "px)";
		}

		setInterval(function() {
			slideRight();
		}, 3000);
	</script>

</body>
</html>







<%-- <%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>AutoSphere | Buy & Sell Cars</title>

<style>

body{
margin:0;
font-family:Arial;
background:#f4f6fb;
}

/* HEADER */

.header{
display:flex;
align-items:center;
padding:15px 40px;
background:white;
border-bottom:1px solid #ddd;
}

.logo{
font-size:26px;
font-weight:bold;
color:#6a1b9a;
}

.city-select{
padding:8px 16px;
border-radius:22px;
border:1px solid #d1c4e9;
background:#f3e5f5;
margin:0 20px;
}

.search-bar{
display:flex;
align-items:center;
background:#f3e5f5;
padding:8px 14px;
border-radius:25px;
width:320px;
}

.search-bar input{
border:none;
background:transparent;
outline:none;
width:100%;
}

.menu{
margin-left:auto;
}

.menu a{
margin-left:18px;
text-decoration:none;
color:#333;
}

.menu a:hover{
color:#6a1b9a;
}

/* HERO */

.hero{
padding:40px;
background:linear-gradient(135deg,#ede7f6,#f5f5f5);
text-align:center;
}

.hero h1{
color:#4a148c;
}

/* SLIDER */

.slider-container{
position:relative;
overflow:hidden;
margin-top:30px;
}

.slider-container::-webkit-scrollbar{
height:8px;
}

.slider-container::-webkit-scrollbar-thumb{
background:#6a1b9a;
border-radius:10px;
}
.slider{
display:flex;
transition:0.5s;
}

.slider img{
width:300px;
height:200px;
margin-right:15px;
border-radius:10px;
object-fit:cover;
}

/* ARROWS */

.arrow{
position:absolute;
top:50%;
transform:translateY(-50%);
background:#6a1b9a;
color:white;
border:none;
font-size:20px;
padding:10px 15px;
cursor:pointer;
border-radius:50%;
}

.left{
left:10px;
}

.right{
right:10px;
}

/* BUTTON */

.sell-btn{
padding:12px 25px;
background:#e91e63;
color:white;
border:none;
border-radius:6px;
cursor:pointer;
margin-top:20px;
}

/* BENEFITS */

.section{
padding:40px;
text-align:center;
background:white;
}

.cards{
display:flex;
justify-content:center;
margin-top:25px;
}

.card{
width:200px;
margin:10px;
padding:15px;
background:#fafafa;
box-shadow:0 4px 12px rgba(0,0,0,0.08);
border-radius:10px;
}

.card img{
width:100%;
height:120px;
object-fit:cover;
border-radius:8px;
}

.footer{
background:#6a1b9a;
color:white;
text-align:center;
padding:15px;
}

</style>
</head>

<body>

<!-- HEADER -->

<div class="header">

<div class="logo">AutoSphere</div>

<input type="text" class="city-select" placeholder="Select City">

<div class="search-bar">
<input type="text" placeholder="Search cars by brand or model">
</div>

<div class="menu">
<a href="#">Car Brand</a>
<a href="#">Buy Car</a>
<a href="#">Sell Car</a>
<a href="#">Login</a>
<a href="#">Register</a>
</div>

</div>


<!-- HERO -->

<div class="hero">

<h1>Cars you’ll love to buy</h1>
<p>Verified used cars with full inspection</p>

<div class="slider-container">

<button class="arrow left" onclick="slideLeft()">❮</button>

<div class="slider" id="slider">

<img src="https://tse2.mm.bing.net/th/id/OIP.ol3_UawwhWz5LhXFWAdoNgHaE8?pid=Api&P=0&h=220">
<img src="https://tse3.mm.bing.net/th/id/OIP.k83Uo4eIEvIwprOFSEAAFAHaEo?pid=Api&P=0&h=220">
<img src="https://thecadillachotel.com/wp-content/uploads/2025/09/maruti-suzuki-victoris-2-1536x8641-1-1024x576.jpg">
<img src="https://tse2.mm.bing.net/th/id/OIP.vpDq_k4ERgsBgSBr60_YPwHaE6?pid=Api&P=0&h=220">
<img src="https://images.carexpert.com.au/resize/3000/-/app/uploads/2024/10/Mahindra-XUV700-Black-Edition_HERO-3x2-1.jpg">
<img src="https://autotest.com.ar/wp-content/uploads/2023/02/NUEVO-VOLKSWAGEN-VIRTUS-FRENTE-1024x631.jpg">
<img src="http://vehiclesinformation.com/wp-content/uploads/2025/05/2026-toyota-camry.webp">
<img src="https://www.motortrend.com/uploads/2022/11/2024-audi-q8-sportback-front-three-quarter-motion2.jpg">
<img src="https://tse3.mm.bing.net/th/id/OIP.sUXW2iSdGafANv3zEMrz9wHaEK?pid=Api&P=0&h=220">
<img src="https://tse4.mm.bing.net/th/id/OIP.NPGVli4l1Ehfhf63-aG6ZwHaE0?pid=Api&P=0&h=220">

</div>

<button class="arrow right" onclick="slideRight()">❯</button>


</div>

<button class="sell-btn">Sell My Car</button>

</div>


<!-- BENEFITS -->

<div class="section">

<h2>AutoSphere Assured Benefits</h2>

<div class="cards">

<div class="card">
<img src="https://tse2.mm.bing.net/th/id/OIP.Dt_cmV3c7iAiI9hH3a_-oQHaHa?pid=Api&P=0&h=220">
✔ 200+ Quality Checks
</div>

<div class="card">
<img src="https://tse2.mm.bing.net/th/id/OIP.dLwwkw6ARI0Jm1Y6LMvgXwHaFL?pid=Api&P=0&h=220">
✔ 7 Days Trial
</div>

<div class="card">
<img src="https://tse4.mm.bing.net/th/id/OIP.2-oHKJ06_H3EnJgGQQKTiQHaE8?pid=Api&P=0&h=220">
✔ 1 Year Warranty
</div>

<div class="card">
<img src="https://tse3.mm.bing.net/th/id/OIP.ApW2_1cwNgxi_flgt4ZQngHaEl?pid=Api&P=0&h=220">
✔ Fixed Price
</div>

</div>

</div>


<div class="footer">
© 2026 AutoSphere | MCA Sem 4 Project
</div>


<!-- JAVASCRIPT -->

<script>

let scroll = 0;

const slider = document.getElementById("slider");
const totalImages = slider.children.length;

const imageWidth = 315; 
const visibleImages = 3;

const maxScroll = -(imageWidth * (totalImages - visibleImages));

function slideLeft(){

scroll += imageWidth;

if(scroll > 0){
scroll = maxScroll;
}

slider.style.transform = "translateX("+scroll+"px)";
}

function slideRight(){

scroll -= imageWidth;

if(scroll < maxScroll){
scroll = 0;
}

slider.style.transform = "translateX("+scroll+"px)";
}

/* AUTO SLIDE */

setInterval(()=>{

scroll -= imageWidth;

if(scroll < maxScroll){
scroll = 0;
}

slider.style.transform = "translateX("+scroll+"px)";

},3000);

</script>

</body>
</html>
 --%>


















<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>AutoSphere | Buy & Sell Cars</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f6fb;
        }

        /* ===== HEADER ===== */
        .header {
            display: flex;
            align-items: center;
            padding: 15px 40px;
            background: white;
            border-bottom: 1px solid #ddd;
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            color: #6a1b9a;
        }

        /* ===== CITY SELECT ===== */
        .city-select {
            padding: 8px 16px;
            border-radius: 22px;
            border: 1px solid #d1c4e9;
            background: #f3e5f5;
            color: #4a148c;
            font-size: 14px;
            font-weight: 500;
            outline: none;
            cursor: pointer;
            margin: 0 20px;
            transition: all 0.3s ease;
        }

        .city-select:hover {
            background: #ede7f6;
        }

        .city-select:focus {
            background: #ffffff;
            border-color: #6a1b9a;
            box-shadow: 0 0 0 3px rgba(106,27,154,0.15);
        }

        /* ===== SEARCH BAR ===== */
        .search-bar {
            display: flex;
            align-items: center;
            background: #f3e5f5;
            padding: 8px 14px;
            border-radius: 25px;
            width: 320px;
        }

        .search-icon {
            font-size: 16px;
            color: #6a1b9a;
            margin-right: 8px;
        }

        .search-bar input {
            border: none;
            outline: none;
            background: transparent;
            width: 100%;
            font-size: 14px;
        }

        /* ===== MENU ===== */
        .menu {
            margin-left: auto;
        }

        .menu a {
            margin-left: 18px;
            text-decoration: none;
            color: #333;
            font-weight: 500;
        }

        .menu a:hover {
            color: #6a1b9a;
        }

        /* ===== HERO ===== */
        .hero {
            display: flex;
            padding: 40px;
            background: linear-gradient(135deg, #ede7f6, #f5f5f5);
        }

        .hero-box {
            width: 50%;
            padding: 30px;
        }

        .hero-box h1 {
            font-size: 28px;
            color: #4a148c;
        }

        .hero-box p {
            color: #555;
        }

        .hero-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            border-radius: 10px;
            margin-top: 15px;
        }

        .sell-btn {
            padding: 12px 25px;
            background: #e91e63;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        /* ===== SECTION ===== */
        .section {
            padding: 40px;
            text-align: center;
            background: white;
        }

        .cards {
            display: flex;
            justify-content: center;
            margin-top: 25px;
        }

        .card {
            width: 200px;
            margin: 10px;
            padding: 15px;
            background: #fafafa;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
            border-radius: 10px;
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card img {
            width: 100%;
            height: 120px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        /* ===== FOOTER ===== */
        .footer {
            background: #6a1b9a;
            color: white;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>

<body>

<!-- ===== HEADER ===== -->
<div class="header">

	
    <div class="logo">AutoSphere</div>  

    <!-- City Dropdown -->
    <!-- City Auto Suggest -->
<div style="position:relative; margin:0 20px;">
    <input type="text"
           id="cityInput"
           class="city-select"
           placeholder="Select City">

    <div id="citySuggestions"
         style="
            position:absolute;
            top:42px;
            left:0;
            width:100%;
            background:white;
            border-radius:8px;
            box-shadow:0 6px 16px rgba(0,0,0,0.15);
            display:none;
            z-index:999;">
    </div>
</div>


    <div class="search-bar" style="position:relative;">
    <span class="search-icon">🔍</span>
    <input type="text" id="searchInput" placeholder="Search cars by brand or model">

    <div id="searchSuggestions"
         style="
            position:absolute;
            top:42px;
            left:0;
            width:100%;
            background:white;
            border-radius:8px;
            box-shadow:0 6px 16px rgba(0,0,0,0.15);
            display:none;
            z-index:999;">
    </div>
</div>


    <!-- Menu -->
    <div class="menu">
        <a href="listbrand">Car Brand</a>
        <a href="carlist">Buy Car</a>
        <a href="#">Sell Car</a>
        <a href="Login">Login</a>
        <a href="#">Register</a>
    </div>

</div>
<script>
const carSuggestions = [
    "Maruti Swift","Maruti Baleno","Maruti Brezza",
    "Hyundai i10","Hyundai i20","Hyundai Creta",
    "Tata Nexon","Tata Punch","Tata Harrier",
    "Mahindra Thar","Mahindra Scorpio","Mahindra XUV700",
    "Kia Seltos","Kia Sonet",
    "Toyota Fortuner","Toyota Innova",
    "Honda City","Honda Amaze",
    "Volkswagen Virtus","Skoda Slavia",
    "MG Hector","Renault Kiger","Jeep Compass"
];

const searchInput = document.getElementById("searchInput");
const searchBox = document.getElementById("searchSuggestions");

searchInput.addEventListener("input", function () {
    const value = this.value.toLowerCase();
    searchBox.innerHTML = "";

    if (value === "") {
        searchBox.style.display = "none";
        return;
    }

    const filtered = carSuggestions.filter(item =>
        item.toLowerCase().includes(value)
    );

    filtered.forEach(item => {
        const div = document.createElement("div");
        div.textContent = item;
        div.style.padding = "10px 14px";
        div.style.cursor = "pointer";

        div.onclick = () => {
            searchInput.value = item;
            searchBox.style.display = "none";
        };

        div.onmouseover = () => div.style.background = "#ede7f6";
        div.onmouseout  = () => div.style.background = "white";

        searchBox.appendChild(div);
    });

    searchBox.style.display = filtered.length ? "block" : "none";
});

document.addEventListener("click", function (e) {
    if (!e.target.closest("#searchInput")) {
        searchBox.style.display = "none";
    }
});
</script>

<script>
const gujaratCities = [
    "Ahmedabad","Amreli","Anand","Aravalli","Banaskantha","Bharuch",
    "Bhavnagar","Botad","Chhota Udaipur","Dahod","Dang","Devbhoomi Dwarka",
    "Gandhinagar","Gir Somnath","Jamnagar","Junagadh","Kachchh","Kheda",
    "Mahisagar","Mehsana","Morbi","Narmada","Navsari","Panchmahal",
    "Patan","Porbandar","Rajkot","Sabarkantha","Surat","Surendranagar",
    "Tapi","Vadodara","Valsad","Vapi","Veraval","Vyara","Godhra",
    "Himmatnagar","Kalol","Nadiad","Petlad","Sanand","Dholka","Unjha",
    "Visnagar","Bhuj","Mandvi","Anjar","Dwarka","Okha","baroda"
];

const cityInput = document.getElementById("cityInput");
const suggestionBox = document.getElementById("citySuggestions");

cityInput.addEventListener("input", function () {
    const value = this.value.toLowerCase();
    suggestionBox.innerHTML = "";

    if (value === "") {
        suggestionBox.style.display = "none";
        return;
    }

    const filtered = gujaratCities.filter(city =>
        city.toLowerCase().includes(value)
    );

    filtered.forEach(city => {
        const div = document.createElement("div");
        div.textContent = city;
        div.style.padding = "10px 14px";
        div.style.cursor = "pointer";

        div.onclick = () => {
            cityInput.value = city;
            suggestionBox.style.display = "none";
        };

        div.onmouseover = () => div.style.background = "#ede7f6";
        div.onmouseout  = () => div.style.background = "white";

        suggestionBox.appendChild(div);
    });

    suggestionBox.style.display = filtered.length ? "block" : "none";
});

document.addEventListener("click", function (e) {
    if (!e.target.closest("#cityInput")) {
        suggestionBox.style.display = "none";
    }
});
</script>

<!-- ===== HERO ===== -->
<div class="hero">

    <div class="hero-box">
        <h1>Cars you’ll love to buy</h1>
        <p>Verified used cars with full inspection</p>
        <img src="https://source.unsplash.com/600x400/?car,showroom" class="hero-img">
    </div>

    <div class="hero-box">
        <h1>Sell your car for the best price</h1>
        <p>Instant valuation & quick payment</p>
        <img src="https://source.unsplash.com/600x400/?car,selling" class="hero-img">
        <br><br>
        <button class="sell-btn">Sell My Car</button>
    </div>

</div>

<!-- ===== BENEFITS ===== -->
<div class="section">
    <h2>AutoSphere Assured Benefits</h2>

    <div class="cards">
        <div class="card">
            <img src="https://source.unsplash.com/400x300/?car,inspection">
            ✔ 200+ Quality Checks
        </div>

        <div class="card">
            <img src="https://source.unsplash.com/400x300/?car,test-drive">
            ✔ 7 Days Trial
        </div>

        <div class="card">
            <img src="https://source.unsplash.com/400x300/?car,warranty">
            ✔ 1 Year Warranty
        </div>

        <div class="card">
            <img src="https://source.unsplash.com/400x300/?car,price">
            ✔ Fixed Price
        </div>
    </div>
</div>

<!-- ===== FOOTER ===== -->
<div class="footer">
    © 2026 AutoSphere | MCA Sem 4 Project
</div>

</body>
</html>
 --%>