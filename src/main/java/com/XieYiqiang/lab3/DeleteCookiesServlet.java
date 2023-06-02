package com.XieYiqiang.lab3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name ="DeleteCookiesServlet",value ="/delete_cookies")
public class DeleteCookiesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer=response.getWriter();
        Cookie[] cookies=request.getCookies();
        if(cookies!=null){
             for(Cookie aCookie:cookies){
                 aCookie.setMaxAge(0);
                 response.addCookie(aCookie);
                 writer.println("All cookies have been delete");
             }
        }else{
                writer.println("No cookies found");
            }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
