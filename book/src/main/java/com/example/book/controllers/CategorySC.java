package com.example.book.controllers;

import java.io.IOException;
import java.util.List;

import com.example.book.model.Category;
import com.example.book.model.DBCrud;
import com.example.book.model.Product;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/category")
public class CategorySC extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //tim kiem san pham theo loai sach (idLoai)
        String idLoai = req.getParameter("idLoai");

        //lay data tu form DBCrud
        DBCrud db = new DBCrud();
        List<Product> list = db.getAllProductByCID(idLoai);
        List<Category> listC = db.getAllCategory();


        //set data toi jsp
        req.setAttribute("listP", list);
        req.setAttribute("listC", listC);

        req.getRequestDispatcher("/WEB-INF/views/ProductPage.jsp").forward(req, resp);;

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
    
}
