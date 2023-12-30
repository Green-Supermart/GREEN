<%-- 
    Document   : register
    Created on : 5 Dec 2023, 14:02:10
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="style.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Register Your Account | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="style.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        
        <script src="script.js" defer></script>
    </head>
    
    <body>
       
        <div class="containerBlock flex" style="height: 100vh; width: 100%; justify-content: center; align-items: center;">
        <form id="registerForm" class="loginRegisterForm flex" action="/register" method="post">
            <div class="formContainer flex flexCol">
                <div class="formLogo" onclick="window.location.href='/'">
                    <img src="https://i.postimg.cc/G9nCKgLp/green-Logo.png" alt="">
                </div>
<%--                &lt;%&ndash; Display error message if any &ndash;%&gt;--%>
<%--                <% if (request.getAttribute("errorMessage") != null) { %>--%>
<%--                    <div class="errorMessage">--%>
<%--                        <%= request.getAttribute("errorMessage") %>--%>
<%--                    </div>--%>
<%--                <% } %>--%>
                <input type="text" placeholder="Full Name" name="name" title="Full Name" required>
                <input type="email" placeholder="Email Address" name="email" title="Email Address" required>
                <input type="text" placeholder="Address" name="address" title="Address" required>
                <input type="password" placeholder="Password" name="password" title="Password" required>
                <input type="password" placeholder="Confirm Password" name="conPassword" title="Confirm Password" required>
                <span class="termsCheckbox flex flexRow">
                    <input type="checkbox" required>
                    <span>
                        I agree to the <a href="termsConditions.jsp">Terms & Conditions</a>
                    </span>
                </span>
                <button type="submit">Register</button>
                <span class="formRedirector">
                    Existing User?
                    <a href="login.jsp">Login</a>
                </span>
            </div>
        </form>
    </div>
        
                

        
    </body>
    
</html>
