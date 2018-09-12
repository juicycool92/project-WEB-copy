package net.epress.action;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.epress.db.pressDAO;
import net.epress.db.pressVO;

public class pressDelete implements Action {
	int num;
	public pressDelete(String num) {
		this.num = Integer.parseInt(num);
	}

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		pressDAO dao;
		pressVO vo=new pressVO(num);
		boolean isDone=false;
		ActionForward forward = new ActionForward();
		
		dao = new pressDAO();
		isDone=dao.delete(vo);
		

		if(isDone){
			forward.setRedirect(true);
			forward.setPath("admin/epress/index.jsp");
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
