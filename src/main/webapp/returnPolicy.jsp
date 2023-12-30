<%-- 
    Document   : returnPolicy
    Created on : 30 Nov 2023, 23:00:31
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
        
        <title>Return Policy | GREEN Supermart</title>
        
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
            <h1>Return Policy</h1>
        </header>
        <!--============================================================== HEADER END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <section class="flex flexCol">
                    <h1 class="sectionHeading">Introduction</h1>
                    
                    <p>We are committed to providing our customers with satisfaction guaranteed shopping experience. If you are not satisfied with your purchase, you may return it for a full refund or exchange within 30 days of the order date.</p>
                </section>
                
                <section class="flex flexCol">
                    <h1 class="sectionHeading">Return Eligibility</h1>
                    
                    <p>To be eligible for a return, items must be:</p>
                    
                    <ul>
                        <li>In original packaging with all tags attached</li>
                        <li>Unused and undamaged</li>
                        <li>Accompanied by a proof of purchase (order confirmation email or receipt)</li>
                    </ul>
                </section>
                
                <section class="flex flexCol">
                    <h1 class="sectionHeading">Exceptions</h1>
                    
                    <p>Following items are not eligible for return:</p>
                    
                    <ul>
                        <li>Fresh produce</li>
                        <li>Opened or used personal care items</li>
                        <li>Frozen or refrigerated items</li>
                        <li>Items marked as "final sale" or "as is"</li>
                    </ul>
                </section>
                
                <section class="flex flexCol">
                    <h1 class="sectionHeading">Return Process</h1>
                    
                    <p>To initiate a return, please follow these steps:</p>
                    
                    <ul>
                        <li>Contact our customer service team via email or phone to obtain a return authorization number (RMA).</li>
                        <li>Pack the item(s) in the original packaging or a sturdy box, ensuring adequate protection during transit.</li>
                        <li>Attach the RMA number to the package and ship it to the address provided by our customer service team.</li>
                    </ul>
                </section>
                
                <section class="flex flexCol">
                    <h1 class="sectionHeading">Refunds and Exchanges</h1>
                    
                    <p>Once we receive your returned item(s), we will inspect them for eligibility and process a refund or exchange within 5-7 business days. Refunds will be issued to the original payment method used for the purchase.</p>
                </section>
                
                <section class="flex flexCol">
                    <h1 class="sectionHeading">Shipping Costs</h1>
                    
                    <p>Customers are responsible for shipping costs associated with returns. However, we may waive shipping costs for certain exceptions, such as if the item was received damaged or incorrect.</p>
                </section>
                
                <section class="flex flexCol">
                    <h1 class="sectionHeading">Additional Notes</h1>
                    
                    <ul>
                        <li>We reserve the right to refuse returns that do not meet our eligibility criteria.</li>
                        <li>We may charge a restocking fee for certain items or situations.</li>
                        <li>Refunds and exchanges are processed in the currency of the original purchase.</li>
                        <li>We recommend using a trackable shipping method for returns to ensure safe delivery.</li>
                    </ul>
                    
                    <p>We strive to provide our customers with a transparent and hassle-free return process. If you have any questions or concerns regarding our return policy, please contact our customer service team for assistance.</p>
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
