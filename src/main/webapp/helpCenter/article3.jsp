<%-- 
    Document   : article3
    Created on : 23 Dec 2023, 01:36:52
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="../style.css">
        <link rel="stylesheet" href="../cart.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>What payment methods are accepted? How to complete your payment - Help Center | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="../style.css" as="style" type="text/css">
        <link rel="preload" href="../cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/brf9L1tT/placeholder.png" as="image" type="image/png">
        
        <script src="../script.js" defer></script>
        <script src="../cart.js" defer></script>
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="../navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <div class="flex flexCol" style="gap: 40px;">
                    
                    <div class="breadcrumb flex flexRow" style="gap: 10px; font-size: 14px; align-items: center;">
                        <span class="prevLinks flex flexRow" style="gap: 10px; align-items: center;">
                            <a style="color: #1DA31A;" href="../helpCenter.jsp">Help Center</a>
                            <i class="fa-solid fa-chevron-right" style="color: #242424; font-size: 10px;"></i>
                        </span>
                        <span class="currentLink">What payment methods are accepted? How to complete your payment</span>
                    </div>
                    
                    <h1 style="color: #1DA31A; text-align: center; margin-bottom: 30px; font-size: 34px; font-weight: 400;">What payment methods are accepted? How to complete your payment</h1>
                    
                    <p>When finalizing your purchase at Green Supermart, the only payment option available is PayPal. Here's how you can complete your transaction seamlessly</p>
                    
                    <section style="margin-bottom: 0;">
                        <ul>
                            <li style="margin-bottom: 20px;">Checkout Process
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                     <li>After selecting your desired food items, proceed to the checkout page</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">PayPal Payment
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                     <li>Select PayPal as your exclusive and preferred payment method</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">Redirect to PayPal
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                     <li>Clicking "Checkout" will redirect you to the PayPal platform for secure transaction processing</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">Login to Your PayPal Account
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                     <li>If you have an existing PayPal account, log in to authorize and complete the payment.</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">Payment Confirmation
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                     <li>Review the order details on PayPal and confirm the payment.</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">Return to Green Supermart
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                     <li>Upon successful payment, you'll be redirected back to Green Supermart for order confirmation.</li>
                                </ol>
                            </li>
                        </ul>
                    </section>
                    
                    
                    <section style="margin-bottom: 0;">
                        <p>With PayPal as the sole payment option, we prioritize the security and simplicity of your transactions. Enjoy a hassle-free checkout process when finalizing your food orders with Green Supermart.</p>
                    </section>
                    
                </div>
                
            </div>
        </div>
        <!--======================================================== PAGE-CONTENT END -->
        
        
        <!-- FOOTER START ============================================================-->
        <footer class="flex" id="footer"></footer>
        <script src="../footer.js"></script>
        <!--============================================================== FOOTER END -->
        
        
        <!-- SCROLL-TO-TOP START =====================================================-->
        <button id="toTopBtn" class="flex greenBtn" title="Scroll to Top">
            <i class="fa-solid fa-chevron-up"></i>
        </button>
        <!--======================================================= SCROLL-TO-TOP END -->
        
    </body>
</html>
