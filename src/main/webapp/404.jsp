<%-- 
    Document   : 404
    Created on : 9 Dec 2023, 13:20:28
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="/style.css">
        <link rel="stylesheet" href="/cart.css">
        <style>
            .container404{
                width: 100%;
                align-items: center;
                justify-content: center;
                gap: 10px;
                margin: 50px 0;
            }
            
            .container404 h1{
                color: #1DA31A;
                font-weight: 400;
            }
            
            .container404 p{
                font-size: 20px;
                font-weight: 300;
            }
            
            .container404 .icon404{
                color: #1DA31A;
                font-size: 120px;
                margin: 20px 0;
            }
            
            .container404 a{
                color: #ECECEC;
                background: #1DA31A;
                font-size: 14px;
                text-decoration: none;
                padding: 7px 14px;
                border-radius: 5px;
                transition: 0.3s;
            }
            .container404 a:hover{
                background: #168C13;
                transition: 0.3s;
            }
        </style>
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Page Not Found | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="/style.css" as="style" type="text/css">
        <link rel="preload" href="/cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">

        <script src="/script.js" defer></script>
        <script src="/cart.js" defer></script>
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="/navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <div class="container404 flex flexCol">
                    <h1>Page Not Found</h1>
                    <p>Try searching or go to the homepage</p>
                    <div class="icon404" id="icon404"></div>
                    <a href="">
                        Home <i class="fa-solid fa-square-arrow-up-right"></i>
                    </a>
                </div>
                
            </div>
        </div>
        <!--======================================================== PAGE-CONTENT END -->
        
        
        <!-- FOOTER START ============================================================-->
        <footer class="flex" id="footer"></footer>
        <script src="/footer.js"></script>
        <!--============================================================== FOOTER END -->
        
        
        <!-- SCROLL-TO-TOP START =====================================================-->
        <button id="toTopBtn" class="flex greenBtn" title="Scroll to Top">
            <i class="fa-solid fa-chevron-up"></i>
        </button>
        <!--======================================================= SCROLL-TO-TOP END -->
        
    </body>
</html>
