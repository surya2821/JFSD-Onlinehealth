<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Lab Tests</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #0073e6;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        h1 {
            font-size: 28px;
        }

        .lab-tests {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .hospital-details {
            margin-bottom: 20px;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            padding: 10px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            transition: transform 0.3s ease-in-out;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }

        li:hover {
            transform: translateY(-5px);
        }

        img {
            max-width: 50%;
            height: auto;
            flex: 1;
        }

        .content {
            flex: 3;
            padding: 0 20px;
        }

        p {
            font-size: 18px;
            margin: 0;
        }

        button {
            background-color: #0073e6;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out, transform 0.3s ease-in-out;
            margin-top: 125px;
            border-radius: 100px;
        }

        button:hover {
            background-color: #005bb7;
            transform: scale(1.1);
        }
        header {
    background-color: #333;
    color: white;
    padding: 10px 0;
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
    background-color: #333;
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
                <li><a href="#">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Our Resources</a></li>
                <li><a href="login.html">Login</a></li>
            </ul>
        </nav>
    </header>
    <center>
    <h1>Medical Lab Tests</h1>
    </center>
    <div class="lab-tests">
        <div class="hospital-details">
            <h2>Hospital Information</h2>
            <p><strong>Name of the Hospital:</strong> Apollo Hospital   </p>
            <!-- Add more hospital details as needed -->
        </div>
        <h2>List of Medical Lab Tests</h2>
        <ul>
            <li>
                <img src="https://my.clevelandclinic.org/-/scassets/images/org/health/articles/22041-anion-gap-blood-test" alt="Blood Test">
                <div class="content">
                    <p>Blood Test</p>
                    <button>Book Lab Test</button>
                </div>
            </li>
            <li>
                <img src="https://media.post.rvohealth.io/wp-content/uploads/2023/03/urine-strip-test-1200-628-facebook-1200x628.jpg" alt="Urinalysis">
                <div class="content">
                    <p>Urinalysis</p>
                    <button>Book Lab Test</button>
                </div>
            </li>
            <li>
                <img src="https://www.myheart.org.sg/wp-content/uploads/2022/08/Cholesterol-Test-Results.jpg" alt="Lipid Profile">
                <div class="content">
                    <p>Lipid Profile</p>
                    <button>Book Lab Test</button>
                </div>
            </li>
            <li>
                <img src="https://prestigeer.com/wp-content/uploads/2022/02/liver-function-test-min.jpg" alt="Liver Function Test">
                <div class="content">
                    <p>Liver Function Test</p>
                    <button>Book Lab Test</button>
                </div>
            </li>
            <li>
                <img src="https://www.lalpathlabs.com/blog/wp-content/uploads/2016/12/complete-blood-count.jpg" alt="Complete Blood Count (CBC)">
                <div class="content">
                    <p>Complete Blood Count (CBC)</p>
                    <button>Book Lab Test</button>
                </div>
            </li>
            <li>
                <img src="https://www.niddk.nih.gov/-/media/Images/Health-Information/Diagnostic-Tests/thyroid-TW_Card_July_1200x630_02.jpg" alt="Thyroid Function Test">
                <div class="content">
                    <p>Thyroid Function Test</p>
                    <button>Book Lab Test</button>
                </div>
            </li>
            <!-- Add similar <li> elements for other lab tests -->
        </ul>
    </div>
</body>
</html>
