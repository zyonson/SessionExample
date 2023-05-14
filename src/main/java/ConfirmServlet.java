import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

@WebServlet("/ConfirmServlet")
public class ConfirmServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ConfirmServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        request.setAttribute("title", "確認画面");

        String content = request.getParameter("content");
        HttpSession session = request.getSession();
        session.setAttribute("content", content);

        String view = "/WEB-INF/views/confirm.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}
