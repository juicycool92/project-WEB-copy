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

		if (command.equals("/adminSnakInsert.snak")) { //관리자 입력
			action = new adminInsertSnak();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/login.snak")) {//로그인
			action = new loginAdmin();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}  else if (command.equals("/userSnakView.snak")) {//유저용 보기
			int value = Integer.parseInt(request.getParameter("category"));
			System.out.println("들어오긴했나");
			action = new userViewSnak(value);
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/userSnakViewNew.snak")) {//유저용 보기(신상)
			//int value = Integer.parseInt(request.getParameter("category"));
			System.out.println("들어오긴했나");
			action = new userViewSnakNew();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/adminSnakView.snak")) {//관리자 보기
			action = new adminViewSnak();
			try {
				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/adminSnakDetail.snak")) {//관리자 디테일
			action = new adminDetailSnak(request.getParameter("num"));
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/userSnakDetail.snak")) {//유저 디테일
			int value = Integer.parseInt(request.getParameter("category"));
			System.out.println("들어오긴했나"+request.getParameter("category"));
			action = new userDetailSnak(value);
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/userSnakDetailNew.snak")) {//유저 디테일new
			//int value = Integer.parseInt(request.getParameter("category"));
			//System.out.println("들어오긴했나"+request.getParameter("category"));
			action = new userDetailSnakNew();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("/adminSnakDelete.snak")) {//관리자 삭제
			action = new adminDeleteSnak();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/adminSnakModify.snak")) {//관리자 수정
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