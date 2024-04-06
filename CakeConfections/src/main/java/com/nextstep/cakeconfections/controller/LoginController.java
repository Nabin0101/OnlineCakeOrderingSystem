package com.nextstep.cakeconfections.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nexstep.cakeconfections.model.SignupDto;
import com.nextstep.cakeconfections.dao.SignupDao;
import com.nextstep.cakeconfections.dao.SignupDaoImpl;


/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginController() {
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
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		SignupDto signupdto =new SignupDto();
		signupdto.setEmail(username);
		signupdto.setPassword(password);
		
		SignupDao signupdao=new SignupDaoImpl();
		boolean isUser= signupdao.checkCustomer(signupdto);
		if(isUser) {
			RequestDispatcher rd= request.getRequestDispatcher("Homepage.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			request.setAttribute("Invalid", "Invalid cerdentials!!!!!!");
			rd.forward(request, response);
		}
	}

}
