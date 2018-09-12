package net.epress.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.epress.db.pressDAO;
import net.epress.db.pressVO;

public class pressDetail implements Action {
	int num = 0;
	int kind = 0;
	int count = 0;
	boolean isUserAccess = false;
	public pressDetail(String num, String kind, String count) {
		this.num=Integer.parseInt(num);
		this.kind=Integer.parseInt(kind);
		
		if(this.kind==2){
			this.count=Integer.parseInt(count);
			isUserAccess=true;
		}
	}
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		pressDAO dao;
		pressVO vo;
		ActionForward forward = new ActionForward();
		
		
		dao = new pressDAO();
		vo = dao.viewDetail(num,isUserAccess,count);
		request.setAttribute("beans", vo);
		String tempUrl="";
		switch(kind){
			case 1: tempUrl="admin/epress/pressDetail.jsp";break;
			case 2: tempUrl="snak/company/e-press_room_list_view.jsp";break;
			case 3: tempUrl="admin/epress/pressEdit.jsp?";break;
			default : break;
		}
		System.out.println("tempUrl ist : "+tempUrl);
		forward.setRedirect(false);
		forward.setPath(tempUrl);
		return forward;
	}

}
