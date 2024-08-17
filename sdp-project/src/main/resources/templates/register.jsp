<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" type="text/css" href="signup.css"> <!-- Include CSS stylesheet -->
</head>
<body>
    <div class="container">
        <h2>Registration Form</h2>
        <form id="registrationForm" action="/insert"> <!-- Add an ID to the form for JavaScript -->
            <label for="username">Username</label>
            <input type="text" id="username" name="name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <!-- User Type dropdown -->
            <label for="userType">User Type</label>
            <select id="userType" name="userType">
                <option value="user">User</option>
                <option value="doctor">Doctor</option>
            </select>

            <button type="submit">Register</button>
        </form>
    </div>

    <script src="signup.js"></script> <!-- Include JavaScript file -->
</body>
</html>
