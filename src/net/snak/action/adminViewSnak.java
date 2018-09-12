package net.snak.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.snak.db.snakDAO;
import net.snak.db.snakVO;

public class adminViewSnak implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		snakDAO dao = new snakDAO();
		snakVO vo = new snakVO();
		ActionForward forward = new ActionForward();
		
		List goodsList = new ArrayList();
		goodsList = dao.adminGoodsList();
		System.out.println(goodsList.size());
		if (goodsList == null) {
			System.out.println("꽈자가없어요.");
			return null;
		}

		request.setAttribute("goodsList", goodsList);
		forward.setRedirect(false);
		forward.setPath("admin/snackList.jsp");
		return forward;
	}
}