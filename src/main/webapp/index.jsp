<%-- 
    Document   : index
    Created on : 17 Nov 2023, 17:58:28
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="slider.css">
        <link rel="stylesheet" href="cart.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Your Everyday Supermart | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="style.css" as="style" type="text/css">
        <link rel="preload" href="slider.css" as="style" type="text/css">
        <link rel="preload" href="cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/brf9L1tT/placeholder.png" as="image" type="image/png">
        
        <script src="script.js" defer></script>
        <script src="slider.js" defer></script>
        <script src="cart.js" defer></script>
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <section class="homeSlider flex flexRow" style="height: 75vh; width: 100%; align-items: center; margin-bottom: 60px;">
                    
                    <div class="prevSlide flex" id="prevSlide">
                        <i class="fa-solid fa-chevron-left"></i>
                    </div>
                    
                    <a class="currentSlideLink" id="currentSlideLink" href="">
                        <div class="currentSlide" id="currentSlide">
                            <img id="currentSlideImg" src="https://i.postimg.cc/brf9L1tT/placeholder.png">
                        </div>
                    </a>
                    
                    <div class="nextSlide flex" id="nextSlide">
                        <i class="fa-solid fa-chevron-right"></i>
                    </div>
                    
                </section>
                
                
                <section>
                    <h1 class="sectionHeading" style="text-align: center; margin-bottom: 40px; font-size: 26px;">Top Deals</h1>
                    
                    <div class="cardsContainer flex flexRow">
                        <div class="productCard flex flexCol">
                            <div class="productImg flex">
                                <div class="productIcons flex flexRow">
                                    <span class="discIndicator">
                                        -20%
                                    </span>
                                    <span class="wishlistIndicator">
                                        <i class="fa-solid fa-heart" onclick="addToWishlist(2)"></i>
                                    </span>
                                </div>
                                <img src="https://i.postimg.cc/yNz3CCB9/Coca-cola.jpg">
                            </div>
                            <div class="productContent flex flexCol">
                                <h1>
                                    <a href="/singleProduct.jsp?productId=2">
                                        Coca Cola Pet 1.5L
                                    </a>
                                </h1>
                                <span class="productPrice flex flexRow">
                                    <h2 class="price">Rs. 304.00</h2>
                                    <h2 class="discPrice">Rs. 380.00</h2>
                                </span>
                                <button class="addToCartBtn flex flexRow" onclick="addToCart(2)">
                                    <i class="fa-solid fa-cart-plus"></i>
                                    Add to Cart
                                </button>
                            </div>
                        </div>
                        
                        <div class="productCard flex flexCol">
                            <div class="productImg flex">
                                <div class="productIcons flex flexRow">
                                    <span class="discIndicator">
                                        -20%
                                    </span>
                                    <span class="wishlistIndicator">
                                        <i class="fa-regular fa-heart" onclick="addToWishlist(42)"></i>
                                    </span>
                                </div>
                                <img src="https://i.postimg.cc/Gmwkqbsm/Sante-Granola-Chocolate.jpg">
                            </div>
                            <div class="productContent flex flexCol">
                                <h1>
                                    <a href="/singleProduct.jsp?productId=42">
                                        Sante Granola Chocolate
                                    </a>
                                </h1>
                                <span class="productPrice flex flexRow">
                                    <h2 class="price">Rs. 1850.00</h2>
                                    <h2 class="discPrice">Rs. 1480.00</h2>
                                </span>
                                <button class="addToCartBtn flex flexRow" onclick="addToCart(42)">
                                    <i class="fa-solid fa-cart-plus"></i>
                                    Add to Cart
                                </button>
                            </div>
                        </div>
                        
                        <div class="productCard flex flexCol">
                            <div class="productImg flex">
                                <div class="productIcons flex flexRow">
                                    <span class="discIndicator">
                                        -20%
                                    </span>
                                    <span class="wishlistIndicator">
                                        <i class="fa-regular fa-heart" onclick="addToWishlist(37)"></i>
                                    </span>
                                </div>
                                <img src="https://i.postimg.cc/0jnYmcTp/Grapes-Black.png">
                            </div>
                            <div class="productContent flex flexCol">
                                <h1>
                                    <a href="/singleProduct.jsp?productId=37">
                                        Grapes - Black
                                    </a>
                                </h1>
                                <span class="productPrice flex flexRow">
                                    <h2 class="price">Rs. 2450.00</h2>
                                    <h2 class="discPrice">Rs. 1960.00</h2>
                                </span>
                                <button class="addToCartBtn flex flexRow" onclick="addToCart(37)">
                                    <i class="fa-solid fa-cart-plus"></i>
                                    Add to Cart
                                </button>
                            </div>
                        </div>
                        
                        <div class="productCard flex flexCol">
                            <div class="productImg flex">
                                <div class="productIcons flex flexRow">
                                    <span class="discIndicator">
                                        -20%
                                    </span>
                                    <span class="wishlistIndicator">
                                        <i class="fa-regular fa-heart" onclick="addToWishlist(58)"></i>
                                    </span>
                                </div>
                                <img src="https://i.postimg.cc/Wbmpw71W/Promate-Book-100-Pgs.jpg">
                            </div>
                            <div class="productContent flex flexCol">
                                <h1>
                                    <a href="/singleProduct.jsp?productId=58">
                                        Promate Book 100 Pgs
                                    </a>
                                </h1>
                                <span class="productPrice flex flexRow">
                                    <h2 class="price">Rs. 400.00</h2>
                                    <h2 class="discPrice">Rs. 320.00</h2>
                                </span>
                                <button class="addToCartBtn flex flexRow" onclick="addToCart(58)">
                                    <i class="fa-solid fa-cart-plus"></i>
                                    Add to Cart
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <span class="moreDealsLink flex flexRow">
                        <a href="deals.jsp">View More Deals</a>
                        <i class="fa-solid fa-square-arrow-up-right"></i>
                    </span>
                    
                </section>
                
                
                
                <section style="margin-top: 60px;">
                    <h1 class="sectionHeading" style="text-align: center; margin-bottom: 40px; font-size: 26px;">Top Categories</h1>
                    
                    <div class="cardsContainer flex flexRow">
                        <a style="height: auto; width: 20%; text-decoration: none;" href="categories/beverages.jsp">
                            <div class="catCard flex flexCol">
                                <div class="catCardImg flex">
                                    <img src="https://i.postimg.cc/fbcBzhc4/beverages.png">
                                </div>
                                <div class="catContent flex flexRow">
                                    <h1>Beverages</h1>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </div>
                            </div>
                        </a>
                        
                        <a style="height: auto; width: 20%; text-decoration: none;" href="categories/snacks.jsp">
                            <div class="catCard flex flexCol">
                                <div class="catCardImg flex">
                                    <img src="https://i.postimg.cc/Z53LHhD9/snacks.png">
                                </div>
                                <div class="catContent flex flexRow">
                                    <h1>Snacks</h1>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </div>
                            </div>
                        </a>
                        
                        <a style="height: auto; width: 20%; text-decoration: none;" href="categories/fruits.jsp">
                            <div class="catCard flex flexCol">
                                <div class="catCardImg flex">
                                    <img src="https://i.postimg.cc/k47wDhs2/fruits.png">
                                </div>
                                <div class="catContent flex flexRow">
                                    <h1>Fruits</h1>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </div>
                            </div>
                        </a>
                        
                        <a style="height: auto; width: 20%; text-decoration: none;" href="categories/medicine.jsp">
                            <div class="catCard flex flexCol">
                                <div class="catCardImg flex">
                                    <img src="https://i.postimg.cc/8PxHLCwQ/medicine.png">
                                </div>
                                <div class="catContent flex flexRow">
                                    <h1>Medicine</h1>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                </section>
                
            </div>
        </div>
        <script>
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
        <script src="footer.js"></script>
        <!--============================================================== FOOTER END -->
        
        
        <!-- SCROLL-TO-TOP START =====================================================-->
        <button id="toTopBtn" class="flex greenBtn" title="Scroll to Top">
            <i class="fa-solid fa-chevron-up"></i>
        </button>
        <!--======================================================= SCROLL-TO-TOP END -->
        
    </body>
</html>
