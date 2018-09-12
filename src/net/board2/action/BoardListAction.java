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
		System.out.println("Á¦¹ß ¿©±â µé¾î¿Ô´Ù ¸»ÇØÁà");
		BoardDAO boarddao = new BoardDAO();
		List boardlist = new ArrayList();

		int page = 1;
		int limit = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		int listcount = boarddao.getListCount(); // ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ® ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¾Æ¿ï¿½.
		boardlist = boarddao.getBoardList(page, limit); // ï¿½ï¿½ï¿½ï¿½Æ®ï¿½ï¿½ ï¿½Þ¾Æ¿ï¿½.

		// ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½.
		int maxpage = (int) ((double) listcount / limit + 0.95); // 0.95ï¿½ï¿½ ï¿½ï¿½ï¿½Ø¼ï¿½
																	// ï¿½Ã¸ï¿½ Ã³ï¿½ï¿½.
		// ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½(1, 11, 21 ï¿½ï¿½...)
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½.(10, 20, 30 ï¿½ï¿½...)
		int endpage = maxpage;

		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		request.setAttribute("page", page); // ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½.
		request.setAttribute("maxpage", maxpage); // ï¿½Ö´ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½.
		request.setAttribute("startpage", startpage); // ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ Ç¥ï¿½ï¿½ï¿½ï¿½ Ã¹
														// ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½.
		request.setAttribute("endpage", endpage); // ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ Ç¥ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
													// ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½.
		request.setAttribute("listcount", listcount); // ï¿½ï¿½ ï¿½ï¿½.
		request.setAttribute("boardlist", boardlist);
		System.out.println("°ªÀº µé¾î°¬´Ï? "+request.getAttribute("page")+","+request.getAttribute("maxpage")+","+
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