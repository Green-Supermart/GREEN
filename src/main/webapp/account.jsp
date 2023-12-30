<%-- 
    Document   : account
    Created on : 24 Dec 2023, 08:33:57
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="cart.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <title>Account Management | GREEN Supermart</title>

    <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">

    <link rel="preload" href="style.css" as="style" type="text/css">
    <link rel="preload" href="cart.css" as="style" type="text/css">
    <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
    <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
    <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
    <link rel="preload" href="https://i.postimg.cc/brf9L1tT/placeholder.png" as="image" type="image/png">

    <script src="script.js" defer></script>
    <script src="cart.js" defer></script>
</head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- HEADER START ============================================================-->
        <header class="flex">
            <h1>Account Management</h1>
        </header>
        <!--============================================================== HEADER END -->


        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container flex flexCol" style="gap: 30px;">

                <div class="flex flexRow" style="width: 100%; gap: 30px;">
                    <div class="proPicLink flex">
                        <div class="flex flexCol" style="width: 80%; height: 80%; justify-content: space-between; align-items: center;">
                            <div style="height: 75%; width: auto;">
                                <img src="https://i.postimg.cc/brf9L1tT/placeholder.png" alt="Profile Picture" style="width: 100%; height: 100%; object-fit: cover; border-radius: 99px;">
                            </div>

                            <span id="proPicUpdate">
                                Update Profile Picture <i class="fa-solid fa-square-up-right" style="color: #1DA31A;"></i>
                            </span>
                        </div>
                    </div>
                    <div class="flex flexCol" style="width: calc(100% - 310px); gap: 30px;">
                        <div class="accountLink flex">
                            <div class="flex flexROw" style="width: 90%; align-items: center; justify-content: space-between;">
                                <div class="flex flexCol" style="gap: 5px;">
                                    <h1>Full Name</h1>
                                    <h2><%= request.getAttribute("fullName") %></h2>
                                </div>

                                <i class="fa-solid fa-angle-right" style="color: #1DA31A;"></i>
                            </div>

                        </div>
                        <div class="accountLink flex">
                            <div class="flex flexRow" style="width: 90%; align-items: center; justify-content: space-between;">
                                <div class="flex flexCol" style="gap: 5px;">
                                    <h1>Email Address</h1>
                                    <h2><%= request.getAttribute("email") %></h2>
                                </div>

                                <i class="fa-solid fa-angle-right" style="color: #1DA31A;"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accountLink flex">
                    <div class="flex" style="width: 90%;">
                        <div class="flex flexRow" style="width: 100%; align-items: center; justify-content: space-between;">
                            <h1 style="color: #242424;">Update Password</h1>
                            <i class="fa-solid fa-angle-right" style="color: #1DA31A;"></i>
                        </div>

                    </div>
                </div>
                <div class="accountLink flex">
                    <div class="flex flexRow" style="width: 90%; align-items: center; justify-content: space-between;">
                        <div class="flex flexCol" style="gap: 5px;">
                            <h1>Delivery Address</h1>
                            <h2><%= request.getAttribute("address") %></h2>
                        </div>

                        <i class="fa-solid fa-angle-right" style="color: #1DA31A;"></i>
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
