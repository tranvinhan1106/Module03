package com.example.productdiscountcalculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/display-discount")

public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productDescription =  req.getParameter("ProductDescription");
        int listPrice = Integer.parseInt(req.getParameter("ListPrice"));
        int discountPercent = Integer.parseInt(req.getParameter("DiscountPercent"));
        float discountAmount = (float) (listPrice * discountPercent * 0.01);
        float discountPrice = listPrice -discountAmount;
        req.setAttribute("ProductDescription",productDescription);
        req.setAttribute("listPrice",listPrice);
        req.setAttribute("discountPercent" , discountPercent);
        req.setAttribute("discountAmount" ,discountAmount);
        req.setAttribute("discountPrice" , discountPrice);
        req.getRequestDispatcher("discountCaculator.jsp").forward(req,resp);
    }
}
