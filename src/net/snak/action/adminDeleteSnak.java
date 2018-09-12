package net.snak.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.snak.db.snakDAO;
import net.snak.db.snakVO;

public class adminDeleteSnak implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		snakDAO dao = new snakDAO();
		ActionForward forward = new ActionForward();
		boolean isDone=false;
		isDone = dao.getDelete(request.getParameter("num"));
		if(isDone){
			System.out.println("삭제성공");
		}else{
			return null;
		}
		forward.setRedirect(true);
		forward.setPath("./adminSnakView.snak");
		return forward;
	}
}