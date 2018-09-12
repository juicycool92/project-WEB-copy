package net.board.action;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.BoardDAO;
import net.board.db.BoardBean;

public class BoardAddAction implements Action {
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();
		ActionForward forward = new ActionForward();

		String realFolder = "";
		String saveFolder = "boardupload";

		int fileSize = 10 * 1024 * 1024;

		realFolder = request.getRealPath(saveFolder);

		boolean result = false;

		try {

			MultipartRequest multi = null;

			multi = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());

			boarddata.setNAME(multi.getParameter("NAME"));

			boarddata.setEMAIL_1(multi.getParameter("EMAIL_1"));
			boarddata.setEMAIL_2(multi.getParameter("EMAIL_2"));

			boarddata.setCALL_1(multi.getParameter("CALL_1"));
			boarddata.setCALL_2(multi.getParameter("CALL_2"));
			boarddata.setCALL_3(multi.getParameter("CALL_3"));

			boarddata.setPWD(multi.getParameter("PWD"));

			boarddata.setTITLE(multi.getParameter("TITLE"));
			boarddata.setCONTENT(multi.getParameter("CONTENT"));

			boarddata.setETC(multi.getParameter("ETC"));

			// file 경로를 가져온 코드

			//Enumeration files = multi.getFileNames();
			//String I_FILE = (String) files.nextElement();
			//filename1 = multi.getFilesystemName(I_FILE);
			//boarddata.setI_FILE("filename1");
			
			// 한줄로 표현하면 아래와 같다 (업로드 단계에 해당)
			boarddata.setI_FILE(multi.getFilesystemName((String) multi.getFileNames().nextElement()));

			
			result = boarddao.boardInsert(boarddata);

			if (result == false) {
				System.out.println("게시판 등록 실패");
				return null;
			}

			// 게시판이 등록 되었을 경우 alert 창에 간다

			
			forward.setRedirect(false);
			forward.setPath("./snak/you_n_orion/alert.jsp");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return forward;
	}
}