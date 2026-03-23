<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>AutoSphere | Careers – Drive Your Future</title>
  <!-- Google Fonts & Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #f3e5f5;
      color: #1a1a2e;
      line-height: 1.4;
      scroll-behavior: smooth;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 32px;
    }

    /* header / navbar */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 0;
      flex-wrap: wrap;
      gap: 20px;
      border-bottom: 2px solid #3b005a30;
    }

    .logo-area {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .logo-icon {
      font-size: 32px;
      color: #3b005a;
    }

    .logo-text {
      font-size: 28px;
      font-weight: 800;
      letter-spacing: -0.5px;
      background: linear-gradient(135deg, #3b005a, #9b4d96);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }

    .nav-links {
      display: flex;
      gap: 28px;
      align-items: center;
    }

    .nav-links a {
      text-decoration: none;
      font-weight: 500;
      color: #2d1b3a;
      transition: 0.2s;
    }

    .nav-links a:hover {
      color: #3b005a;
    }

    .btn-outline {
      border: 2px solid #3b005a;
      background: transparent;
      padding: 8px 20px;
      border-radius: 40px;
      font-weight: 600;
      color: #3b005a;
      cursor: pointer;
      transition: 0.2s;
    }

    .btn-outline:hover {
      background: #3b005a;
      color: #f3e5f5;
    }

    .btn-primary {
      background: #3b005a;
      border: none;
      padding: 10px 28px;
      border-radius: 40px;
      font-weight: 600;
      color: white;
      cursor: pointer;
      transition: 0.2s;
      font-size: 14px;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }

    .btn-primary:hover {
      background: #5a1e7a;
      transform: scale(0.98);
    }

    /* hero section with image */
    .hero {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      gap: 40px;
      padding: 60px 0 40px;
    }

    .hero-left {
      flex: 1.2;
    }

    .hero-badge {
      background: #3b005a20;
      color: #3b005a;
      display: inline-block;
      padding: 6px 14px;
      border-radius: 40px;
      font-size: 14px;
      font-weight: 600;
      margin-bottom: 20px;
    }

    .hero-left h1 {
      font-size: 54px;
      font-weight: 800;
      line-height: 1.2;
      letter-spacing: -1px;
      margin-bottom: 20px;
      color: #2a1a3a;
    }

    .hero-left p {
      font-size: 18px;
      color: #4a3a5a;
      max-width: 90%;
      margin-bottom: 30px;
    }

    .sale-card {
      background: linear-gradient(115deg, #f9f0fd 0%, #f5e8fa 100%);
      border-radius: 32px;
      padding: 20px 28px;
      display: inline-flex;
      flex-direction: column;
      gap: 6px;
      border: 1px solid #cbb2e0;
      margin-top: 10px;
    }

    .sale-tag {
      font-size: 14px;
      font-weight: 700;
      color: #5a2a7a;
      letter-spacing: 1px;
    }

    .sale-price {
      font-size: 32px;
      font-weight: 800;
      color: #3b005a;
    }

    .sale-price span {
      text-decoration: line-through;
      font-weight: 500;
      color: #8a6a9a;
      font-size: 22px;
      margin-right: 12px;
    }

    .hero-right {
      flex: 1;
      position: relative;
    }

    .hero-image {
      width: 100%;
      border-radius: 32px;
      object-fit: cover;
      box-shadow: 0 25px 40px -12px rgba(59, 0, 90, 0.25);
      border: 3px solid #fff;
    }

    /* founder section with images */
    .founder-section {
      margin: 70px 0 60px;
    }

    .section-title {
      font-size: 36px;
      font-weight: 700;
      text-align: center;
      margin-bottom: 16px;
      color: #2a1a3a;
    }

    .section-sub {
      text-align: center;
      color: #6a4a8a;
      margin-bottom: 48px;
      font-size: 18px;
    }

    .founder-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: center;
    }

    .founder-card {
      background: white;
      border-radius: 32px;
      padding: 32px 28px;
      box-shadow: 0 20px 35px -12px rgba(59, 0, 90, 0.1);
      flex: 1;
      min-width: 280px;
      border: 1px solid #e2cff0;
      transition: all 0.25s;
      text-align: center;
    }

    .founder-card:hover {
      transform: translateY(-5px);
      border-color: #9b4d96;
      box-shadow: 0 25px 40px -12px rgba(59, 0, 90, 0.2);
    }

    .founder-avatar {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      object-fit: cover;
      margin-bottom: 20px;
      border: 3px solid #9b4d96;
      box-shadow: 0 8px 20px rgba(59, 0, 90, 0.2);
    }

    .quote-icon {
      font-size: 40px;
      color: #9b4d96;
      opacity: 0.7;
      margin-bottom: 16px;
    }

    .founder-card p {
      font-size: 17px;
      font-weight: 500;
      line-height: 1.45;
      margin-bottom: 20px;
      color: #2a1a3a;
    }

    .founder-name {
      font-weight: 800;
      font-size: 18px;
      color: #3b005a;
    }

    .founder-title {
      font-size: 14px;
      color: #9b4d96;
      font-weight: 500;
    }

    /* services section with team image */
    .services-section {
      background: white;
      border-radius: 48px;
      padding: 56px 40px;
      margin: 50px 0;
      box-shadow: 0 8px 30px rgba(59, 0, 90, 0.05);
      border: 1px solid #e2cff0;
    }

    .grid-2col {
      display: flex;
      flex-wrap: wrap;
      gap: 48px;
      margin-top: 32px;
    }

    .service-col {
      flex: 1;
    }

    .service-col h3 {
      color: #3b005a;
    }

    .service-list {
      list-style: none;
      margin-top: 20px;
    }

    .service-list li {
      margin-bottom: 18px;
      display: flex;
      align-items: center;
      gap: 14px;
      font-weight: 500;
      color: #2d1b3a;
    }

    .service-list i {
      width: 32px;
      color: #9b4d96;
      font-size: 20px;
    }

    .process-steps {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      margin-top: 20px;
    }

    .step {
      background: #f9f0fd;
      border-radius: 28px;
      padding: 18px 20px;
      flex: 1;
      min-width: 140px;
      text-align: center;
      font-weight: 600;
      border-bottom: 3px solid #9b4d9680;
      color: #2a1a3a;
    }

    .step-num {
      background: #3b005a;
      width: 34px;
      height: 34px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      border-radius: 60px;
      color: white;
      font-weight: 800;
      margin-bottom: 12px;
    }

    .team-showcase {
      display: flex;
      align-items: center;
      gap: 32px;
      flex-wrap: wrap;
      margin-top: 32px;
      background: linear-gradient(120deg, #fbf5ff, #fff);
      border-radius: 32px;
      padding: 28px;
      border: 1px solid #e2cff0;
    }

    .team-img {
      width: 180px;
      height: 180px;
      border-radius: 28px;
      object-fit: cover;
      box-shadow: 0 12px 24px rgba(59, 0, 90, 0.1);
      border: 2px solid #9b4d96;
    }

    /* why business section */
    .why-business {
      background: linear-gradient(110deg, #2a1a3a, #1a0a2a);
      color: white;
      border-radius: 48px;
      padding: 48px 40px;
      margin: 60px 0;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 30px;
    }

    .why-text h3 {
      font-size: 32px;
      font-weight: 700;
      margin-bottom: 12px;
    }

    .why-text p {
      font-size: 18px;
      opacity: 0.9;
    }

    .why-icon {
      font-size: 64px;
      background: rgba(155, 77, 150, 0.2);
      width: 100px;
      height: 100px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 40px;
      color: #e2cff0;
    }

    /* partner badge */
    .partner-badge {
      text-align: center;
      margin: 30px 0 20px;
    }

    .partner-badge div {
      display: inline-block;
      background: #3b005a15;
      padding: 12px 32px;
      border-radius: 80px;
      font-weight: 700;
      font-size: 18px;
      color: #3b005a;
      border: 1px solid #cbb2e0;
    }

    /* open roles */
    .open-roles {
      background: white;
      border-radius: 48px;
      padding: 40px 32px;
      margin: 20px 0 50px;
      box-shadow: 0 8px 20px rgba(59, 0, 90, 0.05);
      border: 1px solid #e2cff0;
    }

    .role-header {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      align-items: center;
    }

    .role-header h2 {
      color: #3b005a;
    }

    .job-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      margin-top: 32px;
    }

    .job-card {
      flex: 1;
      background: #fbf5ff;
      border-radius: 24px;
      padding: 18px;
      transition: 0.2s;
      border: 1px solid #e2cff0;
      color: #2a1a3a;
    }

    .job-card i {
      margin-right: 8px;
      color: #9b4d96;
    }

    .job-card:hover {
      transform: translateY(-3px);
      border-color: #9b4d96;
      box-shadow: 0 8px 20px rgba(59, 0, 90, 0.1);
    }

    .career-banner {
      margin-top: 32px;
      border-radius: 32px;
      overflow: hidden;
    }

    .career-banner img {
      width: 100%;
      height: auto;
      max-height: 280px;
      object-fit: cover;
      border-radius: 28px;
      border: 2px solid #e2cff0;
    }

    footer {
      border-top: 2px solid #e2cff0;
      padding: 32px 0;
      text-align: center;
      color: #5a4a6a;
      font-size: 14px;
    }

    @media (max-width: 768px) {
      .container {
        padding: 0 24px;
      }
      .hero-left h1 {
        font-size: 38px;
      }
      .navbar {
        flex-direction: column;
        align-items: flex-start;
      }
      .hero-left p {
        max-width: 100%;
      }
      .services-section {
        padding: 32px 24px;
      }
      .section-title {
        font-size: 28px;
      }
      .team-showcase {
        flex-direction: column;
        text-align: center;
      }
    }
  </style>
</head>
<body>

<div class="container">
  <!-- header: brand + login/signup -->
  <div class="navbar">
    <div class="logo-area">
      <i class="fas fa-car-side logo-icon"></i>
      <span class="logo-text">AutoSphere</span>
    </div>
    <div class="nav-links">
      <a href="#">Drive</a>
      <a href="#">Electric</a>
      <a href="#" style="font-weight:700;">Careers</a>
      <a href="#">Community</a>
      <button class="btn-outline" id="loginBtn">Login / Sign Up</button>
    </div>
  </div>

  <!-- Hero with car image -->
  <div class="hero">
    <div class="hero-left">
      <div class="hero-badge"><i class="fas fa-bolt"></i> NOW HIRING</div>
      <h1>Put your career <br> in <span style="color:#9b4d96;">next gear</span></h1>
      <p>Rev up your professional journey with AutoSphere — where innovation meets mobility. Join a team that builds the future of automotive ecosystems.</p>
      <div class="sale-card">
        <div class="sale-tag"><i class="fas fa-tag"></i> CAREER LAUNCH OFFER</div>
        <div class="sale-price"><span>$1,000</span> NOW ONLY $499.99</div>
        <div style="font-size: 13px; color:#6a3a8a;">*Skill development fund for new joiners*</div>
      </div>
    </div>
    <div class="hero-right">
      <img class="hero-image" src="https://placehold.co/600x400/9b4d96/white?text=AutoSphere+Premium+EV" alt="AutoSphere luxury electric car">
    </div>
  </div>

  <!-- "What we have to Say You" – founders with avatars -->
  <div class="founder-section">
    <div class="section-title">What we have to <span style="color:#9b4d96;">Say You</span></div>
    <div class="section-sub">Voices from the people who built AutoSphere</div>
    <div class="founder-grid">
      <div class="founder-card">
        <img class="founder-avatar" src="https://placehold.co/200x200/3b005a/white?text=Aditi" alt="Founder Aditi">
        <div class="quote-icon"><i class="fas fa-quote-left"></i></div>
        <p>"Building AutoSphere is about redefining trust and transparency in the auto-tech space. Every day we empower our team to drive change and create impact at scale."</p>
        <div class="founder-name">Aditi Kothapalli</div>
        <div class="founder-title">Founder & CEO</div>
      </div>
      <div class="founder-card">
        <img class="founder-avatar" src="https://placehold.co/200x200/5a1e7a/white?text=Shivam" alt="Co-founder Shivam">
        <div class="quote-icon"><i class="fas fa-quote-left"></i></div>
        <p>"From day one, our vision has been to blend cutting-edge technology with human-centric values. Join us if you’re ready to shape the future of mobility."</p>
        <div class="founder-name">Shivam Mehta</div>
        <div class="founder-title">Co-Founder & CTO</div>
      </div>
    </div>
  </div>

  <!-- "What we have to do for You" + Services, Process, Team -->
  <div class="services-section">
    <div class="section-title" style="text-align:left; font-size:32px;">What we have to <span style="color:#9b4d96;">do for You</span></div>
    <p style="color:#5a4a6a; margin-top:8px; margin-bottom:24px;">We are committed to providing you with the best possible experience. We understand that your time is valuable, and we want to ensure that you have a positive experience from start to finish. That’s why we’ve put together this guide to help you understand what we do and how we can help you.</p>
    
    <div class="grid-2col">
      <div class="service-col">
        <h3><i class="fas fa-cogs" style="color:#9b4d96; margin-right:8px;"></i> Our Services</h3>
        <ul class="service-list">
          <li><i class="fas fa-pen-fancy"></i> <strong>Web Design:</strong> Professional websites that reflect your brand.</li>
          <li><i class="fas fa-chart-line"></i> <strong>SEO:</strong> Boost search rankings & drive traffic.</li>
          <li><i class="fas fa-newspaper"></i> <strong>Content Marketing:</strong> High-quality content that educates & inspires.</li>
          <li><i class="fas fa-hashtag"></i> <strong>Social Media Management:</strong> Grow your audience across platforms.</li>
        </ul>
      </div>
      <div class="service-col">
        <h3><i class="fas fa-chalkboard-user"></i> Our Process</h3>
        <div class="process-steps">
          <div class="step"><div class="step-num">1</div>Discovery</div>
          <div class="step"><div class="step-num">2</div>Planning</div>
          <div class="step"><div class="step-num">3</div>Design</div>
          <div class="step"><div class="step-num">4</div>Development</div>
          <div class="step"><div class="step-num">5</div>Launch</div>
        </div>
        <p style="margin-top: 24px; font-size:14px; color:#6a5a7a;">We build your website/app using proprietary tech, followed by ongoing support.</p>
      </div>
    </div>

    <!-- Our Team description with image -->
    <div style="margin-top: 56px;">
      <h3 style="color:#3b005a;"><i class="fas fa-users" style="color:#9b4d96;"></i> Our Team</h3>
      <div class="team-showcase">
        <img class="team-img" src="https://placehold.co/300x300/9b4d96/white?text=AutoSphere+Team+Culture" alt="AutoSphere team culture">
        <div>
          <p style="margin-top: 8px; color:#2a1a3a;">Our team of experienced professionals is dedicated to delivering exceptional results. We have a proven track record of success in helping businesses like yours achieve their goals. From engineers to creative strategists, every member fuels AutoSphere's mission. <strong>50+ experts</strong> across automotive, tech, and growth.</p>
          <p style="margin-top: 12px; color:#4a2a6a;"><i class="fas fa-check-circle" style="color:#9b4d96;"></i> 4.9/5 client satisfaction &nbsp;|&nbsp; <i class="fas fa-rocket"></i> 200+ projects delivered</p>
        </div>
      </div>
    </div>

    <!-- Contact Us -->
    <div style="margin-top: 40px; background:#fbf5ff; padding: 24px 28px; border-radius: 32px; border: 1px solid #e2cff0;">
      <h4 style="color:#3b005a;"><i class="fas fa-envelope"></i> Contact Us</h4>
      <p style="color:#4a3a5a;">If you have any questions or would like to learn more about our services, please don’t hesitate to contact us. We look forward to hearing from you.</p>
      <button class="btn-primary" style="margin-top: 16px;" id="contactBtn"><i class="fas fa-headset"></i> Get in touch</button>
    </div>
  </div>

  <!-- "Why Business is Part of Journey" section -->
  <div class="why-business">
    <div class="why-text">
      <h3>Why Business is Part of Journey</h3>
      <p>Pay your career cost and gain work-life balance. At AutoSphere, we redefine growth — not just professional, but personal. Experience a culture where performance meets wellbeing, and every milestone is celebrated.</p>
      <div style="margin-top: 20px; display: flex; gap: 20px; flex-wrap: wrap;">
        <span><i class="fas fa-check-circle"></i> Flexible remote culture</span>
        <span><i class="fas fa-charging-station"></i> Learning stipends</span>
        <span><i class="fas fa-hand-holding-heart"></i> Wellness programs</span>
      </div>
    </div>
    <div class="why-icon">
      <i class="fas fa-chart-simple"></i>
    </div>
  </div>

  <!-- Your Partner in Digital Transformation block -->
  <div class="partner-badge">
    <div>
      🚀 Your Partner in Digital Transformation
    </div>
  </div>

  <!-- Open roles @AutoSphere with career banner -->
  <div class="open-roles">
    <div class="role-header">
      <div>
        <h2 style="font-size: 28px;">🚘 Open roles @AutoSphere</h2>
        <p style="color:#5a4a6a;">Join the revolution — apply now and drive the future.</p>
      </div>
      <button class="btn-primary" id="careersApplyBtn"><i class="fas fa-paper-plane"></i> Explore jobs</button>
    </div>
    <div class="job-grid">
      <div class="job-card"><i class="fas fa-laptop-code"></i> <strong>Full Stack Engineer</strong><br>Remote · Full-time · Equity</div>
      <div class="job-card"><i class="fas fa-chart-simple"></i> <strong>Growth Marketing Lead</strong><br>Bengaluru / Hybrid · High Impact</div>
      <div class="job-card"><i class="fas fa-car"></i> <strong>Automotive Specialist</strong><br>Mumbai / Delhi · Customer Excellence</div>
    </div>
    <div class="career-banner">
      <img src="https://placehold.co/1200x400/3b005a/white?text=AutoSphere+Career+Drive+%7C+Join+the+Road+Ahead" alt="AutoSphere hiring banner">
    </div>
  </div>

  <footer>
    <div>© 2025 AutoSphere — Accelerating Careers & Innovation. All rights reserved.</div>
    <div style="margin-top: 12px;">
      <i class="fab fa-linkedin"></i> <i class="fab fa-twitter"></i> <i class="fab fa-instagram"></i>  Follow us for latest career drives
    </div>
  </footer>
</div>

<script>
  // interactive alerts matching the purple theme
  const loginBtn = document.getElementById('loginBtn');
  if(loginBtn) {
    loginBtn.addEventListener('click', () => {
      alert("🔐 Welcome to AutoSphere Careers! \nSign up to get personalized job alerts and exclusive $499 career kit.");
    });
  }
  
  const contactBtn = document.getElementById('contactBtn');
  if(contactBtn) {
    contactBtn.addEventListener('click', () => {
      alert("📧 Thanks for reaching out! Our talent team will get back to you within 24h. careers@autosphere.com");
    });
  }
  
  const careersApplyBtn = document.getElementById('careersApplyBtn');
  if(careersApplyBtn) {
    careersApplyBtn.addEventListener('click', () => {
      alert("🌟 Explore all openings at AutoSphere! Visit careers.autosphere.com/jobs or drop your CV at talent@autosphere.com");
    });
  }

  console.log("AutoSphere Careers — premium purple theme | #f3e5f5 & #3b005a | Automotive tech career hub");
</script>
</body>
</html>