package net.epress.action;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.epress.db.pressDAO;
import net.epress.db.pressVO;

public class pressModify implements Action {

	int num;
	String title;
	String context;
	public pressModify(String num, String title, String context) {
		this.num = Integer.parseInt(num);
		this.title=title;
		this.context=context;
		System.out.println(context);
	}

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		pressDAO dao;
		pressVO vo;
		boolean isDone= false;
		ActionForward forward = new ActionForward();
		
		dao = new pressDAO();
		vo = new pressVO(num,title,context);
		isDone = dao.edit(vo);
		
		if(isDone){
			forward.setRedirect(false);
			forward.setPath("pressDetail.epress?num="+num+"&kind=1");
			return forward;
		}
		
		PrintWriter pw = response.getWriter();
		pw.write("nein, value was not inserted, check DAO");
		pw.flush();
		RequestDispatcher dd= request.getRequestDispatcher("admin/epress/index.jsp");
		dd.forward(request, response);
		
		return null;
	}

}
