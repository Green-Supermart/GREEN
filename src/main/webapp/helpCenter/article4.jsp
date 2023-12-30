<%-- 
    Document   : article4
    Created on : 23 Dec 2023, 01:37:10
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="/Website/style.css">
        <link rel="stylesheet" href="/Website/cart.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Article 4 - Help Center | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="/Website/style.css" as="style" type="text/css">
        <link rel="preload" href="/Website/cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/brf9L1tT/placeholder.png" as="image" type="image/png">
        
        <script src="/Website/script.js" defer></script>
        <script src="/Website/cart.js" defer></script>
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="/Website/navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <div class="flex flexCol" style="gap: 40px;">
                    
                    <div class="breadcrumb flex flexRow" style="gap: 10px; font-size: 14px; align-items: center;">
                        <span class="prevLinks flex flexRow" style="gap: 10px; align-items: center;">
                            <a style="color: #1DA31A;" href="/Website/helpCenter.jsp">Help Center</a>
                            <i class="fa-solid fa-chevron-right" style="color: #242424; font-size: 10px;"></i>
                        </span>
                        <span class="currentLink">Article 4 Heading</span>
                    </div>
                    
                    <h1 style="color: #1DA31A; text-align: center; margin-bottom: 30px; font-size: 34px; font-weight: 400;">Article 4 Heading</h1>
                    
                    <section style="margin-bottom: 0;">
                        <h1 class="sectionHeading" style="text-align: left; font-size: 26px;">Sub Title</h1>
                        
                        <p>Duis elit dolor fugiat culpa incididunt aliquip incididunt aute sunt. Adipisicing irure ipsum Lorem eu id dolor dolore qui anim incididunt adipisicing sit. Occaecat culpa commodo dolor cillum nostrud exercitation eiusmod.</p>
                        
                        <ul>
                            <li>List Item 1</li>
                            <li>List Item 2</li>
                            <li>List Item 3</li>
                            <li>List Item 4</li>
                        </ul>
                    </section>
                    
                    <section style="margin-bottom: 0;">
                        <h1 class="sectionHeading" style="text-align: left; font-size: 26px;">Sub Title</h1>
                        
                        <ul>
                            <li>List Item 1</li>
                            <li>List Item 2</li>
                            <li>List Item 3</li>
                            <li>List Item 4</li>
                        </ul>
                        
                        <p>Duis elit dolor fugiat culpa incididunt aliquip incididunt aute sunt. Adipisicing irure ipsum Lorem eu id dolor dolore qui anim incididunt adipisicing sit. Occaecat culpa commodo dolor cillum nostrud exercitation eiusmod.</p>
                    </section>
                    
                    <section style="margin-bottom: 0;">
                        <h1 class="sectionHeading" style="text-align: left; font-size: 26px;">Sub Title</h1>
                        
                        <p>Duis elit dolor fugiat culpa incididunt aliquip incididunt aute sunt. Adipisicing irure ipsum Lorem eu id dolor dolore qui anim incididunt adipisicing sit. Occaecat culpa commodo dolor cillum nostrud exercitation eiusmod.</p>
                    </section>
                    
                </div>
                
            </div>
        </div>
        <!--======================================================== PAGE-CONTENT END -->
        
        
        <!-- FOOTER START ============================================================-->
        <footer class="flex" id="footer"></footer>
        <script src="/Website/footer.js"></script>
        <!--============================================================== FOOTER END -->
        
        
        <!-- SCROLL-TO-TOP START =====================================================-->
        <button id="toTopBtn" class="flex greenBtn" title="Scroll to Top">
            <i class="fa-solid fa-chevron-up"></i>
        </button>
        <!--======================================================= SCROLL-TO-TOP END -->
        
    </body>
</html>
