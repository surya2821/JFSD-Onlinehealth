<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Professional JSP Page</title>
    <style>
        /* CSS styles for the page */
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        button {
            background-color: #008CBA;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            display: inline-block;
            margin: 10px;
            cursor: pointer;
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
    <header>
        <nav class="main-navbar">
            <div class="logo">Company Logo</div>
            <ul>
                <li><a href="/ok">Home</a></li>
                <li><a href="/about">About Us</a></li>
                <li><a href="/res">Our Resources</a></li>
                <li><a href="/login">Login</a></li>
            </ul>
        </nav>
        <h1>Doctor Table</h1>
    </header>
    <table>
        <tr>
            <th>Doctor Name</th>
            <th>Date</th>
            <th>Time</th>
        </tr>
        <tr th:each="record : ${myap}">
            <td th:text="${record.doc}"></td>
            <td th:text="${record.date}"></td>
            <td th:text="${record.time}"></td>
        </tr>
    </table>
</body>
</html>
