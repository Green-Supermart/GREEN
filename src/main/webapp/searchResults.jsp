<%-- 
    Document   : searchResults
    Created on : Dec 7, 2023, 11:44:44 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="searchCards.css">
        <link rel="stylesheet" href="cart.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Search Results | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="style.css" as="style" type="text/css">
        <link rel="preload" href="searchCards.css" as="style" type="text/css">
        <link rel="preload" href="cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/brf9L1tT/placeholder.png" as="image" type="image/png">
        
        <script src="script.js" defer></script>
        <script src="search.js" defer></script>
        <script src="cart.js" defer></script>
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- HEADER START ============================================================-->
        <header class="flex">
            <h1>Search Results for "<span id="resultKeyword"></span>"</h1>
        </header>
        <!--============================================================== HEADER END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <div class="searchCardsContainer flex flexCol" style="gap: 30px;">
                    
                    <div class="searchCard flex flexRow">
                        <div class="searchCardContent flex flexRow">
                            <div class="searchCardImg">
                                <img src="https://i.postimg.cc/brf9L1tT/placeholder.png" alt="Product Image">
                            </div>
                            
                            <div class="searchCardInfo flex flexCol">
                                <a href="singleCategory.jsp" class="flex flexRow">
                                    In Soaps <i class="fa-solid fa-chevron-right"></i>
                                </a>
                                
                                <span class="flex flexCol" style="gap: 6px;">
                                    <h1 style="font-size: 18px; font-weight: 400;">Pears Baby Soap Venivel & Turmeric</h1>
                                    
                                    <span class="flex flexRow" style="font-size: 10px; align-items: center; gap: 15px;">
                                        <h2 style="color: #1DA31A; font-size: 14px; font-weight: 400;">Rs. 152.00</h2>
                                        <h2 style="color: #808080; text-decoration-color: #808080; text-decoration-line: line-through; text-decoration-thickness: 1.5px;">Rs. 190.00</h2>
                                    </span>
                                </span>
                            </div>
                        </div>
                        
                        <div class="flex flexRow" style="width: 15%; height: 100%; gap: 18%; justify-content: start; align-items: center; color: #1DA31A; font-size: 18px;">
                            <span class="searchCardIcon flex" title="Add to Wishlist">
                                <i class="fa-solid fa-heart"></i>
                            </span>
                            
                            <span class="searchCardIcon flex" title="Add to Cart">
                                <i class="fa-solid fa-shopping-cart"></i>
                            </span>
                            
                            <span class="searchCardIcon flex" title="View Product">
                                <a href="singleProduct.jsp">
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </a>
                            </span>
                        </div>
                    </div>

                </div>
                

            </div>
        </div>
        <!--======================================================== PAGE-CONTENT END -->
        
        
        <!-- FOOTER START ============================================================-->
        <footer class="flex" id="footer"></footer>
        <script src="footer.js"></script>
        <!--============================================================== FOOTER END -->
        
        
        <!-- SCROLL-TO-TOP START =====================================================-->
        <button id="toTopBtn" class="flex greenBtn" title="Scroll to Top">
            <i class="fa-solid fa-chevron-up"></i>
        </button>
        <!--======================================================= SCROLL-TO-TOP END -->
        
    </body>
</html>
