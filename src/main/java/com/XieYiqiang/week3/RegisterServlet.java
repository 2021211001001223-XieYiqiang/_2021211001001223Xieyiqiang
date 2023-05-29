package com.XieYiqiang.week3;

import com.XieYiqiang.week4.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String passwords = request.getParameter("password");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String birthdate = request.getParameter("birthdate");
        Connection conn = null;
        PreparedStatement ps = null;
        int count = 0;
        try {
            conn = DBUtil.getConnection();
            String sql = "insert into usertable(username,passwords,email,gender,birthdate) values(?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, passwords);
            ps.setString(3, email);
            ps.setString(4, gender);
            ps.setString(5, birthdate);
            count = ps.executeUpdate();
            System.out.println(count);
            if (count == 1) {
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
/*
      PrintWriter out=response.getWriter();
        out.write("<br>username:"+username);
        out.write("<br>password:"+password);
        out.write("<br>email:"+email);
        out.write("<br>gender:"+gender);
        out.write("<br>birthdate:"+birthdate);
*/
    }
}