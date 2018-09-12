package net.board2.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board2.action.Action;
import net.board2.action.ActionForward;
import net.board2.action.BoardAddAction;
import net.board2.action.BoardDeleteAction;
import net.board2.action.BoardDetailAction;
import net.board2.action.BoardListAction;
import net.board2.action.BoardModifyAction;
import net.board2.action.BoardModifyView;

 public class BoardFrontController 
 	extends javax.servlet.http.HttpServlet 
 	implements javax.servlet.Servlet {
	
	 protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
	 	throws ServletException, IOException {
		 
		 String RequestURI=request.getRequestURI();
		 String contextPath=request.getContextPath();
		 String command=RequestURI.substring(contextPath.length());
		 ActionForward forward=null;
		 Action action=null;
		   
		   if(command.equals("/BoardWrite.bo2")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("./admin000001.jsp");
		   }else if(command.equals("/BoardDelete.bo2")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("./admin000005.jsp");
		}else if(command.equals("/BoardModify.bo2")){
			   action = new BoardModifyView();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
	 	   }else if(command.equals("/BoardAddAction.bo2")){
			   action  = new BoardAddAction();
			   try {
				   forward=action.execute(request, response );
			   } catch (Exception e) {
				   e.printStackTrace();
			   }
		   }else if(command.equals("/BoardModifyAction.bo2")){
			   action = new BoardModifyAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }else if(command.equals("/BoardDeleteAction.bo2")){
			   action = new BoardDeleteAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }else if(command.equals("/BoardList.bo2")){
			   action = new BoardListAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }else if(command.equals("/BoardList2.bo2")){
			   System.out.println("너 여기 안들어왔지");
			   action = new BoardListAction("user");
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }else if(command.equals("/BoardDetailAction.bo2")){
			   action = new BoardDetailAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }
		   
		   if(forward.isRedirect()){
			   response.sendRedirect(forward.getPath());
		   }else{
			   RequestDispatcher dispatcher=
				   request.getRequestDispatcher(forward.getPath());
			   dispatcher.forward(request, response);
		   }
	 }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		doProcess(request,response);
	}  	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		doProcess(request,response);
	}   	  	    
}