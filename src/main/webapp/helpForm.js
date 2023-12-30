/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const helpForm = document.getElementById("helpForm");
const submitStateMsg = document.getElementById("submitStateMsg");

window.addEventListener("load", function() {
    helpForm.addEventListener("submit", function(e) {
        e.preventDefault();
        const form = e.target;
        
        // submit form data
        const data = new FormData(form);
        const action = e.target.action;
        
        submitStateMsg.innerHTML = '<i class="fa-solid fa-circle-notch fa-spin"></i>Please wait!';
        
        fetch(action, {
            method: 'POST',
            body: data,
        })
        
        .then(() => {
            helpForm.reset();
            submitStateMsg.innerHTML = '<i class="fa-solid fa-circle-check"></i>Your message has been sent!';
            setTimeout(() => {
                submitStateMsg.innerHTML = '';
            }, 3000);
        })
        
        .catch(() => {
            submitStateMsg.innerHTML = '<i class="fa-solid fa-circle-xmark"></i>Oops! Something went wrong. Please try again!';
            setTimeout(() => {
                submitStateMsg.innerHTML = '';
            }, 3000);
        });
    });
});