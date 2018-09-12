package net.board2.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board2.action.Action;
import net.board2.action.ActionForward;
import net.board2.db.BoardBean;
import net.board2.db.BoardDAO;

public class BoardModifyView implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 	ActionForward forward = new ActionForward();
		 	request.setCharacterEncoding("euc-kr");
	   		
			BoardDAO boarddao=new BoardDAO();
		   	BoardBean boarddata=new BoardBean();
		   	
			int num=Integer.parseInt(request.getParameter("num"));
		   	boarddata=boarddao.getDetail(num);
		   	
		   	if(boarddata==null){
		   		System.out.println("수정 보기 실패 TT");
		   		return null;
		   	}
		   	System.out.println("수정 보기 성공!@^@");
		   	
		   	request.setAttribute("boarddata", boarddata);
		   	forward.setRedirect(false);
	   		forward.setPath("./admin000004.jsp");
	   		return forward;
	 }
}