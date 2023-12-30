/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function footerHTML() {
    var html = '<div class="footerContainer flex flexRow">';
    html += '<div class="footerImgSection flex flexCol">';
    
    html += '<div class="footerImg">';
    html += '<img src="https://i.postimg.cc/G9nCKgLp/green-Logo.png" alt="Logo">';
    html += '</div>';
    
    html += '<div class="flex flexCol" id="copyright">';
    html += 'Copyright © ' + new Date().getFullYear() + ' GREEN Supermart Services<br>';
    html += 'All Rights Reserved';
    html += '</div>';
    
    html += '<div>';
    html += '<i class="fa-solid fa-envelope"></i> ';
    html += '<a href="mailto:greensupermartlk@gmail.com">greensupermartlk@gmail.com</a>';
    html += '</div>';
    
    html += '</div>';
    
    html += '<div class="footerContent flex flexRow">';
    html += '<div class="footerLinks flex flexCol">';
    html += '<h1>Support</h1>';
    html += '<a href="/helpCenter.jsp">Help Center</a>';
    html += '<a href="/returnPolicy.jsp">Return Policy</a>';
    html += '</div>';
    
    html += '<div class="footerLinks flex flexCol">';
    html += '<h1>Legal</h1>';
    html += '<a href="/privacyPolicy.jsp">Privacy Policy</a>';
    html += '<a href="/termsConditions.jsp">Terms & Conditions</a>';
    html += '</div>';
    
    html += '<div class="footerLinks flex flexCol">';
    html += '<h1>Socials</h1>';
    html += '<span class="externLinks">';
    html += '<a href="https://github.com/Green-Supermart" target="_blank">GitHub</a> <i class="fa-solid fa-square-arrow-up-right"></i>';
    html += '</span>';
    html += '<span class="externLinks">';
    html += '<a href="https://www.instagram.com" target="_blank">Instagram</a> <i class="fa-solid fa-square-arrow-up-right"></i>';
    html += '</span>';
    html += '</div>';
    html += '</div>';
    
    html += '</div>';
    return html;
}

var container = document.getElementById('footer');
container.innerHTML = footerHTML();