package net.snak.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.snak.db.snakDAO;
import net.snak.db.snakVO;
//들어온 get/post 값 : curPage : default[1] 
//to do here : 삥즈로 모든 리스트를 getAttribute 로 보낼것
public class userViewSnak implements Action {

	int value;
	public userViewSnak(int value) { this.value=value; }
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		snakDAO dao = new snakDAO();
		snakVO vo = new snakVO();
		ActionForward forward = new ActionForward();
		
		List goodsList = new ArrayList();
		goodsList = dao.userGoodsList(value);
		System.out.println(goodsList.size());
		if (goodsList.size() == 0) {
			System.out.println("꽈자가없어요.");
			return null;
		}

		request.setAttribute("voList", goodsList);
		System.out.println(request.getParameter("curPage")+"jajaja");
		request.setAttribute("curPage", request.getParameter("curPage"));
		String altPath="error.page";
		switch (value) {
			case 1:altPath="snak/power_brand/productinfoPie.jsp";break;
			case 2:altPath="snak/power_brand/productinfoSnack.jsp";break;
			case 3:altPath="snak/power_brand/productinfoBiscuit.jsp";break;
			case 4:altPath="snak/power_brand/productinfoGum.jsp";break;
			case 5:altPath="snak/power_brand/productinfoCandy.jsp";break;
			case 6:altPath="snak/power_brand/productinfoChocolate.jsp";break;
			default:break;
		}
		forward.setRedirect(false);
		forward.setPath(altPath);
		return forward;
	}
	
}
