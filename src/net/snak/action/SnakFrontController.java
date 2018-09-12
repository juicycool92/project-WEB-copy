package net.snak.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SnakFrontController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String RequestURI = request.getRequestURI();
		System.out.println("requestURI : "+RequestURI);
		String contextPath = request.getContextPath();
		System.out.println("contextPath : "+contextPath);
		String command = RequestURI.substring(contextPath.length());
		System.out.println("command : "+command);

		ActionForward forward = null;
		Action action = null;

		if (command.equals("/adminSnakInsert.snak")) { //������ �Է�
			action = new adminInsertSnak();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/login.snak")) {//�α���
			action = new loginAdmin();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}  else if (command.equals("/userSnakView.snak")) {//������ ����
			int value = Integer.parseInt(request.getParameter("category"));
			System.out.println("�������߳�");
			action = new userViewSnak(value);
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/userSnakViewNew.snak")) {//������ ����(�Ż�)
			//int value = Integer.parseInt(request.getParameter("category"));
			System.out.println("�������߳�");
			action = new userViewSnakNew();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/adminSnakView.snak")) {//������ ����
			action = new adminViewSnak();
			try {
				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/adminSnakDetail.snak")) {//������ ������
			action = new adminDetailSnak(request.getParameter("num"));
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/userSnakDetail.snak")) {//���� ������
			int value = Integer.parseInt(request.getParameter("category"));
			System.out.println("�������߳�"+request.getParameter("category"));
			action = new userDetailSnak(value);
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/userSnakDetailNew.snak")) {//���� ������new
			//int value = Integer.parseInt(request.getParameter("category"));
			//System.out.println("�������߳�"+request.getParameter("category"));
			action = new userDetailSnakNew();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("/adminSnakDelete.snak")) {//������ ����
			action = new adminDeleteSnak();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/adminSnakModify.snak")) {//������ ����
			action = new adminModifySnak();
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