// ... Previous JavaScript code ...

// Add animation for input fields on page load
const inputContainers = document.querySelectorAll('.input-container');
inputContainers.forEach(inputContainer => {
    inputContainer.style.transform = 'translateX(-100%)';
    setTimeout(() => {
        inputContainer.style.transform = 'translateX(0)';
    }, 100);
});
