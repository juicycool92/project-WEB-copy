package net.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;
import net.board.db.BoardBean;

 public class AdminDetailAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 
		request.setCharacterEncoding("UTF-8");
   		
		BoardDAO boarddao=new BoardDAO();
	   	BoardBean boarddata=new BoardBean();
	   	
		int NUM=Integer.parseInt(request.getParameter("NUM"));
		
	   	boarddata=boarddao.getDetail1(NUM);
	   	
	   	if(boarddata==null){
	   		System.out.println("내용 어디?");
	   		return null;
	   	}
	   	
	   	
	   	request.setAttribute("boarddata", boarddata);
	   	ActionForward forward = new ActionForward();
	   	forward.setRedirect(false);
   		forward.setPath("./detail.jsp"); 
   		return forward;

	 }
}