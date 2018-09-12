package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;
import net.board.db.BoardBean;

public class BoardModifyView implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		ActionForward forward = new ActionForward();
	

		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();

		int NUM = Integer.parseInt(request.getParameter("NUM"));
	
		System.out.println("������� �� Ȯ��1");
		boarddata = boarddao.getDetail(NUM);
		System.out.println("������� �� Ȯ��2");
		if (boarddata == null) {
			System.out.println("(����)�󼼺��� ����");
			return null;
		}

		request.setAttribute("boarddata", boarddata);
		forward.setRedirect(false);
		forward.setPath("./snak/you_n_orion/modify.jsp");
		return forward;
	}
}