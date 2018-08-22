package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.realDAO;
import modelDTO.RealDTO;
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		if(command.equals("realtime")) {
			realtime(request, response);
		}else if(command.equals("searchCount")) {
			searchCount(request,response);
		}else {
			
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
}
