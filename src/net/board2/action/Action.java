package net.board2.action;

import javax.servlet.http.*;

import net.board2.action.ActionForward;

public interface Action {
	public ActionForward execute(
			HttpServletRequest request,
			HttpServletResponse response) throws Exception;
}
