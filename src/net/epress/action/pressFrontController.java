package net.epress.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class pressFrontController
 */
@WebServlet("/pressFrontController")
public class pressFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public pressFrontController() {
		super();
		// TODO Auto-generated constructor stub
	}
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String RequestURI = request.getRequestURI();
		System.out.println("requestURI : "+RequestURI);
		String contextPath = request.getContextPath();
		System.out.println("contextPath : "+contextPath);
		String command = RequestURI.substring(contextPath.length());
		System.out.println("command : "+command);

		ActionForward forward = null;
		Action action = null;
		
		if (command.equals("/pressInsert.epress")) { //������ �Է�
			//parameter�� title, context ���� �Ƿ�����
			action = new pressInsert();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/pressViewAdmin.epress")) {//������ ���� 
			action = new pressViewAdmin();
			try {
				forward = action.execute(request, response);
				forward.getPath();
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/pressViewUser.epress")) {//������ ���� 
			//curPage ������
			action = new pressViewUser(request.getParameter("curPage"));
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/pressDetail.epress")) {//���� ������
			//num���ڰ� ����,kind ���ڰ� 1 �ΰ�� ���� ������, 2 ���� ������, 3 ������ ������,count ��ȸ��
			System.out.println(request.getParameter("num")+request.getParameter("kind")+request.getParameter("count"));
			action = new pressDetail(request.getParameter("num"),request.getParameter("kind"),request.getParameter("count"));
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/pressDelete.epress")) {//������ ���� 
			action = new pressDelete(request.getParameter("num"));
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/pressModify.epress")) {//������ ���� 
			//num title area1 �� �Ѿ��
			action = new pressModify(request.getParameter("num"),request.getParameter("title"),request.getParameter("area1"));
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
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request,response);
	}



}
