package com.fashionstore.servlet;

import java.io.IOException;

import com.fashionstore.dao.ProductDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int productId = Integer.parseInt(request.getParameter("id"));

        ProductDAO dao = new ProductDAO();

        if (dao.deleteProduct(productId)) {

            response.sendRedirect("viewProduct.jsp?msg=Product Deleted Successfully");

        } else {

            response.sendRedirect("viewProduct.jsp?msg=Delete Failed");

        }
    }
}