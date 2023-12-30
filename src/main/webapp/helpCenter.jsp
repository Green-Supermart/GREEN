<%-- 
    Document   : helpCenter
    Created on : 30 Nov 2023, 22:59:49
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

        <title>Help Center | GREEN Supermart</title>

        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">

        <link rel="preload" href="style.css" as="style" type="text/css">
        <link rel="preload" href="cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">

        <script src="script.js" defer></script>
        <script src="cart.js" defer></script>
        <script src="helpForm.js" defer></script>
    </head>

    <body>

        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="navbar.js"></script>
        <!--============================================================== NAVBAR END -->


        <!-- HEADER START ============================================================-->
        <header class="flex">
            <h1>Help Center</h1>
        </header>
        <!--============================================================== HEADER END -->


        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">

                <div class="helpCardsContainer flex flexCol">
                    <a href="helpCenter/article1.jsp" class="helpLink flex flexRow" style="text-decoration: none;">
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>Account Management</h1>
                                <h2>Account Management: Logging In and Password Recovery</h2>
                            </div>

                            <span>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </span>
                        </div>
                    </a>

                    <a href="helpCenter/article2.jsp" class="helpLink flex flexRow" style="text-decoration: none;">
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>My Account</h1>
                                <h2>Updating Account Information</h2>
                            </div>

                            <span>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </span>
                        </div>
                    </a>

                    <a href="helpCenter/article3.jsp" class="helpLink flex flexRow" style="text-decoration: none;">
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>Payment Methods</h1>
                                <h2>What payment methods are accepted? How to complete your payment</h2>
                            </div>

                            <span>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </span>
                        </div>
                    </a>

                    <a href="helpCenter/article4.jsp" class="helpLink flex flexRow" style="text-decoration: none;">
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>Returns and Refunds</h1>
                                <h2>Return and refund policy for the food items</h2>
                            </div>

                            <span>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </span>
                        </div>
                    </a>

                    <a href="helpCenter/article5.jsp" class="helpLink flex flexRow" style="text-decoration: none;">
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>Tech Support</h1>
                                <h2>Technical Issues with the Website</h2>
                            </div>

                            <span>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </span>
                        </div>
                    </a>
                </div>

                <section style="margin-top: 60px;">
                    <h1 class="sectionHeading" style="text-align: center; margin-bottom: 40px; font-size: 26px;">Issue Not Listed? or Have Feedback? Send Us a Message</h1>

                    <div class="helpForm flex">
                        <div class="helpFormContainer">

                            <form id="helpForm" class="flex flexCol" action="https://script.google.com/macros/s/AKfycbz9ljtNoxmm8HeeF7H6IRkdvYhcTDHQdpdU0SF84BkicpbAB_un1q4iJ9UEaxm9RyC4/exec" method="POST">

                                <input type="hidden" name="Email" value="<%= session.getAttribute("userEmail") %>">

                                <div class="helpFormField flex flexCol">
                                    <label>Subject:</label>
                                    <input class="helpFormInput" name="Subject" type="text" placeholder="Mention the Subject of the issue/feedback" title="Subject" required>
                                </div>

                                <div class="helpFormField flex flexCol">
                                    <label>Message:</label>
                                    <textarea class="helpFormInput" name="Message" style="height: 200px; resize: none;" placeholder="Describe your issue/feedback with details" title="Message" required></textarea>
                                </div>

                                <div class="flex flexRow" style="width: 100%; align-items: center; justify-content: space-between;">
                                    <button id="helpFormSubmitBtn" type="submit">Submit</button>
                                    <span id="submitStateMsg" style="color: #1DA31A;"></span>
                                </div>

                            </form>

                        </div>
                    </div>
                </section>

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
