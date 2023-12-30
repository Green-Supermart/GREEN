<%-- 
    Document   : Checkoutnew
    Created on : Dec 19, 2023, 11:03:37 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="../style.css">
        <link rel="stylesheet" href="../cart.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Checkout | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        
        <script src="../script.js" defer></script>
        <script src="../cart.js" defer></script>
    </head>
    <body>
         <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="../navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- HEADER START ============================================================-->
        <header class="flex">
            <h1>Checkout</h1>
        </header>
        <!--============================================================== HEADER END -->
        
        <div class="containerBlock flex">
            <div class="container">

                <div class="containerCO">
                    <div class="COcard">
                        <div class="newdate">December 14, 2023</div>
                        <div class="COorderNumber">Order No.20757</div>
                        <table>
                            <tbody id="cartContainer">

                            </tbody>
                        </table>


                        <table>
                            <tr>
                                <td colspan="5">
                                    <hr style="margin: 5px 0; border: none; border-top: 1px solid #ddd;">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" style="text-align: left; padding:20px; padding-right: 10px;">
                                    <div class="COTotalLabel">Total</div>
                                </td>
                                <td style="text-align: right;" colspan="2" >
                                    <div id="totalBill" class="COTotalPrice">
                                        Null
                                    </div>
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>

                <%
                    // Get the userAddress from the session
                    String userAddress = (String) session.getAttribute("address");
                %>
                <div class="helpCardsContainer flex flexCol" style="margin-bottom: 40px;">
                    <div class="helpLink flex flexRow">

                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>Delivery address</h1>
                                <h1 style="color:black; font-size:20px;"><%= userAddress %></h1>
                            </div>

                            <a href="">
                                <i class="fa-solid fa-chevron-right" style="color: #01a733;font-size: 20px; " ></i>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="CObuttoncon flex">
                    <button id="checkoutButton" class="CObutton">Checkout</button>
                </div>
            </div>
        </div>


         <script>

             const FinaleCartItems = JSON.parse(localStorage.getItem("cart")) || [];
             let finaleTotalBillAmount = 0;

             const containerNew = document.getElementById('cartContainer');

             Promise.all(FinaleCartItems.map(item => {
                 let arrayIndex = item.productId - 1;

                 return fetch(`/getProductDetails?id=`+item.productId)
                     .then(response => response.json())
                     .then(productDetails => {
                         const singleProduct = productDetails[arrayIndex];

                         if (singleProduct) {
                             const price = singleProduct.discPrice;
                             const quantity = item.quantity;
                             let subTotal = 0;

                             finaleTotalBillAmount += price * quantity;

                             subTotal = price * quantity;

                             const cartItemElement = document.createElement('tr');
                             cartItemElement.className = 'cart-item';

                             const cartItemHTML =
                                 `
                                    <td>
                                        <a href="" onclick="removeFromCart(`+item.productId+`)">
                                            <i class="fa-solid fa-trash-can" style="color: #808080;"></i>
                                        </a>
                                    </td>
                                    <td>
                                        <img src="`+singleProduct.image+`" alt="Image 1" class="COImage">
                                    </td>
                                    <td>
                                        <div class="COItem">`+singleProduct.name+`</div>
                                    </td>
                                    <td style="width: 50%; text-align: right;">
                                        <div class="COquantity">
                                            ×`+quantity+`
                                        </div>
                                    </td>
                                    <td style="width: 8%; text-align: right;">
                                        <div class="COprice" >
                                            `+subTotal+`
                                        </div>
                                    </td>
                        `;

                             cartItemElement.innerHTML = cartItemHTML;
                             containerNew.appendChild(cartItemElement);
                         } else {
                             console.error(`Product with ID `+item.productId+` not found`);
                         }
                     })
                     .catch(error => {
                         console.error('Error fetching product details:', error);
                     });
             }))
                 .then(() => {
                     document.getElementById('totalBill').innerText = `Rs. `+finaleTotalBillAmount.toFixed(2);
                 })
                 .catch(error => {
                     console.error('Error fetching product details:', error);
                 });


             function removeFromCart(productId) {
                 // Get existing cart items or initialize an empty array
                 let FinaleCartItems = JSON.parse(localStorage.getItem("cart")) || [];

                 // Find the index of the product with the given ID in the cart
                 const productIndex = FinaleCartItems.findIndex(item => item.productId === productId);

                 if (productIndex !== -1) {
                     // Remove the product from the cart array
                     FinaleCartItems.splice(productIndex, 1);

                     // Update the cart in localStorage
                     localStorage.setItem("cart", JSON.stringify(FinaleCartItems));

                     // Provide feedback to the user (optional)
                     alert("Product removed from cart!");
                     location.reload();

                 } else {
                     // Product not found in the cart
                     // You can handle this case as needed
                     alert("Product not found in cart!");
                 }
             }


             //display cart empty message
             const tableBody = document.getElementById("cartContainer")

             // check if there is any cartItem in cartList, if not, show "Your cart is empty" message
             setInterval(function() {
                 if (tableBody.getElementsByTagName('tr').length === 0) {
                     tableBody.innerHTML = `<tr style="height: 200px"> <p id="cartEmptyMsg" style="display: flex; height: calc(100% - 200px); width: 90%; color: #808080; background: #ffffff; justify-content: center; align-items: center; font-size: 14px; font-weight: 300; position: absolute; top: 70px;">Your cart is empty</p> </tr>`;
                 }
             }, 1000);






             // Assume you have a function to get the product count and details
             function getOrderDetails() {
                 // Fetch order details from localStorage or any other source
                 return FinaleCartItems.map(item => ({ productId: item.productId, quantity: item.quantity }));
             }

             // Function to handle the checkout process
             function checkout() {
                 const orderDetails = getOrderDetails();

                 // Make sure there are items in the cart before proceeding with checkout
                 if (orderDetails.length === 0) {
                     alert('Your cart is empty. Add items before checking out.');
                     return;
                 }

                 console.log(orderDetails)
                 //Send order details to the backend using fetch API
                 fetch('/getOrderData', {
                     method: 'POST',
                     headers: {
                         'Content-Type': 'application/json',
                     },
                     body: JSON.stringify({ orderDetails }),
                 })
                     .then(response => {
                         if (response.ok) {
                             // Order was successful, you can handle success accordingly
                             console.log('Order placed successfully!');
                             // Optionally, you can clear the cart after successful order
                             localStorage.removeItem('cart');
                             //set payment amount in localstorage
                             localStorage.setItem('payment', finaleTotalBillAmount);
                             // Redirect to payment.jsp
                             window.location.href = 'payment.jsp';
                         } else {
                             // Handle errors or failed orders
                             console.error('Error placing order:', response.statusText);
                         }
                     })
                     .catch(error => {
                         console.error('Error during fetch:', error);
                     });
             }

             // Attach the checkout function to the button click event
             document.getElementById('checkoutButton').addEventListener('click', checkout);


         </script>



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