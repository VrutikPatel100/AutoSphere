<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>AutoSphere | Contact Us — Drive the Future</title>
  <!-- Google Fonts for modern, clean typography -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <!-- Font Awesome 6 (free icons) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background-color: #0a0c12;
      color: #f0f3f8;
      line-height: 1.5;
      scroll-behavior: smooth;
    }

    /* ---------- STUNNING BACKGROUND IMAGE with overlay ---------- */
    .hero-bg {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -2;
      overflow: hidden;
    }

    .hero-bg::before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: url('https://images.pexels.com/photos/1300550/pexels-photo-1300550.jpeg?auto=compress&cs=tinysrgb&w=1600') center/cover no-repeat;
      /* high-end sport/luxury car background – professional & dynamic */
      filter: brightness(0.4) contrast(1.05);
      transition: all 0.3s;
    }

    /* premium dark gradient overlay for better readability */
    .hero-bg::after {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: radial-gradient(circle at 20% 30%, rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.85));
      pointer-events: none;
    }

    /* container to hold everything above background */
    .wrapper {
      position: relative;
      z-index: 2;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      backdrop-filter: blur(0px);
    }

    /* ----- NAVIGATION (optional minimal brand bar) ----- */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1.5rem 5%;
      flex-wrap: wrap;
      gap: 1rem;
      background: rgba(8, 12, 20, 0.7);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(255, 255, 255, 0.08);
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .logo i {
      font-size: 2.2rem;
      color: #e31c5f;
      filter: drop-shadow(0 0 6px rgba(227, 28, 95, 0.4));
    }

    .logo span {
      font-size: 1.8rem;
      font-weight: 800;
      letter-spacing: -0.5px;
      background: linear-gradient(135deg, #ffffff, #c0c9f0);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }

    .nav-links a {
      color: #eef2ff;
      text-decoration: none;
      margin-left: 2rem;
      font-weight: 500;
      transition: 0.2s;
      font-size: 1rem;
      letter-spacing: 0.3px;
      border-bottom: 2px solid transparent;
      padding-bottom: 4px;
    }

    .nav-links a:hover,
    .nav-links a.active {
      color: #e31c5f;
      border-bottom-color: #e31c5f;
    }

    /* ----- MAIN CONTACT SECTION (professional card) ----- */
    .contact-container {
      flex: 1;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 3rem 1.5rem 4rem;
    }

    .contact-card {
      max-width: 1300px;
      width: 100%;
      background: rgba(15, 20, 30, 0.75);
      backdrop-filter: blur(16px);
      border-radius: 2.5rem;
      border: 1px solid rgba(255, 255, 255, 0.2);
      box-shadow: 0 30px 50px rgba(0, 0, 0, 0.5), 0 0 0 1px rgba(255, 255, 255, 0.05) inset;
      overflow: hidden;
      transition: transform 0.3s ease;
    }

    .contact-card:hover {
      transform: translateY(-6px);
    }

    .grid-2col {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 0;
    }

    /* left side - info & highlights */
    .info-panel {
      padding: 3rem 2.5rem;
      background: linear-gradient(125deg, rgba(0, 0, 0, 0.6), rgba(10, 14, 23, 0.7));
      border-right: 1px solid rgba(255, 255, 255, 0.1);
    }

    .info-panel h2 {
      font-size: 2.4rem;
      font-weight: 700;
      margin-bottom: 1rem;
      letter-spacing: -0.02em;
      background: linear-gradient(to right, #ffffff, #cbd5ff);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }

    .info-panel .tagline {
      font-size: 1rem;
      color: #b9c3e8;
      margin-bottom: 2rem;
      border-left: 3px solid #e31c5f;
      padding-left: 1rem;
    }

    .contact-details {
      margin: 2rem 0 2.5rem;
    }

    .detail-item {
      display: flex;
      align-items: center;
      gap: 1rem;
      margin-bottom: 1.8rem;
    }

    .detail-item i {
      width: 44px;
      height: 44px;
      background: rgba(227, 28, 95, 0.18);
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 30px;
      font-size: 1.4rem;
      color: #e31c5f;
      transition: 0.2s;
    }

    .detail-item div strong {
      display: block;
      font-weight: 600;
      font-size: 1.05rem;
    }

    .detail-item div p {
      color: #cbd5e6;
      font-size: 0.95rem;
      margin-top: 4px;
    }

    .social-links {
      display: flex;
      gap: 1rem;
      margin-top: 2rem;
    }

    .social-links a {
      background: rgba(255, 255, 255, 0.07);
      width: 44px;
      height: 44px;
      border-radius: 44px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #f0f3fc;
      font-size: 1.4rem;
      transition: all 0.2s;
      border: 1px solid rgba(255, 255, 255, 0.1);
    }

    .social-links a:hover {
      background: #e31c5f;
      color: white;
      transform: scale(1.08);
      border-color: #e31c5f;
    }

    /* right side - form */
    .form-panel {
      padding: 3rem 2.5rem;
      background: rgba(0, 0, 0, 0.35);
    }

    .form-panel h3 {
      font-size: 1.9rem;
      font-weight: 600;
      margin-bottom: 0.5rem;
    }

    .form-panel p {
      color: #b1c2e0;
      margin-bottom: 2rem;
      font-size: 0.9rem;
    }

    .input-group {
      margin-bottom: 1.5rem;
    }

    .input-group input,
    .input-group textarea,
    .input-group select {
      width: 100%;
      background: rgba(20, 27, 40, 0.8);
      border: 1px solid rgba(255, 255, 255, 0.2);
      padding: 1rem 1.2rem;
      border-radius: 1.2rem;
      font-family: 'Inter', sans-serif;
      font-size: 0.95rem;
      color: #ffffff;
      transition: all 0.25s;
      outline: none;
      backdrop-filter: blur(4px);
    }

    .input-group input:focus,
    .input-group textarea:focus,
    .input-group select:focus {
      border-color: #e31c5f;
      box-shadow: 0 0 0 3px rgba(227, 28, 95, 0.3);
      background: rgba(25, 34, 50, 0.9);
    }

    .input-group textarea {
      resize: vertical;
      min-height: 110px;
    }

    .double-group {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 1rem;
    }

    .btn-submit {
      background: linear-gradient(95deg, #e31c5f, #b01348);
      border: none;
      padding: 1rem 1.8rem;
      width: 100%;
      border-radius: 2rem;
      font-weight: 700;
      font-size: 1.05rem;
      color: white;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 12px;
      cursor: pointer;
      transition: 0.2s;
      margin-top: 0.5rem;
      box-shadow: 0 8px 20px rgba(227, 28, 95, 0.25);
    }

    .btn-submit i {
      font-size: 1.1rem;
      transition: transform 0.2s;
    }

    .btn-submit:hover {
      background: linear-gradient(95deg, #ff2f6e, #c0134f);
      transform: scale(1.01);
      box-shadow: 0 12px 28px rgba(227, 28, 95, 0.4);
    }

    .btn-submit:hover i {
      transform: translateX(5px);
    }

    /* toast / notification */
    .toast-msg {
      position: fixed;
      bottom: 30px;
      left: 50%;
      transform: translateX(-50%) scale(0.9);
      background: #1e293b;
      backdrop-filter: blur(20px);
      color: white;
      padding: 0.9rem 2rem;
      border-radius: 60px;
      font-weight: 500;
      font-size: 0.9rem;
      z-index: 200;
      opacity: 0;
      visibility: hidden;
      transition: all 0.25s ease;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
      border-left: 5px solid #e31c5f;
      pointer-events: none;
    }

    .toast-msg.show {
      opacity: 1;
      visibility: visible;
      transform: translateX(-50%) scale(1);
    }

    /* footer */
    .footer {
      text-align: center;
      padding: 1.8rem;
      font-size: 0.85rem;
      color: #96a3c2;
      background: rgba(0, 0, 0, 0.5);
      backdrop-filter: blur(8px);
      border-top: 1px solid rgba(255, 255, 255, 0.05);
    }

    /* responsiveness */
    @media (max-width: 950px) {
      .grid-2col {
        grid-template-columns: 1fr;
      }

      .info-panel {
        border-right: none;
        border-bottom: 1px solid rgba(255, 255, 255, 0.1);
      }

      .navbar {
        flex-direction: column;
        text-align: center;
      }

      .nav-links a {
        margin: 0 1rem;
      }
    }

    @media (max-width: 550px) {
      .info-panel, .form-panel {
        padding: 2rem 1.5rem;
      }
      .double-group {
        grid-template-columns: 1fr;
        gap: 1rem;
      }
      .contact-card {
        border-radius: 1.8rem;
      }
    }

    /* custom placeholder style */
    ::placeholder {
      color: #9aa9c7;
      font-weight: 400;
      opacity: 0.7;
    }
  </style>
</head>
<body>

<div class="hero-bg"></div>

<div class="wrapper">
  <!-- simple but elegant navigation -->
  <div class="navbar">
    <div class="logo">
      <i class="fas fa-car-side"></i>
      <span>AutoSphere</span>
    </div>
    <div class="nav-links">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#"><i class="fas fa-car"></i> Fleet</a>
      <a href="#"><i class="fas fa-cogs"></i> Services</a>
      <a href="#" class="active"><i class="fas fa-envelope"></i> Contact</a>
    </div>
  </div>

  <!-- main contact section -->
  <div class="contact-container">
    <div class="contact-card">
      <div class="grid-2col">
        <!-- left column: brand & contact info -->
        <div class="info-panel">
          <h2>Let’s connect</h2>
          <div class="tagline">Experience automotive excellence — reach out to AutoSphere</div>
          <p style="margin-bottom: 1.5rem; color:#ccd6f6;">We're driven by innovation, precision, and your satisfaction. Whether you need a test drive, service inquiry, or partnership — our team is ready to assist.</p>
          
          <div class="contact-details">
            <div class="detail-item">
              <i class="fas fa-map-marker-alt"></i>
              <div>
                <strong>Showroom & HQ</strong>
                <p>4710 Auto Avenue, Motor City, MI 48226</p>
              </div>
            </div>
            <div class="detail-item">
              <i class="fas fa-phone-alt"></i>
              <div>
                <strong>Phone / WhatsApp</strong>
                <p>+91 7016820461 &nbsp;|&nbsp; +91 6353444700</p>
              </div>
            </div>
            <div class="detail-item">
              <i class="fas fa-envelope"></i>
              <div>
                <strong>Email Support</strong>
                <p>concierge@autosphere.com &nbsp;|&nbsp; service@autosphere.com</p>
              </div>
            </div>
            <div class="detail-item">
              <i class="fas fa-clock"></i>
              <div>
                <strong>Opening Hours</strong>
                <p>Mon – Fri: 9:00 AM – 8:00 PM &nbsp;|&nbsp; Sat: 10AM – 6PM</p>
              </div>
            </div>
          </div>

          <div class="social-links">
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
          </div>
        </div>

        <!-- right column: contact form -->
        <div class="form-panel">
          <h3>Send a message</h3>
          <p>Our auto specialists reply within 24 hours</p>
          <form id="contactForm" action="#" method="POST">
            <div class="double-group">
              <div class="input-group">
                <input type="text" id="firstName" placeholder="First name *" required>
              </div>
              <div class="input-group">
                <input type="text" id="lastName" placeholder="Last name *" required>
              </div>
            </div>
            <div class="input-group">
              <input type="email" id="email" placeholder="Email address *" required>
            </div>
            <div class="input-group">
              <input type="tel" id="phone" placeholder="Phone number (optional)">
            </div>
            <div class="input-group">
              <select id="inquiryType">
                <option value="general">General inquiry</option>
                <option value="test-drive">Schedule test drive</option>
                <option value="service">Service & maintenance</option>
                <option value="partnership">Partnership / Dealership</option>
              </select>
            </div>
            <div class="input-group">
              <textarea id="message" placeholder="Tell us about your automotive needs... *" required></textarea>
            </div>
            <button type="submit" class="btn-submit">
              <span>Submit request</span> <i class="fas fa-arrow-right"></i>
            </button>
          </form>
          <p style="font-size: 0.75rem; margin-top: 1.2rem; text-align: center; opacity: 0.7;">
            <i class="fas fa-shield-alt"></i> Your data stays confidential — we respect your privacy.
          </p>
        </div>
      </div>
    </div>
  </div>

  <div class="footer">
    <p>© 2025 AutoSphere — Where passion meets performance. All trademarks reserved.</p>
  </div>
</div>

<!-- toast notification -->
<div id="toastMsg" class="toast-msg">
  <i class="fas fa-check-circle" style="margin-right: 8px; color:#e31c5f;"></i> 
  Message sent! We'll get back to you shortly.
</div>

<script>
  (function() {
    const form = document.getElementById('contactForm');
    const toast = document.getElementById('toastMsg');

    function showToast(message) {
      toast.innerHTML = `<i class="fas fa-check-circle" style="margin-right: 8px; color:#e31c5f;"></i> ${message}`;
      toast.classList.add('show');
      setTimeout(() => {
        toast.classList.remove('show');
      }, 4000);
    }

    function validateEmail(email) {
      const re = /^[^\s@]+@([^\s@]+\.)+[^\s@]+$/;
      return re.test(email.trim());
    }

    form.addEventListener('submit', function(e) {
      e.preventDefault();

      const firstName = document.getElementById('firstName').value.trim();
      const lastName = document.getElementById('lastName').value.trim();
      const email = document.getElementById('email').value.trim();
      const message = document.getElementById('message').value.trim();
      const phone = document.getElementById('phone').value.trim();

      // validation
      if (!firstName || !lastName) {
        showToast('❌ Please enter your full name (first & last)');
        return;
      }
      if (!email) {
        showToast('❌ Email address is required');
        return;
      }
      if (!validateEmail(email)) {
        showToast('❌ Please provide a valid email address (e.g., name@domain.com)');
        return;
      }
      if (!message) {
        showToast('❌ Message field cannot be empty — tell us how we can help!');
        return;
      }

      // optional: simulate form submission (console log)
      const formData = {
        fullName: `${firstName} ${lastName}`,
        email: email,
        phone: phone || 'not provided',
        inquiryType: document.getElementById('inquiryType').value,
        message: message,
        submittedAt: new Date().toISOString()
      };
      console.log('📩 AutoSphere contact submission:', formData);

      // Show success toast and reset form
      showToast('✨ Message delivered! Our AutoSphere team will respond soon.');
      form.reset();

      // optional: tiny additional reset for select to default
      document.getElementById('inquiryType').value = 'general';
      
      // bonus: slight animation to indicate completion
      const btn = document.querySelector('.btn-submit');
      const originalText = btn.innerHTML;
      btn.innerHTML = '<span>Sent!</span> <i class="fas fa-check"></i>';
      setTimeout(() => {
        btn.innerHTML = originalText;
      }, 1800);
    });
  })();
</script>
</body>
</html>