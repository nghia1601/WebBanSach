package com.example.book.controllers;

import java.io.IOException;

import com.example.book.model.Account;
import com.example.book.model.DBCrud;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class LoginServletController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/Login.jsp");
            requestDispatcher.forward(req, resp);

        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String username = req.getParameter("user");
        String password = req.getParameter("pass");

        DBCrud dao = new DBCrud();
        Account a = dao.login(username, password);
        if(a == null){
            req.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(req, resp);
        }else{
            resp.sendRedirect("home");
            
        }
    }
    
}
