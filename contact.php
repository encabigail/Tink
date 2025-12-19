<?php
// index.php
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>"Little Flower" Adjustable Ring</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/style.css?v=1">
    <link rel="stylesheet" href="assets/css/contact.css?v=1">

</head>

<body class="product-page">

<!-- ===== Header ===== -->
<header>
    <div class="logo">
    <img src="assets/images/logo2.png" alt="Tink" width="102" height="41.5">
</div>

    <nav class="main-nav">
        <a href="bracelets.php" class="nav-link active">BRACELETS</a>
        <a href="necklaces.php" class="nav-link">NECKLACES</a>
        <a href="earrings.php" class="nav-link">EARRINGS</a>
        <a href="rings.php" class="nav-link">RINGS</a>
        <a href="charms.php" class="nav-link">CHARMS</a>
        <a href="designers.php" class="nav-link">DESIGNERS</a>
    </nav>

<div class="header-right">
        <div class="search-bar">
            <input type="text" placeholder="Search our store">
            <i class="fa-solid fa-magnifying-glass"></i>
        </div>
<div class="icons">
    <a href="products.php">
        <i class="fa-solid fa-bag-shopping"></i>
    </a>

    <a href="signup.php">
        <i class="fa-regular fa-user"></i>
    </a>
</div>
</div>

    <script>
    const searchBox = document.querySelector('.search-box');
    const searchIcon = searchBox.querySelector('i');
    const searchInput = searchBox.querySelector('input');

    searchIcon.addEventListener('click', () => {
        searchBox.classList.toggle('active');
        searchInput.focus();
    });
</script>
</header>

    <!-- Breadcrumb -->
    <div class="breadcrumb">
        Rings <span>|</span> Woman
    </div>

    <section class="product-wrapper">

        <!-- LEFT: GALLERY -->
        <div class="gallery">
            <div class="site-images">
                <img src="assets/images/ring1.png">
                <img src="assets/images/ring1gold.png">
                <img src="assets/images/ring1hand.png">
            </div>

            <div class="main-image">
                <img src="assets/images/ring1.png">
            </div>
        </div>

        <!-- RIGHT: INFO -->
        <div class="info">
            <h1>"Little Flower" Adjustable Ring</h1>
            <p class="designer">Designed by: Crescentale</p>
            <p class="price">RM 33</p>

            <div class="options-row">
                <div class="colors">
                    <span class="color silver"></span>
                    <span class="color gold active"></span>
                </div>

                <a href="#" class="size-guide">Size Guide</a>
            </div>

            <label class="engrave">
                <input type="checkbox">
                Engraving + RM 5.00
            </label>

            <input type="text" class="engrave-input">

            <div class="cart-row">
            <div class="qty-box">
                <button class="qty-btn">−</button>
                <span class="qty-value">1</span>
                <button class="qty-btn">+</button>
            </div>

                <button class="add-btn">
                    Add to bag
                </button>
            </div>

            <div class="desc">
                <h3>Item Description</h3>
                <p>
                    Delicate yet meaningful, the Little Flower Adjustable Ring by Crescentale captures the quiet beauty of 
                    nature in its simplest form. Crafted with a slender band and a subtle floral accent, this piece symbolizes 
                    growth, tenderness, and effortless elegance. Its refined silhouette makes it perfect for everyday wear, while
                     the gentle detailing adds a graceful touch to special moments.
                </p>

                <p>
                    Designed with an adjustable open band, Little Flower offers a comfortable, flexible fit—ideal for stacking 
                    or wearing on its own as a minimal statement. Available in Sterling Silver and 18K Gold Plated, this ring 
                    allows you to choose the finish that best reflects your personal style.
                </p>

                <p>
                    Whether gifted or self-chosen, this piece is a timeless reminder that beauty often lives in the smallest 
                    details.
</p>

                <h3>Item Details</h3>
                <ul>
                    <li>Designed by Crescentale</li>
                    <li>Adjustable open-band design</li>
                    <li>Delicate flower motif</li>
                    <li>Available in Sterling Silver and 18K Gold Plated</li>
                    <li>Anti-tarnish coating for long-lasting shine</li>
                    <li>Waterproof & suitable for daily wear</li>
                    <li>Lightweight and comfortable</li>
                </ul>
            </div>
        </div>

    </section>

<section class="section">
    <h2>Designed by Crescented</h2>

    <div class="products">

        <div class="product">
            <img src="assets/images/ring1.png" alt="Little Flower Ring">
            <h4>"Little Flower" Adjustable Ring</h4>
            <div class="price">MYR 33</div>
            <div class="material">Silver-plated copper</div>
        </div>

        <div class="product">
            <img src="assets/images/bracelet1.png" alt="Ocean Wave Bracelet">
            <h4>Ocean Wave Elegance Bracelet</h4>
            <div class="price">MYR 48</div>
            <div class="material">Silver sterling & resin</div>
        </div>

        <div class="product">
            <img src="assets/images/earring1.png" alt="Ocean Whisper Earrings">
            <h4>Ocean Whisper Earrings</h4>
            <div class="price">MYR 29</div>
            <div class="material">Hypoallergenic alloy</div>
        </div>

        <div class="product">
            <img src="assets/images/ring2.png" alt="Eternal Bloom Ring">
            <h4>Eternal Bloom Ring</h4>
            <div class="price">MYR 39</div>
            <div class="material">Silver Sterling</div>
        </div>

        <div class="product">
            <img src="assets/images/necklace1.png" alt="Eternal Bloom Ring">
            <h4>Ocean Pulse Necklace</h4>
            <div class="price">MYR 33</div>
            <div class="material">18K Gold plating</div>
        </div>

    </div>
</section>

<!-- ===== Footer ===== -->
<footer class="site-footer">

    <div class="footer-grid">

        <div>
            <h4>Info</h4>
            <a href="#">Terms & Conditions</a>
            <a href="#">Privacy & Policy</a>
            <a href="#">FAQ</a>
        </div>

        <div>
            <h4>Customer Service</h4>
            <p><i class="fa-solid fa-phone"></i> 013-8974568</p>
            <p><i class="fa-solid fa-envelope"></i> tink@gmail.com</p>
        </div>

        <div>
            <h4>Follow Us</h4>
            <div class="footer-social">
                <i class="fa-brands fa-facebook"></i>
                <i class="fa-brands fa-instagram"></i>
            </div>
        </div>

    </div>

    <div class="footer-bottom">
        © <?php echo date("Y"); ?> Tink. All Rights Reserved
    </div>

</footer>

</body>
</html>