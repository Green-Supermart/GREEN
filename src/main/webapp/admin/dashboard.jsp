<%-- 
    Document   : dashboard
    Created on : 13 Dec 2023, 20:44:57
    Author     : Sandun
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.json.JSONArray" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="admin.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <title>Dashboard - Admin | GREEN Supermart</title>

    <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">

    <link rel="preload" href="admin.css" as="style" type="text/css">
    <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
    <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
    <link rel="preload" href="https://i.postimg.cc/TwdpWvhk/admin-Logo.png" as="image" type="image/png">

    <script src="admin.js" defer></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-adapter-date-fns/dist/chartjs-adapter-date-fns.bundle.min.js"></script>

</head>

<body>

<div class="body flex flexRow">

    <div class="navigation flex flexCol">

        <div class="navContainer flex flexCol">
            <div class="navLogo flex" onclick="window.location.href='dashboard.jsp'">
                <img src="https://i.postimg.cc/TwdpWvhk/admin-Logo.png">
            </div>

            <nav class="flex flexCol">
                        <span class="activeLink flex flexRow">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-gauge"></i>
                            </span>
                            Dashboard
                        </span>

                <span class="navLink flex flexRow" onclick="window.location.href='products.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-box"></i>
                            </span>
                            Products
                        </span>

                <span class="navLink flex flexRow" onclick="window.location.href='orders.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-truck-fast"></i>
                            </span>
                            Orders
                        </span>

                <span class="navLink flex flexRow" onclick="window.location.href='feedback.jsp'">
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
        <script src="topBar.js"></script>
        <!--============================================================== TOPBAR END -->

        <div class="dashboardContent flex">

            <div class="dashboardContainer flex flexCol">

                <div class="pageTopic flex">
                    <div class="pageTopicContainer flex flexRow">
                        <h1>Dashboard</h1>

                        <span class="reloadIcon flex" onclick="window.location.reload();" title="Refresh">
                                    <i class="fa-solid fa-arrows-rotate"></i>
                                </span>
                    </div>
                </div>

                <section class="cardsContainer flex flexRow">

                    <div class="profileCard flex flexCol">
                        <h1>GREEN Supermart</h1>
                        <h2>2023</h2>

                        <div class="subCardsContainer flex flexRow">
                            <div class="subCard flex flexRow">
                                <div class="subCardIcon flex">
                                    <i class="fa-solid fa-box"></i>
                                </div>

                                <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/green", "root", "");
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("SELECT SUM(quantity) AS TotalQuantity FROM orders");
                                        if(rs.next()) {
                                            int totalQuantity = rs.getInt("TotalQuantity");
                                %>
                                <div class="subCardText flex flexCol">
                                    <h4><%= totalQuantity %></h4>
                                    <h5>Items Sold</h5>
                                </div>
                                <%
                                        }
                                        con.close();
                                    } catch(Exception e) {
                                        System.out.println();
                                    }
                                %>

                            </div>

                            <div class="subCard flex flexRow">
                                <div class="subCardIcon flex">
                                    <i class="fa-solid fa-bag-shopping"></i>
                                </div>

                                <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/green", "root", "");
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("SELECT COUNT(id) AS TotalOrders FROM orders");
                                        if(rs.next()) {
                                            int totalOrders = rs.getInt("TotalOrders");
                                %>
                                <div class="subCardText flex flexCol">
                                    <h4><%= totalOrders %></h4>
                                    <h5>Total Orders</h5>
                                </div>
                                <%
                                        }
                                        con.close();
                                    } catch(Exception e) {
                                        System.out.println();
                                    }
                                %>

                            </div>

                            <div class="subCard flex flexRow">
                                <div class="subCardIcon flex">
                                    <i class="fa-solid fa-user-group"></i>
                                </div>

                                <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/green", "root", "");
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("SELECT COUNT(id) AS TotalUsers FROM user");
                                        if(rs.next()) {
                                            int totalUsers = rs.getInt("TotalUsers");
                                %>
                                <div class="subCardText flex flexCol">
                                    <h4><%= totalUsers %></h4>
                                    <h5>Customers</h5>
                                </div>
                                <%
                                        }
                                        con.close();
                                    } catch(Exception e) {
                                        System.out.println();
                                    }
                                %>

                            </div>
                        </div>
                    </div>

                    <div class="salesCard flex flexCol">
                        <h1>System Catalogue</h1>
                        <h2>At a Glance</h2>

                        <div class="subCardsContainer flex flexRow" style="justify-content: start;">
                            <div class="subCard flex flexRow" style="width: 45%;">
                                <div class="subCardIcon flex">
                                    <i class="fa-solid fa-list"></i>
                                </div>

                                <div class="subCardText flex flexCol">
                                    <h4>15</h4>
                                    <h5>Total Categories</h5>
                                </div>

                            </div>

                            <div class="subCard flex flexRow" style="width: 45%;">
                                <div class="subCardIcon flex">
                                    <i class="fa-solid fa-bag-shopping"></i>
                                </div>

                                <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/green", "root", "");
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("SELECT COUNT(id) AS TotalProducts FROM products");
                                        if(rs.next()) {
                                            int totalProducts = rs.getInt("TotalProducts");
                                %>
                                <div class="subCardText flex flexCol">
                                    <h4><%= totalProducts %></h4>
                                    <h5>Total Products</h5>
                                </div>
                                <%
                                        }
                                        con.close();
                                    } catch(Exception e) {
                                        System.out.println();
                                    }
                                %>

                            </div>
                        </div>
                    </div>

                </section>

                <div class="dashboardChart flex">
                    <div class="chartContainer flex flexCol">

                        <h1>Order Statistics</h1>

                        <div class="statChart">
                            <canvas id="myChart"></canvas>

                            <%
                                // Java code to connect to the database and fetch data
                                ArrayList<String> dates = new ArrayList<>();
                                ArrayList<Integer> orders = new ArrayList<>();
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/green", "root", "");
                                    Statement stmt = con.createStatement();
                                    ResultSet rs = stmt.executeQuery("SELECT DATE_FORMAT(date, '%Y-%m-%d') AS OrderDate, COUNT(*) AS OrderCount FROM orders WHERE date >= CURDATE() - INTERVAL 7 DAY GROUP BY DATE(date)");
                                    while(rs.next()) {
                                        dates.add(rs.getString("OrderDate"));
                                        orders.add(rs.getInt("OrderCount"));
                                    }
                                    con.close();
                                } catch(Exception e) {
                                    System.out.println();
                                }
                            %>

                            <script>
                                var ctx = document.getElementById('myChart').getContext('2d');
                                var dateStrings = JSON.parse('<%= new JSONArray(dates) %>'); // convert the dates ArrayList to a JSON array
                                var orderCounts = JSON.parse('<%= new JSONArray(orders) %>'); // convert the orders ArrayList to a JSON array
                                var dates = dateStrings.map(function(dateString) {
                                    return new Date(dateString + 'T00:00:00'); // convert the date strings to Date objects
                                });
                                var myChart = new Chart(ctx, {
                                    type: 'bar',
                                    data: {
                                        labels: dates, // use the Date objects for the x-axis
                                        datasets: [{
                                            label: 'Orders',
                                            data: orderCounts, // order counts for the y-axis
                                            backgroundColor: 'rgba(29, 163, 26, 0.5)',
                                            borderColor: 'rgba(29, 163, 26, 1)',
                                            borderWidth: 2,
                                            borderRadius: 10
                                        }]
                                    },
                                    options: {
                                        scales: {
                                            x: {
                                                type: 'time',
                                                time: {
                                                    unit: 'day'
                                                }
                                            },
                                            y: {
                                                beginAtZero: true
                                            }
                                        }
                                    }
                                });
                            </script>
                        </div>

                    </div>
                </div>

            </div>

        </div>
    </div>

</div>

</body>
</html>
