package com.XieYiqiang.week6;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txt=request.getParameter("txt");
        String search=request.getParameter("search");
        if(txt=="")
        {
            response.sendRedirect("index2.jsp");
        }else
        {
            if(search.equals("baidu"))
            {
                System.out.println(txt);
                response.sendRedirect("https://www.baidu.com/s?wd="+txt);
            } else if (search.equals("bing")){
                response.sendRedirect("https://cn.bing.com/search?q="+txt);
            } else if (search.equals("google")) {
                response.sendRedirect("https://www.google.com/search?q="+txt);
            }
        }
    }
}
