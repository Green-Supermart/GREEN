<%-- 
    Document   : searchResults
    Created on : Dec 7, 2023, 11:44:44 AM
    Author     : DELL
--%>

<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="searchCards.css">
        <link rel="stylesheet" href="cart.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Search Results | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="style.css" as="style" type="text/css">
        <link rel="preload" href="searchCards.css" as="style" type="text/css">
        <link rel="preload" href="cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/brf9L1tT/placeholder.png" as="image" type="image/png">
        
        <script src="script.js" defer></script>
        <script src="search.js" defer></script>
        <script src="cart.js" defer></script>
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- HEADER START ============================================================-->
        <header class="flex">
            <h1>Search Results for "<span id="resultKeyword"></span>"</h1>
        </header>
        <!--============================================================== HEADER END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <div class="searchCardsContainer flex flexCol" style="gap: 30px;">

                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/green", "root", "");

                            String searchKeyword = request.getParameter("q");

                            String sql = "SELECT * FROM products WHERE productName LIKE ? OR category LIKE ?";
                            PreparedStatement pstmt = con.prepareStatement(sql);

                            pstmt.setString(1, "%" + searchKeyword + "%");
                            pstmt.setString(2, "%" + searchKeyword + "%");

                            ResultSet rs = pstmt.executeQuery();

                            if (!rs.next()) {
                    %>

                    <div class="flex" style="height: 150px; width: 100%; color: #808080; background: #FFFFFF; justify-content: center; align-items: center; border-radius: 10px;">
                        <p>There are no results for that keyword :(</p>
                    </div>

                    <%
                    } else {
                        // Results found, loop through and display them
                        do {
                            int id = rs.getInt("id");
                            String productName = rs.getString("productName");
                            String category = rs.getString("category");
                            String imgLink = rs.getString("imgLink");
                            int originalPrice = rs.getInt("originalPrice");
                            int discountPrice = rs.getInt("discountPrice");
                    %>

                    <div class="searchCard flex flexRow">
                        <div class="searchCardContent flex flexRow">
                            <div class="searchCardImg">
                                <img src="<%= imgLink %>" alt="<%= productName %>">
                            </div>
                            
                            <div class="searchCardInfo flex flexCol">
                                <span class="category flex flexRow">
                                    In <%= category %> <i class="fa-solid fa-chevron-right"></i>
                                </span>
                                
                                <span class="flex flexCol" style="gap: 6px;">
                                    <h1 style="font-size: 18px; font-weight: 400;"><%= productName %></h1>
                                    
                                    <span class="flex flexRow" style="font-size: 10px; align-items: center; gap: 15px;">
                                        <h2 style="color: #1DA31A; font-size: 14px; font-weight: 400;">Rs. <%= discountPrice %></h2>
                                        <h2 style="color: #808080; text-decoration-color: #808080; text-decoration-line: line-through; text-decoration-thickness: 1.5px;">Rs. <%= originalPrice %></h2>
                                    </span>
                                </span>
                            </div>
                        </div>
                        
                        <div class="flex flexRow" style="width: 15%; height: 100%; gap: 18%; justify-content: center; align-items: center; color: #1DA31A; font-size: 18px;">
                            <span class="searchCardIcon flex" title="View Product">
                                <a href="/singleProduct.jsp?productId=<%= id %>">
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </a>
                            </span>
                        </div>
                    </div>

                    <%
                                } while (rs.next());
                            }

                            con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>

                </div>
                

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
