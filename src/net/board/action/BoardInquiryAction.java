package net.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;
import net.board.action.ActionForward;

public class BoardInquiryAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");

		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();

		HttpSession session = request.getSession();

		

		boolean x=false;

		try {

			boarddata.setNAME(request.getParameter("NAME"));
			boarddata.setPWD(request.getParameter("PWD"));
			boarddata.setCALL_1(request.getParameter("CALL_1"));
			boarddata.setCALL_2(request.getParameter("CALL_2"));
			boarddata.setCALL_3(request.getParameter("CALL_3"));
			
			System.out.println(boarddata.getNAME());
			System.out.println(boarddata.getPWD());
			System.out.println(boarddata.getCALL_1());
			System.out.println(boarddata.getCALL_2());
			System.out.println(boarddata.getCALL_3());
			

			x = boarddao.login(boarddata);

			if (x==false) {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();

				out.println("<script>");
				out.println("alert('일치하는 정보가 없습니다.');");
				out.println("location.href='./snak/you_n_orion/find_my_inquiry02.jsp';");
				out.println("</script>");
				out.close(); // ????

				return null;
			}

			session.setAttribute("NAME", boarddata.getNAME());
			session.setAttribute("PWD",boarddata.getPWD());
			session.setAttribute("CALL_1", boarddata.getCALL_1());
			session.setAttribute("CALL_2",boarddata.getCALL_2());
			session.setAttribute("CALL_3", boarddata.getCALL_3());
			
			ActionForward forward = new ActionForward();

			forward.setRedirect(true);

			forward.setPath("./List.bo");
			return forward;

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
}
