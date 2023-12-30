package com.example.java_backend;

import java.io.*;
import java.util.Random;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "sendOTP", value = "/sendOTP")
public class sendOTP extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String otp = generateRandomOTP();

        HttpSession session = req.getSession();
        session.setAttribute("sentOTP", otp);

        String recipientEmail = req.getParameter("emailForOTP");

        session.setAttribute("userEmail", recipientEmail);

        try {
            sendEmail.emailConfiguration(recipientEmail, "Green Supermart Account Verification OTP", "Your OTP code for verification is:" + otp);
        } catch (Exception e) {
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = req.getRequestDispatcher("/login/verify.jsp");
        dispatcher.forward(req, resp);
    }

    private String generateRandomOTP() {
        Random random = new Random();
        int otp = 100000 + random.nextInt(900000);

        return String.valueOf(otp);
    }
}