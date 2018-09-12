package net.admin.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminFrontController extends HttpServlet implements Servlet {

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		ActionForward forward = null;
		Action action = null;

		// String del = request.getParameter("DEL");

		// �۾��� ������ �׳� qna_board_write.jsp��� �ᵵ �ǳ�?
		System.out.println(contextPath);

		System.out.println(command);

		if (command.equals("/admin/idea/list.ad")) {
			System.out.println("Ȯ��1");
			action = new AdminListAction();
			System.out.println("Ȯ��2");
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} else if (command.equals("/admin/idea/AdminDetailAction.ad")) {
			action = new AdminDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		if (forward.isRedirect()) {
			System.out.println("Ȯ��4");
			response.sendRedirect(forward.getPath());
		} else {

			System.out.println("Ȯ��5");
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);

		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}
}