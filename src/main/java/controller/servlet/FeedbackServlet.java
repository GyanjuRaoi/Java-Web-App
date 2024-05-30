package controller.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.Dao.feedbackDao;
/**
 * Servlet implementation class FeedbackServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/FeedbackServlet" })
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
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
		String name = request.getParameter("name");
        String mail = request.getParameter("mail");
        String comment = request.getParameter("comment");

        feedbackDao dao = new feedbackDao();
        try {
            int rowsInserted = dao.insertFeedback(name, mail, comment);
            if (rowsInserted > 0) {
                response.sendRedirect("viewpage/success.jsp"); // Redirect to a success page
            } else {
                response.sendRedirect("viewpage/feedback.jsp"); // Redirect to an error page
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("viewpage/feedback.jsp"); // Redirect to an error page
        }
	}

}

