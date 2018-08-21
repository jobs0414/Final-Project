package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bbs.BbsDAO;
import user.User;
import user.UserDAO;

@WebServlet("/bbs")
public class BbsController extends HttpServlet {
	
	BbsDAO dao = BbsDAO.getInstance();
	UserDAO uDao = UserDAO.getInstance();
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String command = request.getParameter("command");
		
		if(command.equals("join")) {
			join(request, response);
		}else if(command.equals("login")) {
			login(request, response);
		}
	
	}
	/*
	 *  "USERID" VARCHAR2(20) primary key, 
	"USERPASSWORD" VARCHAR2(20), 
	"USERNAME" VARCHAR2(20), 
	"USERGENDER" char(2), 
	"USEREMAIL" VARCHAR2(50)
	 */
	protected void join(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		String userName = request.getParameter("userName");
		String userGender = request.getParameter("userGender");
		String userEmail = request.getParameter("userEmail");
		
		String url = "errorView.jsp";
		
		if(userID != null && userID.length() != 0 && userPassword != null && userPassword.length() != 0
				&& userName != null && userName.length() != 0 && userGender != null && userGender.length() != 0 &&
						userEmail != null && userEmail.length() != 0) { //보안을 위해서 
			try {
				int r = uDao.join(new User(userID, userPassword, userName, userGender, userEmail));
				request.setAttribute("message", "가입 완료");
				url = "joinSuccessView.jsp";
			} catch (SQLException e) {
				e.printStackTrace();
				request.setAttribute("errorMsg", "가입 오류 잠시후 재 실행 하세요");
			}			
		}else {
			request.setAttribute("errorMsg", "잘못된 요청입니다. 다시 정상 요청 하세요");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userID");
		String pw = request.getParameter("userPassword");
		String url = "errorView.jsp";
		try {
			int result = uDao.login(id, pw);
			if(result == 1) {
				HttpSession session = request.getSession();
				session.setAttribute("userID", id);
				url = "main.jsp";
			}else {
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
