<%-- 
    Document   : article2
    Created on : 23 Dec 2023, 01:36:38
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
        
        <title>Updating Account Information - Help Center | GREEN Supermart</title>
        
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
                        <span class="currentLink">Updating Account Information</span>
                    </div>
                    
                    <h1 style="color: #1DA31A; text-align: center; margin-bottom: 30px; font-size: 34px; font-weight: 400;">Updating Account Information</h1>
                    
                    <section style="margin-bottom: 0;">

                        <p>If you need to modify your account information, such as updating your delivery address or adjusting email preferences, follow these simple steps</p>
                        
                        <ul>
                            <li style="margin-bottom: 20px;">Access Account Settings
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>Click on the account icon located in the right upper corner of the webpage.</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">Navigate to Account Settings
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>From the dropdown menu, select <a href="/getUserData" style="color: #1DA31A;">Account Settings</a>.</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">View Account Information
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>Inside the Account Settings section, you'll find a comprehensive overview of your account details.</li>
                                </ol>
                            </li>

                            <li style="margin-bottom: 20px;">Edit Account Details
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>Locate the specific information you wish to update, such as delivery address, email, or other personal details.</li>
                                </ol>     
                            </li>

                            <li style="margin-bottom: 20px;">Save Changes
                                <ol style="margin-top: 10px; padding-left: 20px;">
                                    <li>After making the desired changes, be sure to save your updates to ensure they take effect</li>
                                </ol>     
                            </li>
                        </ul>
                    </section>

                    <section style="margin-bottom: 0;">
                        <p>By following these structured steps, you can easily manage and update your account information, ensuring that it reflects the most accurate and current details for a seamless shopping experience.</p>
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
