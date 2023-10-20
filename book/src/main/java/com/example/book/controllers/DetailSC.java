package com.example.book.controllers;

import java.io.IOException;

import com.example.book.model.DBCrud;
import com.example.book.model.Product;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/detail")
public class DetailSC extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        //tim kiem san pham theo loai sach (idSach)
        String idSach = req.getParameter("pid");

        //lay data tu form DBCrud
        DBCrud db = new DBCrud();

        Product p = db.getAllProductByID(idSach);
        
        req.setAttribute("detail", p);

        req.getRequestDispatcher("/WEB-INF/views/Detail.jsp").forward(req, resp);


        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
    
}
