package com.nextstep.cakeconfections.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nextstep.cakeconfections.dao.SignupDao;
import com.nextstep.cakeconfections.dao.SignupDaoImpl;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
String navigateTo="";
		
		
		String action= request.getParameter("action");
		System.out.println(action);
		if(action.equalsIgnoreCase("logout"))
		{
			navigateTo="Login.jsp";
			 
		}
		else if(action.equalsIgnoreCase("blackforest"))
		{
			navigateTo="BlackForest.jsp";
			 
		}
		else if(action.equalsIgnoreCase("butterscotch"))
		{
			navigateTo="Butterscotch.jsp";
		}
		else if(action.equalsIgnoreCase("login"))
		{
			navigateTo="Login.jsp";
		}
		
		RequestDispatcher rd= request.getRequestDispatcher(navigateTo);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	
	}
}
