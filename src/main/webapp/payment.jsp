<%-- 
    Document   : errornew
    Created on : Dec 19, 2023, 11:04:37 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="style.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Payment | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        
        <script src="script.js" defer></script>
    </head>
    <body>
         <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
      
        
        <div class="containerBlock flex" style="height: 100vh; width: 100%; justify-content: center; align-items: center;">
            
            <form id="registerSuccessForm" class="paymentForm flex" action="" method="">
                
                <div class="formContainer flex flexRow">
                    
                    <div class="paymentImage" style="width: 50%; background-color:#ffebd0; padding: 40px; border-radius: 10px;">
                        <h2 style="color: #808080; text-align: center; margin-bottom: 20px;">Make a secure payment</h2>
                        <img style="width: 100%" src="Assets/payment.png">
                    </div>

                    <div id="paypalSpace" class="paymentImage" style="width: 50%; background-color:#FFFFFF; padding: 40px;">

                    </div>
                    <!-- Add the PayPal Smart Payment Button script -->
                    <script src="https://www.paypal.com/sdk/js?client-id=AUBA90Ki_2CQEmoVYlja4DrZdw4O5MN3AHikBYfkUv7PF6AZuwfrSWVjAwF8jo7kYr6eNcdOzHQ8crAJ&currency=USD" data-sdk-integration-source="button-factory"></script>


                </div>
                
            </form>
            
        </div>


         <script>
             const retrievedTotalBillAmount = localStorage.getItem('payment');
             const billAmountInRS = (retrievedTotalBillAmount / 325).toFixed(2);
             paypal.Buttons({
                 createOrder: function(data, actions) {
                     return actions.order.create({
                         purchase_units: [{
                             amount: {
                                 value: billAmountInRS
                             }
                         }]
                     });
                 },
                 onApprove: function(data, actions) {
                     return actions.order.capture().then(function(details) {
                         window.location.href = 'paymentStatus?orderID=' + data.orderID;
                     });
                 }
             }).render('#paypalSpace');
         </script>
        
        
        
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
