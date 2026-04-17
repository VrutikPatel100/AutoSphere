<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>AutoSphere | Search Cars</title>
    
    <style>
        /* AutoSphere - Modern Car Marketplace Theme */
        @import url('https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;400;500;600;700;800&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            background: linear-gradient(135deg, #f5f7ff 0%, #eef2fa 100%);
            color: #1a1e2b;
            line-height: 1.5;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
            padding: 16px 40px;
            background: rgba(255, 255, 255, 0.96);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(106, 27, 154, 0.15);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.02);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .logo {
            font-size: 28px;
            font-weight: 800;
            letter-spacing: -0.5px;
            background: linear-gradient(135deg, #6a1b9a 0%, #9c27b0 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            text-decoration: none;
            transition: transform 0.2s ease;
            display: inline-block;
        }

        .logo:hover {
            transform: scale(1.02);
        }

        .search-bar {
            display: flex;
            background: white;
            border-radius: 60px;
            overflow: hidden;
            border: 1px solid #e2e8f0;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.04);
            transition: all 0.3s ease;
            flex: 1;
            max-width: 480px;
            min-width: 260px;
        }

        .search-bar:focus-within {
            border-color: #6a1b9a;
            box-shadow: 0 4px 12px rgba(106, 27, 154, 0.15);
            transform: translateY(-1px);
        }

        .search-bar input[type="text"] {
            flex: 1;
            padding: 14px 22px;
            border: none;
            font-size: 15px;
            font-weight: 500;
            outline: none;
            background: transparent;
        }

        .search-bar input[type="submit"] {
            border: none;
            background: linear-gradient(105deg, #6a1b9a 0%, #7e2bb3 100%);
            color: white;
            padding: 0 32px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.25s ease;
        }

        .search-bar input[type="submit"]:hover {
            background: linear-gradient(105deg, #5a1586 0%, #6a1b9a 100%);
        }

        .container {
            max-width: 1440px;
            margin: 0 auto;
            padding: 48px 40px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
            flex: 1;
        }

        .card {
            background: white;
            border-radius: 24px;
            overflow: hidden;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05);
            transition: all 0.35s cubic-bezier(0.2, 0, 0, 1);
            cursor: pointer;
            border: 1px solid rgba(106, 27, 154, 0.08);
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 25px 35px -12px rgba(106, 27, 154, 0.2);
            border-color: rgba(106, 27, 154, 0.2);
        }

        .card img {
            width: 100%;
            aspect-ratio: 16 / 10;
            object-fit: cover;
            transition: transform 0.5s ease;
            background: #f1f5f9;
        }

        .card:hover img {
            transform: scale(1.03);
        }

        .card-content {
            padding: 20px 20px 24px;
        }

        .card h3 {
            font-size: 1.35rem;
            font-weight: 700;
            margin: 0;
            color: #0f172a;
            transition: color 0.2s;
        }

        .card:hover h3 {
            color: #6a1b9a;
        }

        .price {
            font-size: 1.6rem;
            font-weight: 800;
            margin: 12px 0 0;
            background: linear-gradient(115deg, #6a1b9a 0%, #9333ea 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .no-data {
            grid-column: 1 / -1;
            text-align: center;
            padding: 80px 20px;
            background: white;
            border-radius: 48px;
            font-size: 1.8rem;
            font-weight: 600;
            color: #475569;
            border: 1px dashed #cbd5e1;
        }

        .no-data::before {
            content: "🔍";
            display: block;
            font-size: 4rem;
            margin-bottom: 20px;
        }

        @media (max-width: 768px) {
            .header {
                padding: 16px 24px;
                flex-direction: column;
                align-items: stretch;
            }
            .logo {
                text-align: center;
            }
            .search-bar {
                max-width: 100%;
            }
            .container {
                padding: 32px 20px;
                gap: 24px;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 24px 16px;
                gap: 18px;
            }
            .card h3 {
                font-size: 1.2rem;
            }
            .price {
                font-size: 1.4rem;
            }
        }

        .card img {
            background: linear-gradient(110deg, #ececec 8%, #f5f5f5 18%, #ececec 33%);
            background-size: 200% 100%;
            animation: shimmer 1.2s linear infinite;
        }
        @keyframes shimmer {
            to { background-position: -200% 0; }
        }
        .card img[src]:not([src=""]) {
            animation: none;
            background: #f1f5f9;
        }
        /* FOOTER */
.footer {
	background: #3b005a;
	color: white;
	padding: 50px 60px 30px;
}

.footer-container {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	gap: 30px;
	margin-bottom: 30px;
}

.footer-col {
	flex: 1;
	min-width: 180px;
}

.footer-col h3 {
	margin-bottom: 15px;
	font-size: 18px;
}

.footer-col p {
	font-size: 14px;
	line-height: 1.6;
	color: #ddd;
}

.footer-col a {
	display: block;
	color: #ddd;
	text-decoration: none;
	margin-bottom: 8px;
	font-size: 14px;
	transition: color 0.3s;
}

.footer-col a:hover {
	color: #ff4d6d;
}

.footer-bottom {
	text-align: center;
	padding-top: 20px;
	border-top: 1px solid rgba(255, 255, 255, 0.1);
	color: #ccc;
	font-size: 14px;
}
        
    </style>

    <script>
        // Function to format number in Indian style (e.g., 780000 -> 7,80,000)
        function formatIndianPrice(price) {
            let num = parseInt(price);
            if (isNaN(num)) return price;
            let str = num.toString();
            let len = str.length;
            if (len <= 3) return str;
            let last3 = str.slice(-3);
            let remaining = str.slice(0, -3);
            let formatted = '';
            while (remaining.length > 2) {
                formatted = ',' + remaining.slice(-2) + formatted;
                remaining = remaining.slice(0, -2);
            }
            if (remaining.length > 0) {
                formatted = remaining + formatted;
            }
            return formatted + ',' + last3;
        }

        // Run after page loads to format all prices
        document.addEventListener('DOMContentLoaded', function() {
            document.querySelectorAll('.price-raw').forEach(function(span) {
                let raw = span.getAttribute('data-price');
                let formatted = '₹ ' + formatIndianPrice(raw);
                span.innerHTML = formatted;
            });
        });
    </script>
</head>
<body>

<div class="header">
    <a href="customer-dashboard" class="logo">AutoSphere</a>
    <form action="searchCar" method="post" class="search-bar">
        <input type="text" name="car" placeholder="Search by brand, model, or keyword..." required>
        <input type="submit" value="Search">
    </form>
</div>

<div class="container">
<c:choose>
    <c:when test="${not empty customerCarList}">
        <c:forEach var="car" items="${customerCarList}">
            <a href="customerViewCarListing1?listingId=${car.listingId}" style="text-decoration:none; color:black;">
                <div class="card">
                    <img src="${car.imageURL}" alt="${car.brandName} ${car.modelName}" loading="lazy">
                    <div class="card-content">
                        <h3>${car.brandName} ${car.modelName}</h3>
                        <!-- Raw price stored in data attribute, formatted by JavaScript -->
                        <div class="price">
                            <span class="price-raw" data-price="${car.price}"></span>
                        </div>
                    </div>
                </div>
            </a>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <div class="no-data">No Cars Found ❌</div>
    </c:otherwise>
</c:choose>
</div>

<jsp:include page="CustomerFooter.jsp"></jsp:include>

</body>
</html>