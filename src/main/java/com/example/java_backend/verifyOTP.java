package com.example.java_backend;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "verifyOTP", value = "/verifyOTP")
public class verifyOTP extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userEnteredOTP = req.getParameter("userEnteredOTP");

        HttpSession session = req.getSession();
        String sentOTP = (String) session.getAttribute("sentOTP");

        if (isCorrectEmail(userEnteredOTP, sentOTP)) {
            resp.sendRedirect("/login/resetPassword.jsp");
        } else {
            System.out.println("Email is not valid");
            resp.sendRedirect("/login/error.jsp");
        }
    }

    private boolean isCorrectEmail(String userEnteredOTP, String sentOTP) {
        if (userEnteredOTP.equals(sentOTP)) {
            return true;
        } else {
            return false;
        }
    }
}