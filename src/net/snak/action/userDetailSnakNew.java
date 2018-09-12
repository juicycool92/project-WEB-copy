package net.snak.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.snak.db.snakDAO;
import net.snak.db.snakVO;

public class userDetailSnakNew implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		snakDAO dao = new snakDAO();
		snakVO vo = new snakVO();
		ActionForward forward = new ActionForward();
		
		vo = dao.userGetDetail(request.getParameter("num"));
		
		request.setAttribute("beans", vo);
		String tempPath="";

		forward.setRedirect(false);
		forward.setPath("snak/power_brand/productinfoNewView.jsp");
		return forward;
	
	}

}
