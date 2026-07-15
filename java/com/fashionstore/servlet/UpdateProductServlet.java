package com.fashionstore.servlet;

import java.io.IOException;

import com.fashionstore.dao.ProductDAO;
import com.fashionstore.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Product p = new Product();

        p.setProductId(Integer.parseInt(request.getParameter("productId")));
        p.setCategoryId(Integer.parseInt(request.getParameter("categoryId")));
        p.setProductName(request.getParameter("productName"));
        p.setDescription(request.getParameter("description"));
        p.setBrand(request.getParameter("brand"));
        p.setPrice(Double.parseDouble(request.getParameter("price")));
        p.setImage(request.getParameter("image"));
        p.setStatus(request.getParameter("status"));

        ProductDAO dao = new ProductDAO();

        if (dao.updateProduct(p)) {

            response.sendRedirect("viewProduct.jsp?msg=Product Updated Successfully");

        } else {

            response.sendRedirect("editProduct.jsp?id="
                    + p.getProductId()
                    + "&msg=Update Failed");

        }

    }

}