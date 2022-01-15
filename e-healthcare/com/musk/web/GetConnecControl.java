package com.musk.web;

import java.io.*;
import java.sql.SQLException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.musk.web.dao.DataDao;
import com.musk.web.modal.Data;

@WebServlet("/getData")
public class GetConnecControl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String adhaar = request.getParameter("adhaar_number");
        String password = request.getParameter("pasword");
         
        DataDao DataDAO = new DataDao();
         
        try {
            Data data = DataDAO.checkLogin(adhaar, password);
            String destPage = "loginconnec.jsp";
             
            if (data != null) {
                HttpSession session = request.getSession();
                session.setAttribute("data", data);
                destPage = "show.jsp";
            } 
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } 
        catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
	}

	

}
