package net.board2.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board2.action.Action;
import net.board2.action.ActionForward;
import net.board2.db.BoardBean;
import net.board2.db.BoardDAO;

 public class BoardDetailAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 
		request.setCharacterEncoding("UTF-8");
   		
		BoardDAO boarddao=new BoardDAO();
	   	BoardBean boarddata=new BoardBean();
	   	
		int num=Integer.parseInt(request.getParameter("num"));
	   	boarddata=boarddao.getDetail(num);
	   	
	   //	if(boarddata==null){
	   	//	System.out.println("蹂닿린 �떎�뙣TT");
	   	//	return null;
	   	//}
	   	System.out.println("蹂닿린 �꽦怨�@^@");
	   	
	   	request.setAttribute("boarddata", boarddata);
	   	ActionForward forward = new ActionForward();
	   	forward.setRedirect(true);
   		forward.setPath(boarddata.getBOARD_FILE());
   		return forward;

	 }
}