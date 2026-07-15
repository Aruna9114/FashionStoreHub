package com.fashionstore.servlet;

import java.io.IOException;

import com.fashionstore.dao.CategoryDAO;
import com.fashionstore.model.Category;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddCategoryServlet")
public class AddCategoryServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String categoryName = request.getParameter("categoryName");
        String description = request.getParameter("description");

        Category category = new Category();
        category.setCategoryName(categoryName);
        category.setDescription(description);

        CategoryDAO dao = new CategoryDAO();

        if (dao.addCategory(category)) {
            response.sendRedirect("addCategory.jsp?msg=Category Added Successfully");
        } else {
            response.sendRedirect("addCategory.jsp?msg=Failed to Add Category");
        }
    }
}