package net.board.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardFrontController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		ActionForward forward = null;
		Action action = null;

		
		//String del = request.getParameter("DEL");
		
		// 글쓰기 폼가기 그냥 qna_board_write.jsp라고 써도 되나?
		if (command.equals("/BoardWrite.bo")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Snak/you_n_orion/event150304.jsp");

			// 글쓰기 폼에서 글 등록 액션으로 간다
		} else if (command.equals("/BoardTest.bo")) {
			System.out.println("들왔다");
			forward = new ActionForward();
			forward.setRedirect(false);
			System.out.println("들왔다2");
			forward.setPath("./Snak/you_n_orion/test.jsp");
			System.out.println("들왔다3");

		} else if (command.equals("/BoardAddAction.bo")) {
			action = new BoardAddAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

			// 접수 내역 찾기 폼
		} else if (command.equals("/BoardInquiry.bo")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./Snak/you_n_orion/find_my_inquiry02.jsp");

			// 내역 폼에서 내역 찾기 액션으로 간다
		} else if (command.equals("/BoardInquiryAction.bo")) {
			action = new BoardInquiryAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/List.bo")) {
			action = new BoardListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

			//
		} else if (command.equals("/BoardModifyView.bo")) {
			action = new BoardModifyView();
			System.out.println("모디파이");
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/BoardModifyAction.bo")) {
			action = new BoardModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/BoardAddAction.bo")) {
			action = new BoardAddAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		
		if (forward.isRedirect()) {

			response.sendRedirect(forward.getPath());
		} else {

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