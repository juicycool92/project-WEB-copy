package net.epress.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.epress.db.pressDAO;
import net.epress.db.pressVO;

public class pressViewAdmin implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		pressDAO dao;
		pressVO vo;
		List<pressVO> list;
		
		ActionForward forward = new ActionForward();
		
		dao = new pressDAO();
		vo = new pressVO();
		list = dao.ViewAdmin();
		request.setAttribute("list", list);
		
		forward.setRedirect(false);
		forward.setPath("admin/epress/pressListAdmin.jsp");
		return forward;
	}

}
