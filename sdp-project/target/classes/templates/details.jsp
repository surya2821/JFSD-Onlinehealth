<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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

/* Image styling */
div[th:each="im"] {
    display: inline-block;
    width: 200px;
    height: 400px;
    margin: 10px;
    overflow: hidden;
}

/* CSS to resize the images to 200px wide and 400px high */
div[th:each="im"] img {
    width: 200px;
    height: 400px;
    object-fit: cover;
    object-position: center top; /* Center the image vertically */
}

/* File input and button styling */
form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

input[type="file"] {
    margin: 10px 0;
    padding: 10px;
    background-color: #f0f0f0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="submit"] {
    padding: 10px 20px;
    background-color: #337ab7;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: transform 0.2s;
}

input[type="submit"]:hover {
    transform: translateY(-3px);
}
</style>
</head>
<body>
<header>
    <nav class="main-navbar">
        <div class="logo">Company Logo</div>
        <ul>
            <li><a href="ok">Home</a></li>
            <li><a href="/about">About Us</a></li>
            <li><a href="/res">Our Resources</a></li>
            <li><a href="/login">Login</a></li>
        </ul>
    </nav>
</header>
<form action="upload" method="post" enctype="multipart/form-data" th:object="${img}">
    <div>
        <input type="file" name="profile" />
    </div>
    <div>
        <input type="submit" value="upload" />
    </div>
</form>

<div th:each="im:${list}">
    <div>
        <img alt="" th:src="@{'profile/'+${im.imageName}} ">
    </div>
</div>
</body>
</html>
