<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Health Consultation Company</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eaeaea;
            color: #333;
        }

        header {
            background-color: #00e5ff;
            color: #000000;
            padding: 20px;	
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
        }

        .container {
            max-width: 900px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .container:hover {
            transform: scale(1.02);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }

        h2 {
            color: #000000;
            border-bottom: 2px solid #4e92f1;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .journey-container {
            margin-bottom: 30px;
        }

        .journey-container p {
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .team-member {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            border-bottom: 1px solid #000000;
            padding-bottom: 20px;
        }

        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 3px solid #ff0000;
            margin-right: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s;
        }

        .team-member img:hover {
            transform: scale(1.1);
        }

        .team-member-details {
            flex: 1;
        }

        .team-member-details h3 {
            margin: 0;
            color: #000000;
        }

        .team-member-details p {
            margin: 5px 0;
        }

        .images-container {
            display: flex;
            justify-content: space-around;
            margin: 40px 0;
        }

        .images-container img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        footer {
            background-color: #00e5ff;
            color: #000000;
            text-align: center;
            padding: 15px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>About Us - Health Consultation Company</h1>
    </header>

    <div class="container">
        <div class="journey-container">
            <h2>Our Journey</h2>
            <p>Our online health consultation company was founded with a vision to provide accessible and reliable healthcare to people worldwide. Over the years, we have grown and evolved, expanding our services to address the diverse health needs of our clients. Our journey has been marked by a commitment to excellence, innovation, and the well-being of our patients.</p>
            <p>We have successfully helped thousands of individuals and families lead healthier lives. Our dedicated team of medical professionals, nutritionists, and support staff work tirelessly to ensure that our clients receive the highest quality care and guidance.</p>
            <p>We are proud to have made a positive impact on the health and well-being of our clients, and we look forward to continuing our mission to provide top-notch online health consultation services.</p>
        </div>

        <div class="team-member">
            <img src="t1.jpg" alt="Dr. Settippali Keya Sanjana">
            <div class="team-member-details">
                <h3>Dr.Settippali Keya Sanjana</h3>
                <p>Chief Medical Officer</p>
            </div>
        </div>
        <div class="team-member">
            <img src="t2.jpg" alt="Dr. Alla Sai Surya">
            <div class="team-member-details">
                <h3>Dr. Alla Sai Surya</h3>
                <p>NeuroSurgeon</p>
            </div>
        </div>
        <div class="team-member">
            <img src="t3.jpg" alt="Dr. Anirudh Koundinya">
            <div class="team-member-details">
                <h3>Dr. Anirudh Koundinya</h3>
                <p>Cardiologist</p>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; AKSS Health Services. All rights reserved.</p>
    </footer>
</body>
</html>
