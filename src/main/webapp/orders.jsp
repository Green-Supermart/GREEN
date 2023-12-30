<%-- 
    Document   : orders
    Created on : 23 Dec 2023, 00:18:21
    Author     : USER
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
        
        <title>Orders | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="style.css" as="style" type="text/css">
        <link rel="preload" href="cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        
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
            <h1>Orders</h1>
        </header>
        <!--============================================================== HEADER END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container flex flexCol" style="gap: 30px;">
                
                <!-- Card 1 Start =======================-->
                <details>
                    <summary class="flex flexRow" style="justify-content: space-between;">
                        <span style="display: flex; flex-direction: column; gap: 4px;">
                            <h1 style="color: #1DA31A; font-weight: 400; font-size: 14px;">November 09, 2023</h1>
                            <h2 style="font-size: 18px;">Order No: 123456711</h2>
                        </span>
                        
                        <span class="detailsIcon flex">
                            <i class="fa-solid fa-chevron-down"></i>
                        </span>
                    </summary>
                    
                    <div style="display: flex; flex-direction: column; background: #FFFFFF; padding: 0 50px 30px 50px; border-radius: 0 0 10px 10px;">
                        <div style="display: flex; flex-direction: column; gap: 20px;">
                            <table border-collapse="collapse" style="width: 100%;">
                                <tr>
                                    <td style="width: 50px;"><img src="https://i.postimg.cc/brf9L1tT/placeholder.png"></td>
                                    <td style="width: 70%; padding-left: 15px;"><a href="">Item 1</a></td>
                                    <td style="width: 15%; text-align: right;">x3</td>
                                    <td style="width: 15%; text-align: right;">30</td>
                                </tr>
                                <tr>
                                    <td style="width: 50px;"><img src="https://i.postimg.cc/brf9L1tT/placeholder.png"></td>
                                    <td style="width: 70%; padding-left: 15px;"><a href="">Item 2</a></td>
                                    <td style="width: 15%; text-align: right;">x1</td>
                                    <td style="width: 15%; text-align: right;">35</td>
                                </tr>
                                <tr>
                                    <td style="width: 50px;"><img src="https://i.postimg.cc/brf9L1tT/placeholder.png"></td>
                                    <td style="width: 70%; padding-left: 15px;"><a href="">Item 3</a></td>
                                    <td style="width: 15%; text-align: right;">x5</td>
                                    <td style="width: 15%; text-align: right;">100</td>
                                </tr>
                            </table>
                            
                            <span style="display: flex; flex-direction: row; justify-content: space-between; padding: 15px 0 0 0; border-top: 0.5px solid #1DA31A1A;">
                                <p>Total</p>
                                <p>Rs. 165</p>
                            </span>
                        </div>
                    </div>
                </details>
                <!--========================= Card 1 End -->
                
                <!-- Card 2 Start =======================-->
                <details>
                    <summary class="flex flexRow" style="justify-content: space-between;">
                        <span style="display: flex; flex-direction: column; gap: 4px;">
                            <h1 style="color: #1DA31A; font-weight: 400; font-size: 14px;">November 08, 2023</h1>
                            <h2 style="font-size: 18px;">Order No: 123456702</h2>
                        </span>
                        
                        <span class="detailsIcon flex">
                            <i class="fa-solid fa-chevron-down"></i>
                        </span>
                    </summary>
                    
                    <div style="display: flex; flex-direction: column; background: #FFFFFF; padding: 0 50px 30px 50px; border-radius: 0 0 10px 10px;">
                        <div style="display: flex; flex-direction: column; gap: 20px;">
                            <table border-collapse="collapse" style="width: 100%;">
                                <tr>
                                    <td style="width: 50px;"><img src="https://i.postimg.cc/brf9L1tT/placeholder.png"></td>
                                    <td style="width: 70%; padding-left: 15px;"><a href="">Item 1</a></td>
                                    <td style="width: 15%; text-align: right;">x3</td>
                                    <td style="width: 15%; text-align: right;">30</td>
                                </tr>
                                <tr>
                                    <td style="width: 50px;"><img src="https://i.postimg.cc/brf9L1tT/placeholder.png"></td>
                                    <td style="width: 70%; padding-left: 15px;"><a href="">Item 2</a></td>
                                    <td style="width: 15%; text-align: right;">x1</td>
                                    <td style="width: 15%; text-align: right;">35</td>
                                </tr>
                                <tr>
                                    <td style="width: 50px;"><img src="https://i.postimg.cc/brf9L1tT/placeholder.png"></td>
                                    <td style="width: 70%; padding-left: 15px;"><a href="">Item 3</a></td>
                                    <td style="width: 15%; text-align: right;">x5</td>
                                    <td style="width: 15%; text-align: right;">100</td>
                                </tr>
                            </table>
                            
                            <span style="display: flex; flex-direction: row; justify-content: space-between; padding: 15px 0 0 0; border-top: 0.5px solid #1DA31A1A;">
                                <p>Total</p>
                                <p>Rs. 165</p>
                            </span>
                        </div>
                    </div>
                </details>
                <!--========================= Card 2 End -->
                
                <!-- Card 3 Start =======================-->
                <details>
                    <summary class="flex flexRow" style="justify-content: space-between;">
                        <span style="display: flex; flex-direction: column; gap: 4px;">
                            <h1 style="color: #1DA31A; font-weight: 400; font-size: 14px;">November 06, 2023</h1>
                            <h2 style="font-size: 18px;">Order No: 123456685</h2>
                        </span>
                        
                        <span class="detailsIcon flex">
                            <i class="fa-solid fa-chevron-down"></i>
                        </span>
                    </summary>
                    
                    <div style="display: flex; flex-direction: column; background: #FFFFFF; padding: 0 50px 30px 50px; border-radius: 0 0 10px 10px;">
                        <div style="display: flex; flex-direction: column; gap: 20px;">
                            <table border-collapse="collapse" style="width: 100%;">
                                <tr>
                                    <td style="width: 50px;"><img src="https://i.postimg.cc/brf9L1tT/placeholder.png"></td>
                                    <td style="width: 70%; padding-left: 15px;"><a href="">Item 1</a></td>
                                    <td style="width: 15%; text-align: right;">x3</td>
                                    <td style="width: 15%; text-align: right;">30</td>
                                </tr>
                                <tr>
                                    <td style="width: 50px;"><img src="https://i.postimg.cc/brf9L1tT/placeholder.png"></td>
                                    <td style="width: 70%; padding-left: 15px;"><a href="">Item 2</a></td>
                                    <td style="width: 15%; text-align: right;">x1</td>
                                    <td style="width: 15%; text-align: right;">35</td>
                                </tr>
                                <tr>
                                    <td style="width: 50px;"><img src="https://i.postimg.cc/brf9L1tT/placeholder.png"></td>
                                    <td style="width: 70%; padding-left: 15px;"><a href="">Item 3</a></td>
                                    <td style="width: 15%; text-align: right;">x5</td>
                                    <td style="width: 15%; text-align: right;">100</td>
                                </tr>
                            </table>
                            
                            <span style="display: flex; flex-direction: row; justify-content: space-between; padding: 15px 0 0 0; border-top: 0.5px solid #1DA31A1A;">
                                <p>Total</p>
                                <p>Rs. 165</p>
                            </span>
                        </div>
                    </div>
                </details>
                <!--========================= Card 3 End -->
                
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
