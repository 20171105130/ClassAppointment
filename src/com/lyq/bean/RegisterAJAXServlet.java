package com.lyq.bean;

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
 * Servlet implementation class RegisterAJAXServlet
 */
@WebServlet("/RegisterAJAXServlet")
public class RegisterAJAXServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterAJAXServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter out = response.getWriter();
	        
	        //获取表单提交的数据
		 String email = request.getParameter("email");

	        //将数据传入service进行逻辑判断
	        ApplicantDAO dao = new ApplicantDAO();
	        boolean flag = dao.isExistEmail(email);
	        
	        //AJAX方式
	        if(flag){
	            ////用户名已经被注册，返回1
	            out.println(1);
	          
	        }else{
	            
	        	//说明用户名没有被创建，可以注册,返回0
	            out.println(0);
	           
	        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
