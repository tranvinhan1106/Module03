package com.example.calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet( name = "CalculatorServlet" , urlPatterns="/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(req.getParameter("NumberFirst"));
        float secondOperand = Float.parseFloat(req.getParameter("NumberSecond"));
        char operator = req.getParameter("operator").charAt(0);
        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result :</h1>");
        try {
            float result = Calculator.calculate(firstOperand,secondOperand,operator);
            writer.println("<b>"+ firstOperand + " " + operator + " " + secondOperand + " = " + result+"</b>");
        }catch (Exception e){
            writer.println("Error:" +e.getMessage());
        }
        writer.println("</html>");
    }
}
