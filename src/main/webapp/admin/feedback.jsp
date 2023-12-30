<%-- 
    Document   : feedback
    Created on : 24 Dec 2023, 22:27:04
    Author     : Sandun
--%>

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

    <title>Feedback - Admin | GREEN Supermart</title>

    <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">

    <link rel="preload" href="admin.css" as="style" type="text/css">
    <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
    <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
    <link rel="preload" href="https://i.postimg.cc/TwdpWvhk/admin-Logo.png" as="image" type="image/png">

    <script src="https://apis.google.com/js/api.js"></script>
    <script src="fetchFeedback.js" defer></script>
    <script src="admin.js" defer></script>
</head>

<body>

<div class="body flex flexRow">

    <div class="navigation flex flexCol">

        <div class="navContainer flex flexCol">
            <div class="navLogo flex" onclick="window.location.href='dashboard.jsp'">
                <img src="https://i.postimg.cc/TwdpWvhk/admin-Logo.png">
            </div>

            <nav class="flex flexCol">
                        <span class="navLink flex flexRow" onclick="window.location.href='dashboard.jsp'">
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

                <span class="activeLink flex flexRow">
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
                        <h1>Feedback</h1>

                        <span class="reloadIcon flex" onclick="window.location.reload();" title="Refresh">
                                    <i class="fa-solid fa-arrows-rotate"></i>
                                </span>
                    </div>
                </div>

                <section style="width: 100%; height: 75vh;">
                    <div class="flex flexCol" style="width: calc(100% - 40px); height: calc(100% - 40px); color: #242424; background: #FFFFFF; padding: 15px 20px; border-radius: 10px;">

                        <div class="flex flexRow" style="height: 100%; width: 100%; margin-top: 0; overflow: auto; align-items: start;">
                            <div style="height: auto; width: 100%;">

                                <table id="feedbackTable">
                                    <tr>
                                        <th style="width: 25%;">Email</th>
                                        <th style="width: 30%;">Subject</th>
                                        <th style="width: 45%;">Message</th>
                                    </tr>
                                </table>

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
