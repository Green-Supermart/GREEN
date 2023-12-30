/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var currentURL = window.location.href;
var searchQuery = currentURL.split("?")[1].split("=")[1];
// remove the %20 from the search query
searchQuery = searchQuery.replaceAll("%20", " ");
searchQuery = searchQuery.replaceAll("%27", "'");
searchQuery = searchQuery.replaceAll('%22', '"');
searchQuery = searchQuery.replaceAll("%3C", "<");
searchQuery = searchQuery.replaceAll("%3E", ">");

var searchField = document.getElementById("searchField");
var resultKeyword = document.getElementById("resultKeyword");

// Set the search field value to the search query
searchField.value = searchQuery;

// Set the result keyword to the search query
resultKeyword.innerText = searchQuery;

// after page is loaded, focus on the search field
window.onload = function() {
    searchField.focus();
};