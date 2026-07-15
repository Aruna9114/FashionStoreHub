package com.fashionstore.servlet;

import java.io.IOException;

import com.fashionstore.dao.AdminDAO;
import com.fashionstore.model.Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminDAO dao = new AdminDAO();

        Admin admin = dao.loginAdmin(username, password);

        if(admin != null){

            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);

            response.sendRedirect("adminDashboard.jsp");

        }else{

            response.sendRedirect("adminLogin.jsp?msg=Invalid Username or Password");

        }

    }
}