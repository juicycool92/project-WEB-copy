package net.epress.action;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.epress.db.*;

public class pressInsert implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		pressDAO dao;
		pressVO vo;
		boolean isDone= false;
		ActionForward forward = new ActionForward();
		
		dao = new pressDAO();
		vo = new pressVO();
		vo.setTitle(request.getParameter("title"));
		vo.setContext(request.getParameter("area1"));
		System.out.println(vo.getTitle()+vo.getContext());
		isDone=dao.insert(vo);
		
		if(isDone){
			forward.setRedirect(false);
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
