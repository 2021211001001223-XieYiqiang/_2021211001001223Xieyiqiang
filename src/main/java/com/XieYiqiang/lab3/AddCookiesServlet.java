package com.XieYiqiang.lab3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name ="AddCookiesServlet",value ="/add_cookies")
public class AddCookiesServlet extends HttpServlet {
    private static int cookieCount;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String name="Cookie"+(++cookieCount);
         String value=String.valueOf(System.currentTimeMillis());
        Cookie cookie=new Cookie(name,value);
        response.addCookie(cookie);
        response.getWriter().println("A cookie has been created successfully!");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
