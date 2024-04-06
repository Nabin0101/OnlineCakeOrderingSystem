package com.nextstep.cakeconfections.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nexstep.cakeconfections.model.SignupDto;
import com.nextstep.cakeconfections.dao.SignupDao;
import com.nextstep.cakeconfections.dao.SignupDaoImpl;

/**
 * Servlet implementation class SignupController
 */
@WebServlet("/SignupController")
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SignupController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String address= request.getParameter("address");
		long contact= Long.parseLong(request.getParameter("contact"));
		String password= request.getParameter("password");
		String repassword= request.getParameter("repassword");
		
		
		
		SignupDto signupdto=new SignupDto();
		signupdto.setName(name);
		signupdto.setEmail(email);
		signupdto.setAddress(address);
		signupdto.setContactNumber(contact);
		signupdto.setPassword(password);
		signupdto.setRepassword(repassword);
		
		SignupDao signupdao =new SignupDaoImpl();
		signupdao.insertUserDetails(signupdto);
		
		RequestDispatcher rd= request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
		
	}

}
