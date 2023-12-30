package com.example.java_backend;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "AddProductServlet", value = "/AddProductServlet")
public class AddProductServlet extends HttpServlet {


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello to the GET req from servlet");

        resp.setContentType("text/html");

        resp.getWriter().println("<h1>Hello there </h1>");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productName = req.getParameter("productName");
        String productDesc = req.getParameter("productDesc");
        String category = req.getParameter("category");
        double originalPrice = Double.parseDouble(req.getParameter("originalPrice"));
        int discountPrice = Integer.parseInt(req.getParameter("discountPrice"));
        String stockStatus = req.getParameter("stockStatus");
        double quantity = Double.parseDouble(req.getParameter("quantity"));
        double sku = Double.parseDouble(req.getParameter("sku"));
        String imgLink = req.getParameter("imgLink");

        // Connect to the database and add the product
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/green", "root", "");

            String query = "INSERT INTO products (productName, category, originalPrice, discountPrice, stockStatus, quantity, sku, imgLink) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, productName);
            pstmt.setString(2, category);
            pstmt.setDouble(3, originalPrice);
            pstmt.setInt(4, discountPrice);
            pstmt.setString(5, stockStatus);
            pstmt.setDouble(6, quantity);
            pstmt.setDouble(7, sku);
            pstmt.setString(8, imgLink);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                resp.sendRedirect("admin/products.jsp");
            } else {
                resp.sendRedirect("admin/products/new.jsp");
            }
        } catch (Exception e) {
            // Handle exceptions appropriately
            PrintWriter out = resp.getWriter();
            out.println("<html><head><title>Error Page</title></head><body>");
            out.println("<h1>Oops! An error occurred.</h1>");
            out.println("<p>Error Details: " + e.toString() + "</p>");
            out.println("</body></html>");
        }
    }
}