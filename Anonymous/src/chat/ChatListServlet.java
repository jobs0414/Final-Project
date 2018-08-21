package chat;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChatListServlet")
public class ChatListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        // ��� list���� �� Type�� ��Ÿ����
        String listType = request.getParameter("listType");
        // ���� ���ٸ� ���� ���
        if (listType == null || listType.equals(""))
            response.getWriter().write("");
         
        else if (listType.equals("close") || listType.equals("close")) {
            ChatDAO chatDAO = new ChatDAO();
            response.getWriter().write(chatDAO.eraseDB());
        }
         
        else {
            try {
                Integer.parseInt(listType);
                response.getWriter().write(getID(listType));
            } catch (Exception e) {
                response.getWriter().write("");
            }
        }
    }
 
    public String getID(String chatID) {
 
        StringBuffer result = new StringBuffer("");
        result.append("{\"result\":[");
        ChatDAO chatDAO = new ChatDAO();
        // SimpleDateFormat (���� ��¥�� ��Ÿ���� format)
        ArrayList<Chat> chatList = chatDAO.getChatListByRecent(chatID);
 
        // ����� ���� �� �� ���ÿ� ������ �޽����� ��� ��ƿͼ� ������
        for (int i = 0; i < chatList.size(); i++) {
            result.append("[{\"value\":\"" + chatList.get(i).getChatName() + "\"},");
            result.append("{\"value\":\"" + chatList.get(i).getChatContent() + "\"},");
            result.append("{\"value\":\"" + chatList.get(i).getChatTime() + "\"}]");
            // i �� ���������Ұ� �ƴ϶�� �ڿ� �� �ִٴ� �ǹ�
            if (i != chatList.size() - 1)
                result.append(",");
        }
        result.append("],\"last\":\"" + chatList.get(chatList.size() - 1).getChatID() + "\"}");
        return result.toString();
    }
}


