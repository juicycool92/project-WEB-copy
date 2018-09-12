package net.epress.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.epress.db.pressDAO;
import net.epress.db.pressVO;

public class pressViewUser implements Action {
	int curPage;

	public pressViewUser(String curPage) {
		this.curPage = Integer.parseInt(curPage);
	}

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		pressDAO dao;
		pressVO vo;
		List<pressVO> list = new ArrayList<pressVO>();
		ActionForward forward = new ActionForward();

		dao = new pressDAO();
		vo = new pressVO();

		list = dao.getLists();

		request.setAttribute("curPage", curPage);
		request.setAttribute("list", list);
		
		forward.setRedirect(false);
		forward.setPath("snak/company/e-press_room_list.jsp");
		System.out.println("are out ready for out? "+forward.getPath());
		return forward;

	}
}
