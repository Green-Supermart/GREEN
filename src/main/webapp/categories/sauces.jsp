<%-- 
    Document   : sauces
    Created on : 10 Dec 2023, 17:18:51
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
        
        <title>Sauces | GREEN Supermart</title>
        
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
        
        
        <!-- HEADER START ============================================================-->
        <header class="flex">
            <h1>Sauces</h1>
        </header>
        <!--============================================================== HEADER END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <div id="cardsContainer" class="cardsContainer flex flexRow">

                </div>

            </div>
        </div>
        <script>
            // Fetch data from the servlet
            fetch('/getProductDetails')
                .then(response => response.json())
                .then(data => {

                    // Filter products where category is "beverages"
                    const fruits = data.filter(product => product.category === 'Sauces');

                    // Loop through the filtered fruits data
                    fruits.forEach(product => {
                        const id = product.id;
                        const name = product.name;
                        const orgPrice = product.orgPrice;
                        const discPrice = product.discPrice;
                        const image = product.image;

                        // Get the container where want to append the product cards
                        const cardsContainer = document.getElementById('cardsContainer');

                        // Create a card element
                        const card = document.createElement('div');
                        card.className = 'product-card';


                        const productCard =

                            `<div class="productCard flex flexCol" style="width: 275px; height: 425px;">
                                <div class="productImg flex">
                                    <div class="productIcons flex flexRow">
                                        <span class="discIndicator">
                                            -20%
                                        </span>
                                        <span class="wishlistIndicator">
                                            <i class="fa-regular fa-heart" onclick="addToWishlist(`+id+`)"></i>
                                        </span>
                                    </div>
                                    <img src="`+image+`" style="width: 275px; height: 275px;">
                                </div>
                                <div class="productContent flex flexCol">
                                    <h1>
                                        <a href="/singleProduct.jsp?productId=`+id+`">
                                            ` +name+ `
                                        </a>
                                    </h1>
                                    <span class="productPrice flex flexRow">
                                        <h2 class="price">Rs. ` +discPrice+ `.00</h2>
                                        <h2 class="discPrice">Rs. ` +orgPrice+ `.00</h2>
                                    </span>
                                    <button class="addToCartBtn flex flexRow" onclick="addToCart(`+id+`)">
                                        <i class="fa-solid fa-cart-plus"></i>
                                            Add to Cart
                                    </button>
                                </div>
                            </div> `;


                        // Populate the card with product data
                        card.innerHTML = productCard;

                        // Append the card to the container
                        cardsContainer.appendChild(card);

                    });

                })
                .catch(error => {
                    console.error('Error fetching data:', error);
                });


            function addToCart(productId) {
                let cartItems = JSON.parse(localStorage.getItem("cart")) || [];
                const existingItem = cartItems.find(item => item.productId === productId);

                if (existingItem) {
                    existingItem.quantity++;
                } else {
                    cartItems.push({ productId, quantity: 1 });
                }

                localStorage.setItem("cart", JSON.stringify(cartItems));
                alert("Product added to cart!");
                location.reload();
            }

            function addToWishlist(productId) {
                let wishlistItems = JSON.parse(localStorage.getItem("wishlist")) || [];
                const existingItem = wishlistItems.find(item => item.productId === productId);

                if (existingItem) {
                    alert("Product already in the wishlist!");
                } else {
                    wishlistItems.push({ productId });
                }
                localStorage.setItem("wishlist", JSON.stringify(wishlistItems));
                alert("Product added to wishlist!");
            }
        </script>
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
