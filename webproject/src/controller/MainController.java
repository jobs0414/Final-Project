package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;
import modelDTO.*;
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	 public MainController() {
	        super();
	    }
	
		UserDAO uDao = UserDAO.getInstance();
		
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		if(command.equals("realtime")) {
			realtime(request, response);
		}else if(command.equals("searchCount")) {
			searchCount(request,response);
		}else if(command.equals("topic")){
			topic(request,response);
		}else if(command.equals("word")) {
			word(request,response);
		}else if(command.equals("information")) {
			information(request,response);
		}else if(command.equals("join")) {
			join(request,response);
		}else if(command.equals("login")) {
			login(request,response);
		}
	}

	protected void realtime(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "error.jsp";
		ArrayList<RealDTO> data = null;
		try {
			data = realDAO.getAll();
			if(data.size() != 0) {
				request.setAttribute("data", data);
				url = "jsonRes.jsp";
			}else {
				request.setAttribute("message", "��û�� �����ʹ� �����ϴ�");
				url = "msg.jsp";
			}
		} catch (SQLException e) {
			e.printStackTrace();//���� �߻� �����丮�� �����ڰ� �ܼ�â���� Ȯ��
			request.setAttribute("errorMsg", "�˼��մϴ�, �� ��û���ּ���");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	protected void searchCount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String topic = request.getParameter("word");
		System.out.println(topic);
		
		try {
			realDAO.upCounting(topic);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	private void topic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("-------------------");
		String url = "msgView.jsp";
		try {	
			ArrayList<topicDTO> aa = topicDAO.topicShow();
			if (aa.size() != 0) {
				request.setAttribute("topicShow", aa);
				url = "topicView.jsp";
			} else {
				request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
			}
		} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("errorMsg","���� �߻�");
				url = "errorView.jsp";
		}
		request.getRequestDispatcher(url).forward(request, response);
	}		

	private void word(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("55");
		String url = "cloud.jsp";
		String topic = request.getParameter("topic");
		System.out.println(topic);
		
		if (topic != null) {
			try {
				if(topic.equals("Economy")){
					ArrayList<wordDTO> bb = wordDAO.getCounting("Economy");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";
					}
				} else if(topic.equals("Art")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Art");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Health_Medical")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Health_Medical");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Self-development")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Self-development");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Politics")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Politics");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Environment")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Environment");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Society")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Society");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Technology_Science")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Technology_Science");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}					
				} else if(topic.equals("Education")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Education");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}		
				} 
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("errorMsg","���� �߻�");
				url = "errorView.jsp";
			}
			 request.getRequestDispatcher(url).forward(request, response);
		} else {
			response.sendRedirect("ted.jsp");
		}
	}
		

	private void information(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("66");
		String url = null;
		String topic = request.getParameter("topic");
		System.out.println(topic);
		
		if (topic != null) {
			try {
				if(topic.equals("Economy")){
					ArrayList<infoDTO> cc = infoDAO.showInfo("Economy");
					if (cc.size() != 0) {
						request.setAttribute("infoShow", cc);
						url = "information0.jsp";
					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Art")){	 
					ArrayList<infoDTO> cc = infoDAO.showInfo("Art");
					if (cc.size() != 0) {						
						request.setAttribute("infoShow", cc);
						url = "information1.jsp";

					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Health_Medical")){	 
					ArrayList<infoDTO> cc = infoDAO.showInfo("Health_Medical");
					if (cc.size() != 0) {
						request.setAttribute("infoShow", cc);
						url = "information2.jsp";

					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Self-development")){	 
					ArrayList<infoDTO> cc = infoDAO.showInfo("Self-development");
					if (cc.size() != 0) {
						request.setAttribute("infoShow", cc);
						url = "information3.jsp";

					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Politics")){	 
					ArrayList<infoDTO> cc = infoDAO.showInfo("Politics");
					if (cc.size() != 0) {
						request.setAttribute("infoShow", cc);
						url = "information4.jsp";

					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Environment")){	 
					ArrayList<infoDTO> cc = infoDAO.showInfo("Environment");
					if (cc.size() != 0) {
						request.setAttribute("infoShow", cc);
						url = "information5.jsp";

					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Society")){	 
					ArrayList<infoDTO> cc = infoDAO.showInfo("Society");
					if (cc.size() != 0) {
						request.setAttribute("infoShow", cc);
						url = "information6.jsp";

					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}
				} else if(topic.equals("Technology_Science")){	 
					ArrayList<infoDTO> cc = infoDAO.showInfo("Technology_Science");
					if (cc.size() != 0) {
						request.setAttribute("infoShow", cc);
						url = "information7.jsp";

					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}					
				} else if(topic.equals("Education")){	 
					ArrayList<infoDTO> cc = infoDAO.showInfo("Education");
					if (cc.size() != 0) {
						request.setAttribute("infoShow", cc);
						url = "information8.jsp";

					} else {
						request.setAttribute("msg", "ã�� �����Ͱ� �����ϴ�.");
						url = "msgView.jsp";

					}		
				} 
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("errorMsg","���� �߻�");
				url = "errorView.jsp";
			}
			 request.getRequestDispatcher(url).forward(request, response);
		} else {
			response.sendRedirect("ted.jsp");
		}
	}
	
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userID");
		String pw = request.getParameter("userPassword");
		String url = "errorView.jsp";
		try {
			int result = uDao.login(id, pw);
			if(result == 1) {
				HttpSession session = request.getSession();
				session.setAttribute("userID", id);
				url = "TedMain.jsp";
			}else {
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
		

	private void join(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		String userName = request.getParameter("userName");
		String userGender = request.getParameter("userGender");
		String userEmail = request.getParameter("userEmail");
		
		String url = "errorView.jsp";
		
		if(userID != null && userID.length() != 0 && userPassword != null && userPassword.length() != 0
				&& userName != null && userName.length() != 0 && userGender != null && userGender.length() != 0 &&
						userEmail != null && userEmail.length() != 0) { //������ ���ؼ� 
			try {
				int r = uDao.join(new UserDTO(userID, userPassword, userName, userGender, userEmail));
				request.setAttribute("message", "���� �Ϸ�");
				url = "joinSuccessView.jsp";
			} catch (SQLException e) {
				e.printStackTrace();
				request.setAttribute("errorMsg", "���� ���� ����� �� ���� �ϼ���");
			}			
		}else {
			request.setAttribute("errorMsg", "�߸��� ��û�Դϴ�. �ٽ� ���� ��û �ϼ���");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
	