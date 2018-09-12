package net.snak.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.snak.db.snakDAO;
import net.snak.db.snakVO;

public class adminDetailSnak implements Action {

	public adminDetailSnak(String parameter) {
		String num = parameter;
	}

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		snakDAO dao = new snakDAO();
		snakVO vo = new snakVO();
		ActionForward forward = new ActionForward();
		vo = dao.getDetail(request.getParameter("num"));
		
		request.setAttribute("beans", vo);
		forward.setRedirect(false);
		forward.setPath("./admin/snackListDetail.jsp");
		return forward;
	}

}
