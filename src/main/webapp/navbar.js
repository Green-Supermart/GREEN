/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function navbarHTML() {
    var html = '<div class="navContainer">';
    html += '<a class="navLogo" href="/">';
    html += '<img src="https://i.postimg.cc/G9nCKgLp/green-Logo.png" alt="Logo">';
    html += '</a>';
    
    html += '<div class="catDropdown">';
    html += '<span id="catDropdownSpan" style="display: flex; flex-direction: row; gap: 10px; align-items: center; cursor: pointer;">All Categories';
    html += '<i class="fa-solid fa-angle-down"></i></span>';
    
    html += '<div class="catDropdownContent">';
    html += '<table>';
    html += '<tr>';
    html += '<td><a href="http://localhost:8090/categories/beverages.jsp">Beverages</a></td>';
    html += '<td><a href="http://localhost:8090/categories/biscuits.jsp">Biscuits</a></td>';
    html += '<td><a href="http://localhost:8090/categories/cereals.jsp">Cereals</a></td>';
    html += '</tr>';
    
    html += '<tr>';
    html += '<td><a href="http://localhost:8090/categories/cosmetics.jsp">Cosmetics</a></td>';
    html += '<td><a href="http://localhost:8090/categories/desserts.jsp">Desserts</a></td>';
    html += '<td><a href="http://localhost:8090/categories/flours.jsp">Flours</a></td>';
    html += '</tr>';
    
    html += '<tr>';
    html += '<td><a href="http://localhost:8090/categories/fruits.jsp">Fruits</a></td>';
    html += '<td><a href="http://localhost:8090/categories/medicine.jsp">Medicine</a></td>';
    html += '<td><a href="http://localhost:8090/categories/pastaNoodles.jsp">Pasta & Noodles</a></td>';
    html += '</tr>';
    
    html += '<tr>';
    html += '<td><a href="http://localhost:8090/categories/sauces.jsp">Sauces</a></td>';
    html += '<td><a href="http://localhost:8090/categories/snacks.jsp">Snacks</a></td>';
    html += '<td><a href="http://localhost:8090/categories/soapsLiquids.jsp">Soaps & Cleaning</a></td>';
    html += '</tr>';
    
    html += '<tr>';
    html += '<td><a href="http://localhost:8090/categories/spreads.jsp">Spreads</a></td>';
    html += '<td><a href="http://localhost:8090/categories/stationary.jsp">Stationary</a></td>';
    html += '<td><a href="http://localhost:8090/categories/vegetables.jsp">Vegetables</a></td>';
    html += '</tr>';
    html += '</table>';
    html += '</div>';
    html += '</div>';
    
    html += '<form class="searchBox" id="searchBox">';
    html += '<input type="search" id="searchField" class="searchField" placeholder="Search" title="Search" required>';
    html += '<button type="submit" id="searchBtn" class="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button>';
    html += '</form>';
    
    html += '<div class="actionIcons flex flexRow">';
    html += '<a href="/wishlist.jsp" title="Wishlist">';
    html += '<i class="fa-solid fa-heart"></i>';
    html += '</a>';
    html += '<div id="cartIcon" title="Show Cart (Alt + C)">';
    html += '<i class="fa-solid fa-cart-shopping"></i>';
    html += '</div>';
    html += '</div>';
    
    html += '<div class="userPic">';
    html += '<img id="proPic" title="Account Management" src="https://i.postimg.cc/rF84Pdw2/default-Avatar.png">';
    
    html += '<div id="userDropdown" class="userDropdown">';
    html += '<a id="accountSettingsLink" href="/getUserData">Account Settings</a>';
    html += '<a id="ordersLink" href="http://localhost:8090/orders.jsp">Orders</a>';
    html += '<a id="helpCenterLink" href="http://localhost:8090/helpCenter.jsp">Help Center</a>';
    html += '<a id="registerLink" href="http://localhost:8090/register.jsp">Register</a>';
    html += '<a id="loginLink" href="http://localhost:8090/login.jsp">Login</a>';
    html += '<a id="logoutLink" onclick="logout()" href="/index.jsp">Log Out</a>';
    html += '</div>';
    
    html += '</div>';
    html += '</div>';
    
    // 1 start
    html += '<div id="cartBackdrop" style="display: none; height: 100vh; width: 100%; background: #24242470; position: fixed; top: 0; left: 0; z-index: 20;">';
    // cartBox start
    html += '<div id="cartBox" style="display: flex; position: fixed; top: 5px; right: 5px; height: calc(100vh - 10px); width: 400px; background: #ffffff; align-items: center; justify-content: center; z-index: 10; filter: drop-shadow(#0001 0px 0px 15px); border-radius: 10px;">';
    
    // cartBox content start
    html += '<div style="display: flex; flex-direction: column; justify-content: space-between; height: calc(100% - 40px); width: calc(100% - 40px);">';
    html += '<span style="display: flex; flex-direction: row; align-items: center; justify-content: start; gap: 15px; height: auto;">';
    html += '<i class="fa-solid fa-angle-left" style="font-size: 18px; color: #1DA31A; cursor: pointer;" id="cartBackIcon" title="Close Cart (Alt + C)"></i>';
    html += '<h1 style="height: 35px; font-size: 22px; font-weight: 400;">Your Cart</h1>';
    html += '</span>';
    
    html += '<p id="cartEmptyMsg" style="display: flex; height: calc(100% - 200px); width: 90%; color: #808080; background: #ffffff; justify-content: center; align-items: center; font-size: 14px; font-weight: 300; position: absolute; top: 70px;">Your cart is empty</p>';
    
    html += '<div id="cartListContainer" style="height: calc(100% - 160px); width: 100%; overflow: auto; overflow-x: auto;">';
    html += '<div id="cartList" style="height: auto; width: 100%; display: flex; flex-direction: column; justify-content: start; gap: 8px;">';
    
    // cards are here
    
    html += '</div>';
    html += '</div>';
    
    html += '<div style="height: 40px; width: 100%; display: flex; flex-direction: row; justify-content: space-between; align-items: center;">';
    html += '<h1 style="font-size: 16px; font-weight: 400; margin-left: 15px;">Total</h1>';
    html += '<h1 id="cartTotalPrice" style="font-size: 16px; font-weight: 400; margin-right: 15px;">Rs. 0.00</h1>';
    html += '</div>';
    
    html += '<div style="height: 40px; width: 100%; display: flex; flex-direction: row; justify-content: end; align-items: center; gap: 15px;">';
    html += '<button id="cartCancelBtn" style="height: 100%; padding: 0 15px; color: #242424; background: #ECECEC; border: none; border-radius: 5px; outline: none; cursor: pointer;">Cancel</button>';
    html += '<button id="cartAddBtn" style="height: 100%; padding: 0 15px; color: #ECECEC; background: #1DA31A; border: none; border-radius: 5px; outline: none; cursor: pointer;">Checkout</button>';
    html += '</div>';

    html += '</div>';
    // cartBox end
    html += '</div>';
    // 1 end
    
    html += '</div>';
    return html;
}

var container = document.getElementById('navbar');
container.innerHTML = navbarHTML();

// DROPDOWN MENU
var catDropdown = document.querySelector('.catDropdown');
var catDropdownContent = document.querySelector('.catDropdownContent');

catDropdown.addEventListener('click', function() {
    catDropdownContent.classList.toggle('catDropdownShow');
});
document.addEventListener('click', function(event) {
    if (!catDropdown.contains(event.target)) {
        catDropdownContent.classList.remove('catDropdownShow');
    }
});
catDropdownContent.addEventListener('click', function(event) {
    event.stopPropagation();
});

// Add right arrow to category links when hovered
var catDropdownContentLinks = document.querySelectorAll('.catDropdownContent a');
catDropdownContentLinks.forEach(function(link) {
    link.addEventListener('mouseover', function() {
        link.innerHTML += ' <i class="fa-solid fa-chevron-right"></i>';
    });
    link.addEventListener('mouseout', function() {
        link.innerHTML = link.innerHTML.replace(' <i class="fa-solid fa-chevron-right"></i>', '');
    });
});

// when start scrolling, hide catDropdownContent
window.addEventListener('scroll', function() {
    catDropdownContent.classList.remove('catDropdownShow');
});

// if catDropdownContent element contains catDropdownShow class, set background of catDropdownSpan to #ECECEC
const catDropdownSpan = document.getElementById("catDropdownSpan");

setInterval(function() {
    if (catDropdownContent.classList.contains('catDropdownShow')) {
        catDropdownSpan.style.background = '#ECECEC';
        catDropdownSpan.style.padding = '5px 10px';
        catDropdownSpan.style.borderRadius = '5px';
    } else {
        catDropdownSpan.style.background = 'transparent';
        catDropdownSpan.style.padding = '5px 10px';
        catDropdownSpan.style.borderRadius = '5px';
    }
}, 100);



// SEARCH BOX
var searchBox = document.getElementById('searchBox');
var searchField = document.getElementById('searchField');
var searchBtn = document.getElementById('searchBtn');

// When Search Field is Focused
searchField.addEventListener('focus', function() {
    // Search Box
    searchBox.style.border = '1px solid #1DA31A';
    searchBox.style.transition = '0.5s';
    // Search Button
    searchBtn.style.color = '#1DA31A';
    searchBtn.style.transition = '0.5s';
});
// When Search Field is Not Focused
searchField.addEventListener('blur', function() {
    // Search Box
    searchBox.style.border = '1px solid transparent';
    searchBox.style.transition = '0.5s';
    // Search Button
    searchBtn.style.color = '#808080';
    searchBtn.style.transition = '0.5s';
});


searchBox.addEventListener('submit', function(event) {
    event.preventDefault();

    var searchQuery = searchField.value;
    if (searchQuery !== '') {
        window.location.href = 'search?q=' + searchQuery;
    }
});



const proPic = document.getElementById("proPic");
const userDropdown = document.getElementById("userDropdown");

// when clicked on proPic, toggle userDropdown
proPic.addEventListener('click', function() {
    userDropdown.classList.toggle('userDropdownActive');
});

// when clicked anywhere outside userDropdown, hide userDropdown
document.addEventListener('click', function(event) {
    if (!proPic.contains(event.target)) {
        userDropdown.classList.remove('userDropdownActive');
    }
});

userDropdown.addEventListener('click', function(event) {
    event.stopPropagation();
});

// when start scrolling, hide userDropdown
window.addEventListener('scroll', function() {
    userDropdown.classList.remove('userDropdownActive');
});


function logout(){
    fetch('/logout')
        .then(response => response.json())
        .then(data => {
            console.log(data);
        })
        .catch(error => {
            console.error('Error:', error);
        });
}