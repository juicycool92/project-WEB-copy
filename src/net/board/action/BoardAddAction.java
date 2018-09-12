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

			// file ��θ� ������ �ڵ�

			//Enumeration files = multi.getFileNames();
			//String I_FILE = (String) files.nextElement();
			//filename1 = multi.getFilesystemName(I_FILE);
			//boarddata.setI_FILE("filename1");
			
			// ���ٷ� ǥ���ϸ� �Ʒ��� ���� (���ε� �ܰ迡 �ش�)
			boarddata.setI_FILE(multi.getFilesystemName((String) multi.getFileNames().nextElement()));

			
			result = boarddao.boardInsert(boarddata);

			if (result == false) {
				System.out.println("�Խ��� ��� ����");
				return null;
			}

			// �Խ����� ��� �Ǿ��� ��� alert â�� ����

			
			forward.setRedirect(false);
			forward.setPath("./snak/you_n_orion/alert.jsp");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return forward;
	}
}