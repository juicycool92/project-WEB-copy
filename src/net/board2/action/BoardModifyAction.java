package net.board2.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board2.action.Action;
import net.board2.action.ActionForward;
import net.board2.db.BoardBean;
import net.board2.db.BoardDAO;
import net.board2.db.*;

 public class BoardModifyAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 request.setCharacterEncoding("utf-8");
		 ActionForward forward = new ActionForward();
		 boolean result = false;
		 
		 int num=Integer.parseInt(request.getParameter("BOARD_NUM"));
		 
		 BoardDAO boarddao=new BoardDAO();
		 BoardBean boarddata=new BoardBean();
		 
		 try{
			 boarddata.setBOARD_NUM(num);
			 boarddata.setBOARD_CONTENT(request.getParameter("BOARD_SUBJECT"));
			 boarddata.setBOARD_OPINION(request.getParameter("BOARD_OPINION"));
			 boarddata.setBOARD_GOAL(request.getParameter("BOARD_GOAL"));
			 boarddata.setBOARD_SOURCES(request.getParameter("BOARD_SOURCES"));
			 
			 
			 result = boarddao.boardModify(boarddata);
			 if(result==false){
		   		System.out.println("수정 실패 TT");
		   		return null;
		   	 }
		   	 System.out.println("수정 성공@^@");
		   	 
		   	 forward.setRedirect(true);
		   	 forward.setPath("./BoardDetailAction.bo2?num="+boarddata.getBOARD_NUM());
		   	 return forward;
	   	 }catch(Exception ex){
	   			ex.printStackTrace();	 
		 }
		 
		 return null;
	 }
}