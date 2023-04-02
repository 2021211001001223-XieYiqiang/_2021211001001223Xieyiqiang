package com.XieYiqiang.week5;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.XieYiqiang.week4.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name="LoginSrvlet",value="/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String username=request.getParameter("username");
 	String password=request.getParameter("password");
 	response.setContentType("text/html");
 	PrintWriter out=response.getWriter();
 	Connection conn=null;
 	try {
		conn= DBUtil.getConnection();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
 	PreparedStatement ps=null;
 	ResultSet rs=null;
 	String sql="select * from usertable where  username=? and passwords=? ";
 	try {
			ps=conn.prepareStatement(sql);
			ps.setString(1,username);
			ps.setString(2,password);
			rs=ps.executeQuery();
			if(rs.next())
			{
				request.setAttribute("id",rs.getString("id"));
				request.setAttribute("username",rs.getString("username"));
				request.setAttribute("passwords",rs.getString("passwords"));
				request.setAttribute("email",rs.getString("email"));
				request.setAttribute("gender",rs.getString("gender"));
				request.setAttribute("birthdate",rs.getString("birthdate"));
				request.getRequestDispatcher("userinfo.jsp").forward(request,response);
//				out.println("Login Success!!!");
//				out.println("Welcome"+username);
			}
			else
			{
				request.setAttribute("message","username or Password Error!!!");
				request.getRequestDispatcher("login.jsp").forward(request,response);
				//		out.println("username or Password Error!!!");
			}
	     }catch (Exception e) {
	    	 e.printStackTrace();
		}finally {
			 DBUtil.close(conn, ps, rs);
		}
}
}
