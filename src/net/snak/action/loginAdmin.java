package net.snak.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.snak.db.snakDAO;
import net.snak.db.snakVO;

public class loginAdmin implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		snakDAO memberdao = new snakDAO();
		snakVO memberdata = new snakVO();
		ActionForward forward = new ActionForward();
		
		boolean result = false;
		result = snakDAO.attempLogin(request.getParameter("id"),request.getParameter("pw"));
		
		if (result == false) {
			forward.setRedirect(false);
			forward.setPath("main.jsp");
			
			return forward;
		}
		forward.setRedirect(false);
		forward.setPath("admin/index.jsp?isLogin=true");
		
		return forward;
	}
}
