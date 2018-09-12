
package net.board.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.board.db.BoardDAO;

public class BoardListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.out.println("boardListAction ������ �߳�?");
		BoardDAO boarddao = new BoardDAO();
		List boardlist = new ArrayList();
		HttpSession session = request.getSession(); // ?

		int page = 1;
		int limit = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		String CALL_1 = null;
		String CALL_2 = null;
		String CALL_3 = null;
		String PWD = null;

		if (session.getAttribute("CALL_1") != null) {
			CALL_1 = (String) session.getAttribute("CALL_1");
		}
		if (session.getAttribute("CALL_2") != null) {
			CALL_2 = (String) session.getAttribute("CALL_2");
		}
		if (session.getAttribute("CALL_3") != null) {
			CALL_3 = (String) session.getAttribute("CALL_3");
		}
		
	
		
		if (session.getAttribute("PWD") != null) {
			PWD = (String) session.getAttribute("PWD");
		}

		int listcount = boarddao.getListCount(CALL_1, CALL_2, CALL_3, PWD); // ��
																			// ����Ʈ
																			// ����
																			// �޾ƿ�.

		boardlist = boarddao.getBoardList(CALL_1,CALL_2,CALL_3,PWD,page,limit); // ����Ʈ�� �޾ƿ�.

		// �� ������ ��.
		int maxpage = (int) ((double) listcount / limit + 0.95); // 0.95�� ���ؼ� �ø�
																	// ó��.
		// ���� �������� ������ ���� ������ ��(1, 11, 21 ��...)
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// ���� �������� ������ ������ ������ ��.(10, 20, 30 ��...)
		int endpage = maxpage;

		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		request.setAttribute("page", page); // ���� ������ ��.
		request.setAttribute("maxpage", maxpage); // �ִ� ������ ��.
		request.setAttribute("startpage", startpage); // ���� �������� ǥ���� ù ������ ��.
		request.setAttribute("endpage", endpage); // ���� �������� ǥ���� �� ������ ��.
		request.setAttribute("listcount", listcount); // �� ��. getListCount
		request.setAttribute("boardlist", boardlist); // getBoardCount

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./snak/you_n_orion/my_idea_list.jsp");
		return forward;

	}
}