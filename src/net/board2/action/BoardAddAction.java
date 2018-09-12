package net.board2.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board2.db.BoardBean;
import net.board2.db.BoardDAO;

public class BoardAddAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();
		ActionForward forward = new ActionForward();

		String realFolder = "";
		String saveFolder = "boardupload";

		int fileSize = 15 * 1024 * 1024;

		realFolder = request.getRealPath(saveFolder);

		boolean result = false;

		try {

			MultipartRequest multi = null;

			multi = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());

			boarddata.setBOARD_CONTENT(multi.getParameter("BOARD_CONTENT"));
			boarddata.setBOARD_FILE(multi.getFilesystemName((String) multi.getFileNames().nextElement()));

			boarddata.setBOARD_OPINION(multi.getParameter("BOARD_OPINION"));
			boarddata.setBOARD_GOAL(multi.getParameter("BOARD_GOAL"));
			boarddata.setBOARD_SOURCES(multi.getParameter("BOARD_SOURCES"));

			result = boarddao.boardInsert(boarddata);

			if (result == false) {
				System.out.println("�벑濡� �떎�뙣 TT");
				return null;
			}
			System.out.println("�벑濡� �셿猷�@^@");

			forward.setRedirect(true);
			forward.setPath("admin/board2/index.jsp");
			return forward;

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
}