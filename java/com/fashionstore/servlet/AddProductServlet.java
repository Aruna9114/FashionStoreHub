package com.fashionstore.servlet;

import java.io.IOException;

import com.fashionstore.dao.ProductDAO;
import com.fashionstore.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String productName = request.getParameter("productName");
        String description = request.getParameter("description");
        String brand = request.getParameter("brand");
        double price = Double.parseDouble(request.getParameter("price"));
        int stock = Integer.parseInt(request.getParameter("stock"));
        String status = request.getParameter("status");
        String image = request.getParameter("image");

        Product product = new Product();

        product.setCategoryId(categoryId);
        product.setProductName(productName);
        product.setDescription(description);
        product.setBrand(brand);
        product.setPrice(price);
        product.setStock(stock);
        product.setStatus(status);
        product.setImage(image);

        ProductDAO dao = new ProductDAO();

        boolean result = dao.addProduct(product);

        if(result) {
            response.sendRedirect("addProduct.jsp?msg=Product Added Successfully");
        } else {
            response.sendRedirect("addProduct.jsp?msg=Failed to Add Product");
        }
    }
}