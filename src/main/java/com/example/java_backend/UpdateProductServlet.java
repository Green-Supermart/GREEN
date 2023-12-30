package com.example.java_backend;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "UpdateProductServlet", value = "/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello to the GET req from servlet");
        resp.getWriter().println("<h1>Hello there </h1>");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        resp.setContentType("text/html");

        String productName = req.getParameter("productName");
        String category = req.getParameter("category");
        double originalPrice = Double.parseDouble(req.getParameter("originalPrice"));
        double discountPrice = Double.parseDouble(req.getParameter("discountPrice"));
        String stockStatus = req.getParameter("stockStatus");
        double quantity = Double.parseDouble(req.getParameter("quantity"));
        double sku = Double.parseDouble(req.getParameter("sku"));
        String imgLink = req.getParameter("imgLink");
        int id = Integer.parseInt(req.getParameter("id"));

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/green", "root", "");
            String query = "UPDATE products SET productName = ?, category = ?, originalPrice = ?, discountPrice = ?, stockStatus = ?, quantity = ?, sku = ?, imgLink = ? WHERE id = ?";

            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, productName);
            pstmt.setString(2, category);
            pstmt.setDouble(3, originalPrice);
            pstmt.setDouble(4, discountPrice);
            pstmt.setString(5, stockStatus);
            pstmt.setDouble(6, quantity);
            pstmt.setDouble(7, sku);
            pstmt.setString(8, imgLink);
            pstmt.setInt(9, id);

            int result = pstmt.executeUpdate();
            if (result == 0) {
                System.out.println("No rows were updated. Check the id: " + id);
            }

            resp.sendRedirect("admin/products.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}