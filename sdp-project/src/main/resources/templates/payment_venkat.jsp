<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Gateway</title>
    <style>
    .form-group {
    margin: 15px 0;
    display: flex;
    flex-direction: column; /* Labels on top of the fields */
}

.form-subgroup {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 10px;
}

label {
    font-weight: bold;
    margin-right: 10px;
}

input[type="text"], input[type="date"], select {
    flex: 1;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    transition: border-color 0.3s, box-shadow 0.3s;
}

button.book-now {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 18px;
    transition: background-color 0.2s;
}

button.book-now:hover {
    background-color: #0056b3;
}

/* Style the dropdown menu */
select {
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    background: transparent url('arrow.png') no-repeat right;
    background-position: 95% center;
    background-size: 20px;
    padding-right: 30px;
}
    
    </style>
</head>
<body>
    <div class="payment-form">
        <h1>Book your Appointment Now</h1>
        <form action="/booked" th:object="${app2 }">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="doc" value="Venkat" required>
            </div>
            <div class="form-group">
                <label for="name">Enter your UserName</label>
                <input type="text" id="username" name="pat" required>
            </div>
            <div class="form-group">
                <label for="specialization">Specialization</label>
                <input type="text" id="specialization" name="specialization" value="Cardiologist" required>
            </div>
            <div class="form-group">
                <label for="specialization">Mobile number</label>
                <input type="text" id="specialization" name="mobile"  required>
            </div>
            <div class="form-group">
                <label for="fee">Fee</label>
                <input type="text" id="fee" name="fee" value="120" required>
            </div>
            <div class="form-group">
    <div class="form-subgroup">
        <label for="date">Date</label>
        <input type="date" id="date" name="date" required>
    </div>
    <div class="form-subgroup">
        <label for="timings">Select Timings</label>
        <select id="timings" name="time">
            <option value="9:00 AM to 9:45 AM">9:00 AM to 9:45 AM</option>
            <option value="1:45 PM to 2:30 PM">1:45 PM to 2:30 PM</option>
            <option value="8:45 PM to 9:00 PM">8:45 PM to 9:00 PM</option>
        </select>
    </div>
</div>

            <button type="submit" class="book-now">Book Now</button>
        </form>
    </div>
</body>
</html>
