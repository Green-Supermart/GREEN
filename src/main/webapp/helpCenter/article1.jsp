<%-- 
    Document   : article1
    Created on : 23 Dec 2023, 01:36:19
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
        
        <title>Account Management: Logging In and Password Recovery - Help Center | GREEN Supermart</title>
        
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
                        <span class="currentLink">Account Management: Logging In and Password Recovery</span>
                    </div>
                    
                    <h1 style="color: #1DA31A; text-align: center; margin-bottom: 30px; font-size: 34px; font-weight: 400;">Account Management: Logging In and Password Recovery</h1>
                    
                    <section style="margin-bottom: 0;">
                        <h1 class="sectionHeading" style="text-align: left; font-size: 26px;">Creating an Account:</h1>
                        
                        <p>To get started with your shopping journey on Green Supermart, follow these structured steps:</p>
                        
                        <ul>
                            <li>Sign Up
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>Locate the <a href="../register.jsp" style="color: #1DA31A;">Register</a> option on our website.</li>
                                    <li>Provide your email address and choose a secure password</li>
                                </ol>
                            </li>               
                        </ul>
                    </section>
                    
                    <section style="margin-bottom: 0;">
                        <h1 class="sectionHeading" style="text-align: left; font-size: 26px;">Logging In</h1>
                        
                        <p>Returning for more shopping? Logging in is a breeze</p>
                        
                        <ul>
                            <li style="margin-bottom: 20px;">Access Your Account
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>Click on the <a href="../login.jsp" style="color: #1DA31A;">Login</a> option on the website.</li>
                                    <li>Enter your registered email address and password in the provided spaces.</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">Forgotten Password
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>If you forget your password, click on the "Forgot Password" button.</li>
                                    <li>Enter your email address, and we'll promptly send you a verification code.</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">Reset Password
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>Receive the code in your email and input it on the website.</li>
                                </ol>                                
                            </li>

                            <li style="margin-bottom: 20px;">Continue Shopping
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>Once your password is updated, you can seamlessly continue your shopping experience.</li>
                                </ol>
                            </li>
                        </ul>
                    </section>
                    
                    <section style="margin-bottom: 0;">
                        <p>With these user-friendly steps, managing your Green Supermart account is a straightforward and secure process. Enjoy the convenience of a personalized shopping experience tailored just for you!</p>
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
