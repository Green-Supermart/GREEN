/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// TO TOP BUTTON START ============================================================================= //
const scrollToTopBtn = document.getElementById("toTopBtn");
window.onscroll = function () {
	scrollFunction();
};

function scrollFunction() {
	if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		scrollToTopBtn.style.display = "flex";
	} else {
		scrollToTopBtn.style.display = "none";
	}
}

scrollToTopBtn.addEventListener("click", function () {
	document.body.scrollTop = 0; // For Safari
	document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
});
// =============================================================================== TO TOP BUTTON END //


// RANDOM 404 ERROR ICON START ===================================================================== //
const icons = [
	'<i class="fa-solid fa-magnifying-glass"></i>',
	'<i class="fa-solid fa-person-digging"></i>',
	'<i class="fa-solid fa-bomb"></i>',
	'<i class="fa-solid fa-truck-fast"></i>',
	'<i class="fa-solid fa-ghost"></i>',
	'<i class="fa-solid fa-mug-hot"></i>',
	'<i class="fa-solid fa-lemon"></i>',
	'<i class="fa-solid fa-paper-plane"></i>',
	'<i class="fa-solid fa-wifi"></i>',
	'<i class="fa-solid fa-snowflake"></i>',
	'<i class="fa-solid fa-shop"></i>',
	'<i class="fa-solid fa-bag-shopping"></i>',
	'<i class="fa-solid fa-building"></i>',
	'<i class="fa-solid fa-tags"></i>',
	'<i class="fa-solid fa-rocket"></i>',
	'<i class="fa-solid fa-moon"></i>',
	'<i class="fa-solid fa-leaf"></i>',
	'<i class="fa-solid fa-ship"></i>',
	'<i class="fa-solid fa-soap"></i>',
	'<i class="fa-solid fa-coins"></i>',
	'<i class="fa-solid fa-receipt"></i>',
	'<i class="fa-solid fa-tv"></i>',
	'<i class="fa-solid fa-pizza-slice"></i>',
	'<i class="fa-solid fa-hippo"></i>'
];
const icon404 = document.getElementById('icon404');

function updateIcon() {
	// Choose a random message
	const randomIcon = icons[Math.floor(Math.random() * icons.length)];
	
	// Update the innerHTML with the random message
	icon404.innerHTML = randomIcon;
}

// Add event listeners for page load and refresh
window.addEventListener('load', updateIcon);
// ======================================================================= RANDOM 404 ERROR ICON END //