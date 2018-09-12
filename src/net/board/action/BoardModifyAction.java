package net.board.action;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.BoardDAO;
import net.board.db.BoardBean;

public class BoardModifyAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();
		Delete delete = new Delete();
		
		ActionForward forward = new ActionForward();

		int NUM = Integer.parseInt(request.getParameter("NUM"));
		//System.out.println(request.getParameter("DEL"));

		// String DEL = request.getParameterValues("DEL")[0];
		// 0�� �迭�� ���� �о��.
		// PrintWriter out = response.getWriter();
		// out.println(DEL); // DELETE��� ������
		/// String[] del = request.getParameterValues("DEL");
		// int DEL = Integer.parseInt(request.getParameter("DEL"));
		// System.out.println(DEL);
		String realFolder = "";
		String saveFolder = "boardupload";

		int fileSize = 10 * 1024 * 1024;

		realFolder = request.getRealPath(saveFolder);

		boolean result = false;

		try {

			MultipartRequest multi = null;

			multi = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());

			boarddata.setNUM(NUM);
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
			
			delete.setDEL(multi.getParameter("DEL"));
			System.out.println(multi.getParameter("DEL"));

			// file ��θ� ������ �ڵ�

			// Enumeration files = multi.getFileNames();
			// String I_FILE = (String) files.nextElement();
			// filename1 = multi.getFilesystemName(I_FILE);
			// boarddata.setI_FILE("filename1");

			// �����ϱ⿡ üũ�� �Ǿ��ִٸ�
			System.out.println("������� �׼� Ȯ��1");
			// if (DEL == 1) {
			// boarddata.setI_FILE(""); // getI_FILE()=""�Ͻ� filename�� "";
			// }

			if (multi.getFilesystemName((String) multi.getFileNames().nextElement()) == null) {

				boarddata.setI_FILE(multi.getParameter("I_FILE"));
				System.out.println(multi.getParameter("I_FILE") + "����� �߳�");
			} else {
				boarddata.setI_FILE(multi.getFilesystemName((String) multi.getFileNames().nextElement()));
				System.out.println("Ȯ��3");
			}

			result = boarddao.boardModify(boarddata,delete);
			System.out.println("������� �׼� Ȯ��2");
			if (result == false) {
				System.out.println("�Խ��� ��� ����");
				return null;
			}

			// �Խ����� ��� �Ǿ��� ��� alert â�� ����

			forward.setRedirect(false);
			forward.setPath("./List.bo");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return forward;
	}
}