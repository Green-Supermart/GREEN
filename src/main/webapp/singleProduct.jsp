<%-- 
    Document   : singleProduct
    Created on : 10 Dec 2023, 10:37:42
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
        
        <title>Product - Category | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="style.css" as="style" type="text/css">
        <link rel="preload" href="cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/brf9L1tT/placeholder.png" as="image" type="image/png">
        
        <script src="script.js" defer></script>
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
                
                <div class="flex flexCol" style="gap: 40px;">
                    
                    <div class="breadcrumb flex flexRow" style="gap: 10px; font-size: 14px; align-items: center;">
                        <span class="prevLinks flex flexRow" style="gap: 10px; align-items: center;">
                            <a id="BreadcrumbCategory" style="color: #1DA31A;" href="">Category</a>
                            <i class="fa-solid fa-chevron-right" style="color: #242424; font-size: 10px;"></i>
                        </span>
                        <span id="BreadcrumbName"  class="currentLink">Product</span>
                    </div>
                    
                    <div class="flex flexRow" style="width: 100%; align-items: start; justify-content: start; gap: 70px;">
                        
                        <div style="width: 400px; height: 400px; border-radius: 5px; border: 2px solid #1DA31A;">
                            <img id="myImage" style="width: 100%; height: 100%; object-fit: cover; object-position: center; border-radius: 5px;" src="https://i.postimg.cc/brf9L1tT/placeholder.png" alt="Product Image">
                        </div>
                        
                        <div class="productInfo flex flexCol" style="width: calc(100% - 470px); gap: 30px;">
                            
                            <div class="flex flexRow" style="width: 100%; height: auto; align-items: center; justify-content: space-between;">
                                <span class="flex flexCol" style="width: 80%; height: auto; gap: 5px;">
                                    <h1 id="productName" style="width: 100%; color: #1DA31A; font-size: 28px; font-weight: 500;">Product Title</h1>
                                    <h2 style="width: 100%; color: #242424; font-size: 14px; font-weight: 300;"><i style="color: #1DA31A; font-size: 12px;" class="fa-solid fa-medal"></i> Editors' Choice</h2>
                                </span>
                                
                                <span class="flex flexRow" style="color: #1DA31A; font-size: 20px; align-items: center; gap: 35px;">
                                    <span style="display: none;" title="Remove From Wishlist">
                                        <i class="fa-solid fa-heart"></i>
                                    </span>
                                </span>
                            </div>

                            <div class="ratings flex flexCol" style="gap: 5px;">
                                <span class="flex flexRow" style="align-items: center; gap: 10px;">
                                    <span class="flex flexRow" style="font-size: 12px; align-items: center; gap: 5px;">
                                        <i class="fa-solid fa-star" style="color: #1DA31A;"></i>
                                        <i class="fa-solid fa-star" style="color: #1DA31A;"></i>
                                        <i class="fa-solid fa-star" style="color: #1DA31A;"></i>
                                        <i class="fa-solid fa-star" style="color: #1DA31A;"></i>
                                        <i class="fa-solid fa-star-half-stroke" style="color: #1DA31A;"></i>
                                    </span>
                                    <span class="flex" style="font-size: 12px; align-items: center; gap: 5px;">
                                        <span>4.5</span>
                                    </span>
                                </span>
                            </div>
                            
                            <div class="flex flexRow" style="align-items: center; gap: 10px;">
                                <h1 id="discPrice" style="color: #1DA31A; font-weight: 400; font-size: 18px;">Rs. 152.00</h1>
                                <h1 id="orgPrice" style="color: #808080; font-weight: 300; font-size: 14px; text-decoration-color: #808080; text-decoration-line: line-through; text-decoration-thickness: 1.5px;">Rs. 190.00</h1>
                            </div>
                            
                            <span class="flex flexRow" style="width: 100%; height: 35px; gap: 40px;">
                                <span class="flex flexRow" style="align-items: center; gap: 15px;">
                                    <label>Quantity:</label>
                                    
                                    <select id="quantitySelect" style="width: 60px; height: 100%; padding: 0 15px; border: none; background: #FFF; border-radius: 5px; cursor: pointer;" required>
                                        <option value="1" selected>1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                </span>
                                
                                <button onclick="addToCart()" type="button" style="width: 250px; height: 100%; display: flex; align-items: center; justify-content: center; gap: 10px; background: #1DA31A; color: #ECECEC; border-radius: 5px; border: none;">
                                    <i class="fa-solid fa-shopping-cart"></i> Add to Cart
                                </button>
                            </span>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
        </div>




        <script>

            document.addEventListener('DOMContentLoaded', function () {
                const urlParams = new URLSearchParams(window.location.search);
                const productId = urlParams.get('productId');

                fetch('/getProductDetails')
                    .then(response => response.json())
                    .then(data => {
                        const productDetails = data.find(product => product.id === parseInt(productId));

                        if (productDetails) {
                            const name = productDetails.name;
                            const orgPrice = productDetails.orgPrice;
                            const discPrice = productDetails.discPrice.toFixed(2);
                            const category = productDetails.category;
                            const imgURL = productDetails.image;
                            const imageElement = document.getElementById("myImage");
                            imageElement.src = imgURL;

                            const demoPara = `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                       tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                       veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                       commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                       velit esse`


                            document.getElementById('BreadcrumbCategory').innerText = category;
                            document.getElementById('BreadcrumbName').innerText = name;
                            document.getElementById('productName').innerText = name;
                            // document.getElementById('productDescription').innerText = demoPara;
                            document.getElementById('discPrice').innerText = `Rs `+discPrice;
                            document.getElementById('orgPrice').innerText = `Rs `+orgPrice+`.00`;
                        } else {
                            console.error('Product not found.');
                        }
                    })
                    .catch(error => {
                        console.error('Error fetching data:', error);
                    });
            });



            function getProductIdFromURL() {
                const urlParams = new URLSearchParams(window.location.search);
                const productId = urlParams.get('productId');

                return productId ? parseInt(productId, 10) : null;
            }




            function addToCart() {
                let productId = getProductIdFromURL();

                let quantityIntValue = parseInt(document.getElementById("quantitySelect").value);
                console.log(quantityIntValue);

                let cartItems = JSON.parse(localStorage.getItem("cart")) || [];

                const existingItem = cartItems.find(item => item.productId === productId);

                if (existingItem) {
                    existingItem.quantity = existingItem.quantity+ quantityIntValue;
                } else {
                    cartItems.push({ productId, quantity: quantityIntValue });
                }

                localStorage.setItem("cart", JSON.stringify(cartItems));
                
                 alert("Product added to cart!");
                location.reload();
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
