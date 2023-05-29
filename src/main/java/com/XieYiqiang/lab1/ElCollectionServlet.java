package com.XieYiqiang.lab1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name ="ElCollectionServlet",value ="/elc")
public class ElCollectionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String[] firstName={"Bill","Scott","Larry","Xie"};
        List<String> lastName=new ArrayList<>();
           lastName.add("Ellison");
          lastName.add("Gates");
          lastName.add("McNealy");
          lastName.add("Yiqiang");
        Map<String,String> company=new HashMap<String,String>();
       company.put("Ellison","Sun");
       company.put("Gates","IBM");
       company.put("McNealy","Microsoft");
       company.put("Yiqiang","ECJTU");
        request.setAttribute("fName",firstName);
        request.setAttribute("lName",lastName);
        request.setAttribute("company",company);
        request.getRequestDispatcher("elcollection.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
