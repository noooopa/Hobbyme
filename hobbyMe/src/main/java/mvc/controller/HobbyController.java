package mvc.controller;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import mvc.model.HobbyDAO;
import mvc.model.HobbyDTO;

public class HobbyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final int LISTCOUNT = 5; 

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
	
		if (command.equals("/login.do")) {
		    String id = request.getParameter("id");
		    String password = request.getParameter("password");

		    HobbyDAO dao = HobbyDAO.getInstance();
		    boolean result = dao.validateUser(id, password);

		    if (result) {
		        request.getSession().setAttribute("sessionId", id);
		        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login/resultMember.jsp?msg=2");
		        rd.forward(request, response);
		    } else {
		        response.sendRedirect("login.jsp?error=1");
		    }
		} else if(command.equals("/signup.do")) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login/signup.jsp");
			rd.forward(request, response);
		} else if(command.equals("/signupProcess.do")) {
		    // 회원가입 처리 로직
		    request.setCharacterEncoding("UTF-8");
		    String str1 = request.getParameter("postcode");
		    String str2 = request.getParameter("address");
		    String str3 = request.getParameter("detailAddress");
		    String address = String.join("/", str1, str2, str3);
		    String birthdateStr = request.getParameter("birthdate");
		    Date birthdate = Date.valueOf(birthdateStr);

		    HobbyDTO dto = new HobbyDTO();
		    dto.setUserId(request.getParameter("user_id"));
		    dto.setPassword(request.getParameter("password"));
		    dto.setName(request.getParameter("name"));
		    dto.setPhone(request.getParameter("phone"));
		    dto.setAddress(address);
		    dto.setGender(request.getParameter("gender"));
		    dto.setBirthdate(birthdate);
		    dto.setClasses("U");

		    HobbyDAO dao = HobbyDAO.getInstance();
		    dao.insertUser(dto);

		    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login/resultMember.jsp?msg=1");
	        rd.forward(request, response);
		}

	}
}
