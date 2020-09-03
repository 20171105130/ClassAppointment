package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.lyq.bean.ApplicantDAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 * Servlet implementation class AjaxServlet
 */

public class AjaxServlet extends HttpServlet {


	ApplicantDAO dao = new ApplicantDAO();
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    	request.setCharacterEncoding("utf-8");
//        response.setCharacterEncoding("utf-8");
////		String name=request.getParameter("username");
//		String email = request.getParameter("email");
//		PrintWriter out=response.getWriter();
//		//获取数据库的数据
//		String sql="select * from tb_applicant where applicant_email ='"+email+"' ";
//		System.out.println(sql);
//		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection c=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_database10?characterEncoding=utf-8","root","123456");
//			Statement s=c.createStatement();
//			ResultSet rs=s.executeQuery(sql);
//			if(rs.next()){
//				out.print(1);
//			}else{
//				out.print(0);
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		out.flush();
//		out.close();

    }
}
