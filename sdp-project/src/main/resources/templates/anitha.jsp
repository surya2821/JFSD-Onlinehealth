<!DOCTYPE html>
<html>
<head>
    <title>Doctor Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #3498db;
            color: white;
            text-align: center;
            padding: 20px;
        }
        
        .head1 {
    background-color: #333;
    color: white;
    padding: 10px 0;
}

        #profile {
            max-width: 800px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            display: flex;
        }

        #profile img {
            width: 175px; /* Make the image wider */
            height: 200px; /* Make the image shorter */
            border-radius: 10px;
            margin-right: 20px;
        }

        #details {
            flex: 1;
        }

        #hospital-info {
            margin-top: 20px;
        }

        #experience {
            margin-top: 20px;
        }

        #map {
            height:400px;
            width: 100%;
            margin-top: 20px;
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
    </style>
</head>
<body>
	 <header class="head1">
        <nav class="main-navbar">
            <div class="logo">Company Logo</div>
            <ul>
                <li><a href="/success">Home</a></li>
                <li><a href="/about">About Us</a></li>
                <li><a href="/res">Our Resources</a></li>
                <li><a href="/login">Login</a></li>
            </ul>
        </nav>
    </header>
    <header>
        <h1>Dr. Anitha</h1>
        <p>Cardiologist</p>
    </header>

    <div id="profile">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZeEzeqSeG5MwgQd6_tq3q66w-XrYcZ8lZZA&usqp=CAU" alt="Dr. John Doe">
        <div id="details">
            <div id="hospital-info">
                <h2>Hospital Information</h2>
                <p><strong>Hospital:</strong> Apollo Hospital</p>
                <p><strong>Department:</strong> Cardiology</p>
            </div>

            <div id="experience">
                <h2>Experience</h2>
                <p>Dr. John Doe has over 15 years of experience in the field of cardiology. He specializes in diagnosing and treating various heart conditions.</p>
            </div>

            <div id="location">
                <h2>Location</h2>
                <div id="map">

                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61199.65800752208!2d80.54321394863278!3d16.527176700000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35efee51c9a581%3A0x44c848dd300d9ea7!2seUPHC%2C%20Apollo%20Hospitals%20WYNCHPeta%2C%20Vinchipeta!5e0!3m2!1sen!2sin!4v1699135256052!5m2!1sen!2sin" width="600" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div>

    <script>
        // You can add JavaScript code here to display a Google Map or another map API for the location.
    </script>
</body>
</html>
