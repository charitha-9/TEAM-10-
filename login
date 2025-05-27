<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Tourism Homepage</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body, html {
      height: 100%;
      font-family: 'Segoe UI', sans-serif;
    }

    .background {
      background-size: cover;
      background-position: center;
      height: 100vh;
      position: relative;
      color: white;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      transition: background-image 1s ease-in-out;
    }
    
    .logo {
        position: absolute;
        top: 20px;
        left: 20px;
        width: 180px; /* wider for rectangle */
        height: auto;
        padding: 5px 10px; /* adds some space inside container */
        background-color: rgba(0, 0, 0, 0.3); /* optional slight background to help it stand out */
        border-radius: 8px; /* rounded corners if you want */
        box-shadow: 0 2px 6px rgba(0,0,0,0.4); /* subtle shadow for depth */
    }

    .logo img {
        width: 100%;
        height: auto;
        display: block;
    }


    .top-buttons {
      position: absolute;
      top: 20px;
      right: 20px;
      display: flex;
      gap: 15px;
    }

    .btn {
      padding: 10px 18px;
      background: linear-gradient(135deg, #ff6600, #ff9900);
      border: none;
      color: white;
      font-weight: bold;
      border-radius: 8px;
      text-decoration: none;
      box-shadow: 0 4px 6px rgba(0,0,0,0.3);
      transition: transform 0.2s, box-shadow 0.2s;
    }

    .btn:hover {
      transform: scale(1.05);
      box-shadow: 0 6px 12px rgba(0,0,0,0.4);
    }

    .center-text {
      text-align: center;
      padding: 40px 20px 20px;
      background-color: rgba(0, 0, 0, 0.5);
      border-radius: 12px;
      margin: 40px auto 10px;
      max-width: 800px;
    }

    .center-text h1 {
      font-size: 48px;
      margin-bottom: 20px;
    }

    .center-text p {
      font-size: 20px;
    }

    .about {
      text-align: center;
      color: black;
      padding: 30px 20px;
      margin: 0 20px 20px;
    }

    .about h2 {
      font-size: 30px;
      margin-bottom: 15px;
    }

    .about p {
      font-size: 18px;
      line-height: 1.6;
    }

    .testimonials {
      text-align: center;
      color: black;
      padding: 30px 20px;
      margin: 0 20px 20px;
    }

    .testimonials h2 {
      font-size: 32px;
      margin-bottom: 20px;
    }

    .testimonial {
      margin: 15px 0;
      font-style: italic;
    }

    .testimonial span {
      display: block;
      margin-top: 8px;
      font-weight: bold;
    }

    .footer {
      background-color: rgba(0, 0, 0, 0.6);
      color: white;
      text-align: center;
      padding: 15px 0;
      font-size: 14px;
    }
  </style>
</head>
<body>

  <div class="background" id="background">
    <div class="top-buttons">
      <a href="registration.html" class="btn">Register</a>
      <a href="destinations.html" class="btn">Destinations</a>
      <a href="itinerary.html" class="btn">Itinerary</a>
    </div>

    <div class="logo">
     <img src="logo.jpg" alt="Karnataka Tourism Logo" />
    </div>


    <div class="center-text">
      <h1>Welcome to Karnataka</h1>
      <p>Explore the beauty, culture, and experiences that await you.</p>
    </div>

    <div class="about">
      <h2>Why Visit Karnataka?</h2>
      <p>Karnataka offers a unique blend of rich heritage, vibrant culture, and breathtaking natural beauty. From the majestic ruins of Hampi to the serene beaches of Gokarna and the bustling city life of Bengaluru, there’s something for every kind of traveler.</p>
    </div>

    <div class="testimonials">
      <h2>What Our Visitors Say</h2>
      <div class="testimonial">
        <p>"Karnataka's beauty left us speechless. The experience was unforgettable!"</p>
        <span>- Ananya R., Mumbai</span>
      </div>
      <div class="testimonial">
        <p>"The hospitality and cultural richness here are unmatched. Highly recommended!"</p>
        <span>- John M., London</span>
      </div>
    </div>

    <div class="footer">
      <p>Contact us: info@karnatakatourism.in | +91 98765 43210</p>
      <p>Address: Karnataka Tourism Office, Bengaluru, India</p>
    </div>
  </div>

  <script>
    const images = [
      'gokarna.jpg',
      'hampi.jpg',
      'temple.jpg'
    ];

    let index = 0;
    const background = document.getElementById('background');

    function changeBackground() {
      index = (index + 1) % images.length;
      background.style.backgroundImage = `url('${images[index]}')`;
    }

    background.style.backgroundImage = `url('${images[0]}')`;
    setInterval(changeBackground, 3000);
  </script>

</body>
</html>
