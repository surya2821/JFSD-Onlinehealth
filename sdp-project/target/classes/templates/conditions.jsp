<!DOCTYPE html>
<html>
<head>
    <title>Professional Image Carousel</title>
    <style>
        /* Center the carousel container horizontally */
        .carousel-container {
            width: 80%;
            margin: 0 auto;
            overflow: hidden;
        }

        /* Set the width and height for each image */
        .carousel-image {
            width: 65%;
            height: 350px;
            display: none;
            margin-left: 150px;
            transition: transform 0.3s;
        }

        /* Display the first image initially */
        .carousel-image:first-child {
            display: block;
        }

        .carousel-image:hover {
            transform: translateY(-5px); /* Move up on hover */
        }

        /* Carousel navigation buttons */
        .carousel-nav {
            display: flex;
            justify-content: center;
            margin-top: 15px;
        }

        .nav-button {
            cursor: pointer;
            background: #007BFF;
            color: #fff;
            padding: 12px 24px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.3s, transform 0.3s, color 0.3s;
            border-radius: 4px; /* Add border-radius */
        }

        .nav-button:hover {
            background: #0056b3;
            transform: scale(1.05); /* Increase size on hover */
            color: #fff;
            border-radius: 6px; /* Adjust border-radius on hover */
        }

        /* Container styles */
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }

        .container-heading {
            text-align: center;
            width: 100%;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .book-button-container {
            display: flex;
            flex-direction: column;
            text-align: center;
            align-items: center;
            margin-bottom: 20px;
            margin-left:0;
            margin-right:0px;
        }

        .book-button {
            background: #007BFF;
            color: #fff;
            padding: 12px 24px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.3s, transform 0.3s, color 0.3s, border-radius 0.3s;
            border-radius: 4px; /* Add border-radius */
        }

        .book-button:hover {
            background: #0056b3;
            transform: scale(1.05); /* Increase size on hover */
            color: #fff;
            border-radius: 6px; /* Adjust border-radius on hover */
        }

        .book-button img {
            max-width: 50%; /* Adjusted max-width */
            max-height: 50%; /* Added max-height */
        }

        .book-button-container img {
            max-width: 50%; /* Adjusted max-width */
            max-height: 50%; /* Added max-height */
            transition: transform 0.3s;
        }

        .book-button-container:hover img {
            transform: translateY(-5px); /* Move up on hover */
        }
        header {
    background-color: #333;
    color: white;
    padding: 10px 0;
    margin-bottom: 10px;
}

.main-navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
}

.main-navbar ul {
    list-style: none;
    margin: 0;
    padding: 0;
}

.main-navbar li {
    margin-right: 20px;
    display: inline;
}

.main-navbar a {
    text-decoration: none;
    color: white;
    transition: color 0.3s ease;
}

.main-navbar a:hover {
    color: #FF5733;
}

/* Create space between the main navbar and mini navbar */
.navbar-space {
    height: 20px;
}
    </style>
</head>
<body>

    <header>
        <nav class="main-navbar">
            <div class="logo">Company Logo</div>
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Our Resources</a></li>
            </ul>
        </nav>
    </header>

    <div class="carousel-container">
        <div class="carousel-images">
            <img class="carousel-image" src="https://img.freepik.com/free-vector/flat-design-immunity-infographic_23-2149112325.jpg?size=626&ext=jpg" alt="Image 1">
            <img class="carousel-image" src="https://img.freepik.com/free-vector/boost-your-immune-system-infographic_23-2148611796.jpg?size=626&ext=jpg" alt="Image 2">
            <img class="carousel-image" src="https://img.freepik.com/free-vector/different-tips-anxiety-infographic_23-2148536186.jpg?size=626&ext=jpg" alt="Image 3">
            <img class="carousel-image" src="https://img.freepik.com/premium-vector/how-have-good-night-s-sleep-so-that-body-becomes-healthy_7496-1673.jpg?size=626&ext=jpg&ga=GA1.1.445698898.1697262656&semt=ais" alt="Image 4">
        </div>
    </div>
    <div class="container">
        <div class="container-heading">
            <h2>General health conditions</h2>
        </div>
        <div class="book-button-container">
            <img src="https://media.istockphoto.com/id/612409562/photo/sick-child-with-high-fever.jpg?s=612x612&w=0&k=20&c=DNchQeK5vlvWiBDdYvMKkNsC_-T5ZOFcOupnesSGLSY=" alt="Book 1">
            <p>General Flu</p>
            <button class="book-button">Book Now</button>
        </div>
        <div class="book-button-container">
            <img src="https://media.istockphoto.com/id/1175096172/photo/sick-boy-at-the-school-blowing-his-nose-in-class.jpg?s=612x612&w=0&k=20&c=m5iPrMJQvzxgIksShD-RLlKsNOtSSDjbPtw6m1SE5es=" alt="Book 2">
            <p></p>
            <button class="book-button">Book Now</button>
        </div>
    </div>

    <div class="container">
        <div class="container-heading">
            <h2>Nutrition based searches</h2>
        </div>
        <div class="book-button-container">
            <img src="https://media.istockphoto.com/id/1342643931/photo/malnutrition.jpg?s=612x612&w=0&k=20&c=iBxBpLDN3IzA3WWEdyG04rTMi3PBMhRdZpVOF2-N93c=" alt="Book 1">
            <button class="book-button">Book Now</button>
        </div>
        <div class="book-button-container">
            <img src="https://media.istockphoto.com/id/940673494/photo/fat-man.jpg?s=612x612&w=0&k=20&c=tA_k1FIP6tKmXPym0e3ZkHYiujd8tUJmJNDqH_HFg2I=" alt="Book 2">
            <button class="book-button">Book Now</button>
        </div>
        
        <div class="book-button-container">
            <img src="https://media.istockphoto.com/id/1345475766/photo/woman-have-damaged-and-broken-hair-loss-hair-dry-problem-concept.jpg?s=612x612&w=0&k=20&c=4Yzv2YXMKWkzfFsSmSPuEcFup3MvH4oJzhLYevKv8m8=" alt="Book 2">
            <button class="book-button">Book Now</button>
        </div>
    </div>


    <div class="container">
        <div class="container-heading">
            <h2>Specific issues</h2>
        </div>
        <div class="book-button-container">
            <img src="https://media.istockphoto.com/id/1284084384/photo/annoyed-man-scratching-itch-on-his-arm.jpg?s=612x612&w=0&k=20&c=4ZHwfb9FmayJPTGd_uXmtd7gp0U0jhONaZnPHuGYr3Q=" alt="Book 1">
            <button class="book-button">Book Now</button>
        </div>
        <div class="book-button-container">
            <img src="https://media.istockphoto.com/id/1209425897/photo/professional-psychotherapies-and-young-woman-suffering-from-ptsd.jpg?s=612x612&w=0&k=20&c=OyyF4MB0MXw2lmGtxxluWJLLjjWprdoZnkGJQGQ0rZQ=" alt="Book 2">
            <button class="book-button">Book Now</button>
        </div>
        <div class="book-button-container">
            <img src="https://media.istockphoto.com/id/980266138/photo/competent-medical-worker-examining-his-visitor.jpg?s=612x612&w=0&k=20&c=oT-RFS7mnbunUlWBO8qHnPmD_Jf-H3cIgAtvM07Po1o=" alt="Book 2">
            <button class="book-button">Book Now</button>
        </div>
    </div>

    <script>
        const images = document.querySelectorAll('.carousel-image');
        let currentIndex = 0;
        const totalImages = images.length;

        function nextImage() {
            images[currentIndex].style.display = 'none';
            currentIndex = (currentIndex + 1) % totalImages;
            images[currentIndex].style.display = 'block';
        }

        function prevImage() {
            images[currentIndex].style.display = 'none';
            currentIndex = (currentIndex - 1 + totalImages) % totalImages;
            images[currentIndex].style.display = 'block';
        }

        function startCarousel() {
            setInterval(nextImage, 5000);
        }

        startCarousel(); // Start the carousel
    </script>
</body>
</html>
