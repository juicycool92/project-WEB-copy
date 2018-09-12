package net.board2.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board2.action.Action;
import net.board2.action.ActionForward;
import net.board2.db.BoardDAO;

public class BoardListAction implements Action {
	boolean isUser = false;
	public BoardListAction(String string) {
		isUser=true;
	}
	public BoardListAction() {
		// TODO Auto-generated constructor stub
	}
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("���� ���� ���Դ� ������");
		BoardDAO boarddao = new BoardDAO();
		List boardlist = new ArrayList();

		int page = 1;
		int limit = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		int listcount = boarddao.getListCount(); // �� ����Ʈ ���� �޾ƿ�.
		boardlist = boarddao.getBoardList(page, limit); // ����Ʈ�� �޾ƿ�.

		// �� ������ ��.
		int maxpage = (int) ((double) listcount / limit + 0.95); // 0.95�� ���ؼ�
																	// �ø� ó��.
		// ���� �������� ������ ���� ������ ��(1, 11, 21 ��...)
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// ���� �������� ������ ������ ������ ��.(10, 20, 30 ��...)
		int endpage = maxpage;

		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		request.setAttribute("page", page); // ���� ������ ��.
		request.setAttribute("maxpage", maxpage); // �ִ� ������ ��.
		request.setAttribute("startpage", startpage); // ���� �������� ǥ���� ù
														// ������ ��.
		request.setAttribute("endpage", endpage); // ���� �������� ǥ���� ��
													// ������ ��.
		request.setAttribute("listcount", listcount); // �� ��.
		request.setAttribute("boardlist", boardlist);
		System.out.println("���� ����? "+request.getAttribute("page")+","+request.getAttribute("maxpage")+","+
				request.getAttribute("startpage")+","+request.getAttribute("endpage")+","+
				request.getAttribute("listcount")+","+request.getAttribute("boardlist"));
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		
		forward.setPath("admin/board2/board2List.jsp");
		if(isUser){
			forward.setPath("snak/company/ir02_3_list.jsp");
		}
		return forward;
	}
}