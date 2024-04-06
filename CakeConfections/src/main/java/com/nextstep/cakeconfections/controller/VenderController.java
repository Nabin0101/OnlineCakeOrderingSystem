package com.nextstep.cakeconfections.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.nexstep.cakeconfections.model.VenderDto;
import com.nextstep.cakeconfections.dao.RegisterDao;
import com.nextstep.cakeconfections.dao.RegisterDaoImpl;

/**
 * Servlet implementation class VenderController
 */
@MultipartConfig(maxFileSize =16177215)
@WebServlet("/VenderController")
public class VenderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VenderController() {
        super();
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
			String name=request.getParameter("name");
		    String shopName = request.getParameter("shopname");
		    String panNumber = request.getParameter("pannumber");
		    String shopAddress = request.getParameter("shopaddress");
		    String contactNumber = request.getParameter("contactnumber");
		    Part image =request.getPart("images");
		    InputStream imageStream=image.getInputStream();
		    String price = request.getParameter("price");
		    String productName = request.getParameter("productname");
		    String category = request.getParameter("category");
		    
		    VenderDto vender =new VenderDto();
		    vender.setName(name);
		    vender.setShopName(shopName);
		    vender.setPanNumber(panNumber);
		    vender.setAddress(shopAddress);
		    vender.setContactNumber(Long.parseLong(contactNumber));
		    vender.setImage(imageStream);
		    vender.setPrice(Integer.parseInt(price));
		    vender.setProductName(productName);
		    vender.setCategory(category);
		    
		    RegisterDao venderregister= new RegisterDaoImpl();
		    venderregister.insertProductDetails(vender);
		    
		    RequestDispatcher rd= request.getRequestDispatcher("AdminDashboard.jsp");
			rd.forward(request, response); 
		    
	}

}
