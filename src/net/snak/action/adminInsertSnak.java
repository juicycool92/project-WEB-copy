package net.snak.action;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.renderable.ParameterBlock;
import java.io.File;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.snak.db.snakDAO;
import net.snak.db.snakVO;

public class adminInsertSnak implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		snakDAO dao = new snakDAO();
		snakVO vo = new snakVO();
		boolean isDone= false;
	////////
			String imagePath = request.getSession().getServletContext().getRealPath("admin/images/");//request.getRealPath("admin/images");

			int size = 101024*1024;
			String filename = "";
			MultipartRequest multi = null;
			try{
				multi = new MultipartRequest(request,imagePath,size,"euc-kr",new DefaultFileRenamePolicy());
				Enumeration files = multi.getFileNames();
				String file = (String)files.nextElement();
				filename = multi.getFilesystemName(file);
			}catch(Exception e ){
				e.printStackTrace();
			}
			ParameterBlock pb = new ParameterBlock();
			pb.add(imagePath+filename);
			System.out.println("ja :"+imagePath+filename);
			RenderedOp rOp = JAI.create("fileload",pb);

			BufferedImage bi= rOp.getAsBufferedImage();
			BufferedImage thumb=new BufferedImage(100,100,BufferedImage.TYPE_INT_RGB);

			Graphics2D g=thumb.createGraphics();
			g.drawImage(bi,0,0,100,100,null);

			File file=new File(imagePath+"th_"+filename);
			ImageIO.write(thumb,"jpg",file);
	///////////////
		

		int cate = Integer.parseInt(multi.getParameter("category"));

		ActionForward forward = new ActionForward();
		
		
		vo.setCategory(cate);
		vo.setName(multi.getParameter("name"));
		
		vo.setImage("admin/images/"+filename);
		vo.setTh_image("admin/images/"+"th_"+filename);		

		vo.setTitle(multi.getParameter("title"));
		vo.setContext1(multi.getParameter("context1"));
		vo.setContext2(multi.getParameter("context2"));
		vo.setIsNew(multi.getParameter("isNew"));
		isDone = dao.addGoods(vo);
		if(isDone){
			forward.setRedirect(false);
			forward.setPath("./adminSnakView.snak");
			return forward;
		}
		PrintWriter pw = response.getWriter();
		pw.write("nein, value was not inserted, check DAO");
		pw.flush();
		RequestDispatcher dd= request.getRequestDispatcher("../adminSnakView.snak");
		dd.forward(request, response);
		
		
		return null;
	}

}
