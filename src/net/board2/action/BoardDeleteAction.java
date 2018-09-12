package net.board2.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board2.action.Action;
import net.board2.action.ActionForward;
import net.board2.db.BoardDAO;
import net.board2.db.*;

public class BoardDeleteAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("UTF-8");
		
	   	boolean result=false;
	   	boolean usercheck=false;
	   	int num=Integer.parseInt(request.getParameter("num"));
	   	
	   	BoardDAO boarddao=new BoardDAO();
	   	
	   	
	   	result=boarddao.boardDelete(num);
	   	if(result==false){
	   		System.out.println("삭제 실패 TT");
	   		return null;
	   	}
	   	
	   	System.out.println("삭제 성공@^@");
	   	forward.setRedirect(true);
   		forward.setPath("./BoardList.bo2");
   		return forward;
	 }
}