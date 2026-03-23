<%@ page contentType="text/html;charset=UTF-8"%>

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
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 28px;
	font-weight: 700;
	color: #4a148c;
	text-decoration: none;
}

.logo-icon {
	width: 40px;
	height: 40px;
	background: #ff4d6d;
	display: flex;
	align-items: center;
	justify-content: center;
	transform: rotate(45deg);
	border-radius: 10px;
}

.logo-icon span {
	color: white;
	font-size: 20px;
	font-weight: 700;
	transform: rotate(-45deg);
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

.left { left: 10px; }
.right { right: 10px; }

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
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.section h2 {
	color: #4a148c;
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

/* HOW WORKS */
.how-section {
	background: #f2f2f2;
	padding: 60px 20px;
	text-align: center;
}

.how-cards {
	display: flex;
	justify-content: center;
	gap: 80px;
	flex-wrap: wrap;
	margin-top: 40px;
}

.how-card {
	width: 220px;
}

.how-card img {
	width: 120px;
	margin-bottom: 10px;
}

.how-section h2 {
	color: #4a148c;
}

/* WATCH BUTTON */
.watch-area {
	margin-top: 40px;
}

.watch-btn {
	background: linear-gradient(90deg, #7b1fa2, #6a1b9a);
	color: white;
	border: none;
	padding: 16px 35px;
	font-size: 18px;
	border-radius: 14px;
	cursor: pointer;
	display: inline-flex;
	align-items: center;
	gap: 12px;
}

.play-icon {
	background: white;
	color: #6a1b9a;
	width: 28px;
	height: 28px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 50%;
	font-size: 14px;
}

.learn-more {
	margin-top: 15px;
	color: #6a1b9a;
	font-weight: 600;
	cursor: pointer;
}

/* BRANDS */
.brand-section {
	padding: 60px;
	text-align: center;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.brand-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
	gap: 25px;
	max-width: 1000px;
	margin: auto;
}

.brand-card {
	background: white;
	padding: 20px;
	border-radius: 15px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.brand-card:hover {
	transform: scale(1.08) translateY(-5px);
	background: linear-gradient(135deg, #f3e5f5, #d1c4e9);
	box-shadow: 0 12px 30px rgba(106, 27, 154, 0.5);
}

.brand-card img {
	width: 70px;
	margin-top: 10px;
	transition: transform 0.3s ease;
}

.brand-card:hover img {
	transform: scale(1.15);
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

/* RESPONSIVE */
@media (max-width:768px) {
	.search-bar { width: 200px; }
	.how-cards { gap: 40px; }
}

</style>
