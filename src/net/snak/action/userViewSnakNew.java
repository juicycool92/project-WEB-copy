package net.snak.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.snak.db.snakDAO;
import net.snak.db.snakVO;

public class userViewSnakNew implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		snakDAO dao = new snakDAO();
		snakVO vo = new snakVO();
		ActionForward forward = new ActionForward();
		
		List goodsList = new ArrayList();
		goodsList = dao.userGoodsListNew();
		System.out.println(goodsList.size());
		if (goodsList.size() == 0) {
			System.out.println("꽈자가없어요.");
			return null;
		}

		request.setAttribute("voList", goodsList);
		System.out.println(request.getParameter("curPage")+"jajaja");
		request.setAttribute("curPage", request.getParameter("curPage"));
		String altPath="error.page";

		forward.setRedirect(false);
		forward.setPath("snak/power_brand/productinfoNew.jsp");
		return forward;
	
	}

}
