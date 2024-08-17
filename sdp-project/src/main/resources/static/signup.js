// script.js
document.addEventListener("DOMContentLoaded", function () {
    const registrationForm = document.getElementById("registrationForm");
    registrationForm.addEventListener("submit", function (e) {
        e.preventDefault();

        // You can add form validation logic here
        // Example: check if all required fields are filled
        const username = document.getElementById("username").value;
        const email = document.getElementById("email").value;
        const password = document.getElementById("password").value;

        if (!username || !email || !password) {
            alert("Please fill in all required fields.");
        } else {
            registrationForm.submit();
        }
    });
});
