<%-- 
    Document   : new
    Created on : 16 Dec 2023, 03:15:09
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="../admin.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <title>New Product | Products - Admin | GREEN Supermart</title>

    <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">

    <link rel="preload" href="../admin.css" as="style" type="text/css">
    <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
    <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
    <link rel="preload" href="https://i.postimg.cc/TwdpWvhk/admin-Logo.png" as="image" type="image/png">

    <script src="../admin.js" defer></script>
</head>

<body>

<div class="body flex flexRow">

    <div class="navigation flex flexCol">

        <div class="navContainer flex flexCol">
            <div class="navLogo flex" onclick="window.location.href='/admin/dashboard.jsp'">
                <img src="https://i.postimg.cc/TwdpWvhk/admin-Logo.png">
            </div>

            <nav class="flex flexCol">
                        <span class="navLink flex flexRow" onclick="window.location.href='/admin/dashboard.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-gauge"></i>
                            </span>
                            Dashboard
                        </span>

                <span class="activeLink flex flexRow">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-box"></i>
                            </span>
                            Products
                        </span>

                <span class="navLink flex flexRow" onclick="window.location.href='/admin/orders.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-truck-fast"></i>
                            </span>
                            Orders
                        </span>

                <span class="navLink flex flexRow" onclick="window.location.href='/admin/feedback.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-comments"></i>
                            </span>
                            Feedback
                        </span>
            </nav>
        </div>

    </div>

    <div class="dashboard">

        <!-- TOPBAR START ============================================================-->
        <div class="topBar flex" id="topBar"></div>
        <script src="../topBar.js"></script>
        <!--============================================================== TOPBAR END -->

        <div class="dashboardContent flex">

            <div class="dashboardContainer flex flexCol">

                <div class="pageTopic flex">
                    <div class="pageTopicContainer flex flexRow">
                        <h1 class="flex flexRow" style="align-items: center; gap: 10px;">
                                    <span class="navigator" onclick="window.location.href='/admin/products.jsp'">
                                        <i class="fa-solid fa-chevron-left"></i>
                                    </span>

                            New Product
                        </h1>
                    </div>
                </div>

                <section style="width: 100%; height: 75vh;">
                    <div class="flex flexCol" style="width: calc(100% - 40px); height: calc(100% - 40px); color: #242424; background: #FFFFFF; padding: 15px 20px; border-radius: 10px;">

                        <div class="flex flexRow" style="height: 100%; width: 100%; margin-top: 0; overflow: auto; align-items: start;">
                            <div style="height: auto; width: 100%; padding-bottom: 20px;">

                                <form class="newProductForm" id="newProductForm" action="/AddProductServlet" method="POST">

                                    <div style="width: 100%; position: sticky; top: 0; background: #FFFFFF; padding-bottom: 20px;">
                                        <h1 style="color: #1DA31A; font-size: 20px;">Product Information</h1>
                                    </div>

                                    <div class="flex flexRow" style="height: auto; width: 100%;">
                                        <div class="flex" style="height: 100%; width: 50%; justify-content: center; align-items: center;">
                                            <div class="flex flexCol" style="height: calc(100% - 40px); width: calc(100% - 40px); gap: 20px;">

                                                <div class="flex flexCol" style="width: 100%; gap: 8px;">
                                                    <label>Product Image</label>
                                                    <input type="text" id="imgLink" style="width: calc(100% - 20px); font-weight: 300; color: #242424; background: #ECECEC; padding: 6px 10px; border-radius: 5px; border: 1px solid transparent; outline: none;" name="imgLink" value="https://i.postimg.cc/brf9L1tT/placeholder.png">
                                                </div>

                                            </div>
                                        </div>

                                        <div class="flex" style="height: 100%; width: 50%; justify-content: center; align-items: center;">
                                            <div class="flex flexCol" style="height: calc(100% - 40px); width: calc(100% - 40px); gap: 20px;">

                                                <div class="flex flexCol" style="width: 100%; gap: 8px;">
                                                    <label>Product Name</label>
                                                    <input type="text" id="productName" style="width: calc(100% - 20px); font-weight: 300; color: #242424; background: #ECECEC; padding: 6px 10px; border-radius: 5px; border: 1px solid transparent; outline: none;" name="productName" required>
                                                </div>

                                                <div class="flex flexCol" style="width: 45%; gap: 8px;">
                                                    <label>Category</label>
                                                    <select id="category" name="category" style="width: 100%; font-weight: 300; color: #242424; background: #ECECEC; padding: 6px 10px; border-radius: 5px; border: 1px solid transparent; outline: none;" required>
                                                        <option value="Beverages">Beverages</option>
                                                        <option value="Biscuits">Biscuits</option>
                                                        <option value="Cereals">Cereals</option>
                                                        <option value="Cosmetics">Cosmetics</option>
                                                        <option value="Desserts">Desserts</option>
                                                        <option value="Flours">Flours</option>
                                                        <option value="Fruits">Fruits</option>
                                                        <option value="Medicine">Medicine</option>
                                                        <option value="Pasta and Noodles">Pasta and Noodles</option>
                                                        <option value="Sauces">Sauces</option>
                                                        <option value="Snacks">Snacks</option>
                                                        <option value="Soaps and Liquids">Soaps and Liquids</option>
                                                        <option value="Spreads">Spreads</option>
                                                        <option value="Stationary">Stationary</option>
                                                        <option value="Vegetables">Vegetables</option>
                                                    </select>
                                                </div>

                                                <div class="flex flexRow" style="width: 100%; justify-content: space-between;">
                                                    <div class="flex flexCol" style="width: 45%; gap: 8px;">
                                                        <label>Price</label>
                                                        <input type="number" id="originalPrice" style="width: calc(100% - 20px); font-weight: 300; color: #242424; background: #ECECEC; padding: 6px 10px; border-radius: 5px; border: 1px solid transparent; outline: none;" name="originalPrice" min="0" required>
                                                    </div>

                                                    <div class="flex flexCol" style="width: 45%; gap: 8px;">
                                                        <label>Discount Price</label>
                                                        <input type="number" id="discountPrice" style="width: calc(100% - 20px); font-weight: 300; color: #242424; background: #ECECEC; padding: 6px 10px; border-radius: 5px; border: 1px solid transparent; outline: none;" name="discountPrice" min="0" required>
                                                    </div>
                                                </div>

                                                <div class="flex flexCol" style="width: 45%; gap: 8px;">
                                                    <label>Stock Status</label>
                                                    <select id="stockStatus" name="stockStatus" style="width: 100%; font-weight: 300; color: #242424; background: #ECECEC; padding: 6px 10px; border-radius: 5px; border: 1px solid transparent; outline: none;" required>
                                                        <option value="In Stock">In Stock</option>
                                                        <option value="Out Of Stock">Out of Stock</option>
                                                    </select>
                                                </div>

                                                <div class="flex flexCol" style="width: 45%; gap: 8px;">
                                                    <label>Quantity</label>
                                                    <input type="number" id="quantity" style="width: calc(100% - 20px); font-weight: 300; color: #242424; background: #ECECEC; padding: 6px 10px; border-radius: 5px; border: 1px solid transparent; outline: none;" name="quantity" min="1" required>
                                                </div>

                                                <div class="flex flexCol" style="width: 45%; gap: 8px;">
                                                    <label>SKU</label>
                                                    <input type="number" id="sku" style="width: calc(100% - 20px); font-weight: 300; color: #242424; background: #ECECEC; padding: 6px 10px; border-radius: 5px; border: 1px solid transparent; outline: none;" name="sku" min="0" required>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div style="height: auto; width: calc(100% - 40px); padding: 20px 20px;">
                                        <input type="submit" id="submitBtn" value="Submit">
                                    </div>

                                </form>

                            </div>
                        </div>

                    </div>
                </section>

            </div>

        </div>
    </div>

</div>

</body>
</html>
