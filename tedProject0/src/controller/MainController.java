package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.*;
import modelDAO.*;

@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MainController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String command = request.getParameter("command");
		
		if(command.equals("topic")) {
			topic(request, response);
		} else if(command.equals("word")) {
			word(request, response);
		} else {
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
				request.setAttribute("msg", "찾는 데이터가 없습니다.");
			}
		} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("errorMsg","에러 발생");
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
						request.setAttribute("msg", "찾는 데이터가 없습니다.");
					}
				} else if(topic.equals("Art")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Art");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "찾는 데이터가 없습니다.");
					}
				} else if(topic.equals("Health_Medical")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Health_Medical");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "찾는 데이터가 없습니다.");
					}
				} else if(topic.equals("Self-development")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Self-development");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "찾는 데이터가 없습니다.");
					}
				} else if(topic.equals("Politics")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Politics");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "찾는 데이터가 없습니다.");
					}
				} else if(topic.equals("Environment")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Environment");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "찾는 데이터가 없습니다.");
					}
				} else if(topic.equals("Society")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Society");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "찾는 데이터가 없습니다.");
					}
				} else if(topic.equals("Technology_Science")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Technology_Science");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "찾는 데이터가 없습니다.");
					}					
				} else if(topic.equals("Education")){	 
					ArrayList<wordDTO> bb = wordDAO.getCounting("Education");
					if (bb.size() != 0) {
						request.setAttribute("wordShow", bb);
					} else {
						request.setAttribute("msg", "찾는 데이터가 없습니다.");
					}		
				} 
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("errorMsg","에러 발생");
				url = "errorView.jsp";
			}
			 request.getRequestDispatcher(url).forward(request, response);
		} else {
			response.sendRedirect("ted.jsp");
		}
	}

}


