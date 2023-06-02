package com.XieYiqiang.lab3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name ="ReadCookiesServlet",value="/read_cookies")
public class ReadCookiesServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter writer=response.getWriter();
        Cookie[] cookies=request.getCookies();
        if(cookies==null){
            writer.println("No cookies found");
        }else{
            writer.println("Number of cookies"+cookies.length);
            for(Cookie aCookie:cookies){
                 String name=aCookie.getName();
                  String value=aCookie.getValue();
                  writer.println(name+"="+value);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
