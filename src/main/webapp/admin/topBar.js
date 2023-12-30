/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function topBarHTML() {
    var html = '<div class="topBarContainer flex flexRow">';

    html += '<form class="searchBox">';
    html += '<input type="search" class="searchField" placeholder="Search" title="Search" required>';
    html += '<button type="submit" class="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button>';
    html += '</form>';

    html += '<div class="topBarIcons flex flexRow">';

    html += '<div class="proPic">';
    html += '<img src="https://i.postimg.cc/rF84Pdw2/default-Avatar.png">';
    html += '</div>';
    html += '</div>';

    html += '</div>';
    return html;
}

var container = document.getElementById('topBar');
container.innerHTML = topBarHTML();