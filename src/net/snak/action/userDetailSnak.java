package net.snak.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.snak.db.snakDAO;
import net.snak.db.snakVO;

public class userDetailSnak implements Action {
	int value;
	public userDetailSnak(int value) {	
		this.value=value;
		System.out.println(value+" : 카테고리값");
		}
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		snakDAO dao = new snakDAO();
		snakVO vo = new snakVO();
		ActionForward forward = new ActionForward();
		
		vo = dao.userGetDetail(request.getParameter("num"));
		
		request.setAttribute("beans", vo);
		String tempPath="";
		switch(value){
			case 1:tempPath="snak/power_brand/productinfoPieView.jsp";break;
			case 2:tempPath="snak/power_brand/productinfoSnackView.jsp";break;
			case 3:tempPath="snak/power_brand/productinfoBiscuitView.jsp";break;
			case 4:tempPath="snak/power_brand/productinfoGumView.jsp";break;
			case 5:tempPath="snak/power_brand/productinfoCandyView.jsp";break;
			case 6:tempPath="snak/power_brand/productinfoChocolateView.jsp";break;
			default:break;
		}
		forward.setRedirect(false);
		forward.setPath(tempPath);
		return forward;
	}

}
