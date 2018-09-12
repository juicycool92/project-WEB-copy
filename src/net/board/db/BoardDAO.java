package net.board.db;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.board.action.Delete;

public class BoardDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public BoardDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB臾댁뒯 �씪 �엳援щ㉫: " + ex);
			return;
		}
	}

	// BoardInquiryAction 占쎄땀占쎈열占쎌넇占쎌뵥
	public boolean login(BoardBean board) {

		String sql = "";
		ResultSet rs = null;
		// boolean result=false;
		try {
			System.out.println("doa진입");
			sql = "SELECT PWD FROM IDEA WHERE NAME=?";

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, board.getNAME());

			rs = pstmt.executeQuery();

			rs.next();

			if (rs.getString("PWD").equals(board.getPWD())) {
				System.out.println("정보일치");
				return true;
			} else {
				System.out.println("정보미일치");
				return false;
			}

		} catch (Exception ex) {
			System.out.println("dao-login error: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;
	}

	// �룯占� �뵳�딅뮞占쎈뱜 占쎈땾 筌뤿돂而�? - BoardListAction
	public int getListCount(String CALL_1, String CALL_2, String CALL_3, String PWD) {
		int x = 0;

		try {

			String sql = "select count(*) from idea where CALL_1=? and CALL_2=? and CALL_3=? and PWD=?";
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, CALL_1);

			pstmt.setString(2, CALL_2);

			pstmt.setString(3, CALL_3);

			pstmt.setString(4, PWD);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1); // COUNT �맂 ���꽍�쓣 X�뿉 �꽔�뒗�떎
			}
		} catch (Exception ex) {
			System.out.println("LISTCOUNT濡� 媛��떆�샊: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return x;
	}

	// BoardListAction
	public List getBoardList(String CALL_1, String CALL_2, String CALL_3, String PWD, int page, int limit) {
		String board_list_sql = "select * from " + "(select rownum rnum,NAME,TITLE,CONTENT,CALL_1,"
				+ "CALL_2,CALL_3,EMAIL_1,EMAIL_2," + "I_FILE,ETC,PWD,DAY,NUM from"
				+ "(select * from idea where CALL_1=? AND CALL_2=? AND CALL_3=? AND PWD=?)) "
				+ "where rnum>=? and rnum<=?";

		List list = new ArrayList();

		int startrow = (page - 1) * 10 + 1;
		int endrow = startrow + limit - 1;

		try {

			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setString(1, CALL_1);
			pstmt.setString(2, CALL_2);
			pstmt.setString(3, CALL_3);
			pstmt.setString(4, PWD);
			pstmt.setInt(5, startrow);
			pstmt.setInt(6, endrow);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean board = new BoardBean();

				board.setNAME(rs.getString("NAME"));
				System.out.println(board.getNAME());

				board.setTITLE(rs.getString("TITLE"));
				System.out.println(board.getTITLE());

				board.setCONTENT(rs.getString("CONTENT"));
				System.out.println(board.getCONTENT());

				board.setCALL_1(rs.getString("CALL_1"));
				System.out.println(board.getCALL_1());

				board.setCALL_2(rs.getString("CALL_2"));
				System.out.println(board.getCALL_2());

				board.setCALL_3(rs.getString("CALL_3"));
				System.out.println(board.getCALL_3());

				board.setEMAIL_1(rs.getString("EMAIL_1"));
				System.out.println(board.getEMAIL_1());

				board.setEMAIL_2(rs.getString("EMAIL_2"));
				System.out.println(board.getEMAIL_2());

				board.setETC(rs.getString("ETC"));
				System.out.println(board.getETC());

				board.setPWD(rs.getString("PWD"));
				System.out.println(board.getPWD());

				board.setI_FILE(rs.getString("I_FILE"));
				System.out.println(board.getI_FILE());

				board.setDAY(rs.getDate("DAY"));
				System.out.println(board.getDAY());

				board.setNUM(rs.getInt("NUM"));
				System.out.println(board.getNUM());

				list.add(board);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getBoardList �븞�릺�꽕�쑀!  : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}

	// 占쎌벥野껓옙 占쎌젫�빊占� 野껊슣�뻻占쎈솇. 疫뀐옙�⑨옙 占쎈맙�뙼占� 占쎌뵠�뵳占�, �뜮袁⑨옙甕곕뜇�깈 獄쏉옙 揶쏆뮇�뵥占쎌젟癰귣�猷� 占쎈맙�뙼占� 占쎈굶占쎈선揶쏄쑬�뼄.
	public boolean boardInsert(BoardBean board) {

		int num = 0;
		String sql = "";
		String aburl = "boardupload/";
		int result = 0;

		try {
			pstmt = con.prepareStatement("select max(NUM) from idea");
			rs = pstmt.executeQuery();

			if (rs.next())
				num = rs.getInt(1) + 1;
			else
				num = 1;

			sql = "insert into idea (NAME,TITLE,CONTENT,CALL_1, CALL_2, CALL_3, EMAIL_1, EMAIL_2,";
			sql += "ETC,I_FILE,PWD,NUM,FILENAME,DAY) values(?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, board.getNAME());
			pstmt.setString(2, board.getTITLE());
			pstmt.setString(3, board.getCONTENT());
			pstmt.setString(4, board.getCALL_1());
			pstmt.setString(5, board.getCALL_2());
			pstmt.setString(6, board.getCALL_3());
			pstmt.setString(7, board.getEMAIL_1());
			pstmt.setString(8, board.getEMAIL_2());
			pstmt.setString(9, board.getETC());
			pstmt.setString(10, aburl + board.getI_FILE());
			pstmt.setString(11, board.getPWD());
			pstmt.setInt(12, num);
			pstmt.setString(13, board.getI_FILE());
			// DAY占쎈퓠 NOW()�몴占� 占쎄퐫占쎈�占쎈뼄...疫뀐옙占쎌뱽 占쎈쿀 域뱄옙 占쎈뼣占쎈뻻占쎌벥 NOW()...

			result = pstmt.executeUpdate();

			if (result == 0)
				return false;

			return true;
		} catch (Exception ex) {
			System.out.println("IdeaInsert 占쎈뼄占쎈솭: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;
	}

	public BoardBean getDetail(int NUM) throws Exception {
		BoardBean board = null;
		try {
			pstmt = con.prepareStatement("select * from idea where NUM=?");
			pstmt.setInt(1, NUM);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				board = new BoardBean();

				board.setNUM(rs.getInt("NUM"));
				board.setNAME(rs.getString("NAME"));

				board.setTITLE(rs.getString("TITLE"));

				board.setCONTENT(rs.getString("CONTENT"));
				board.setCALL_1(rs.getString("CALL_1"));
				board.setCALL_2(rs.getString("CALL_2"));
				board.setCALL_3(rs.getString("CALL_3"));
				board.setEMAIL_1(rs.getString("EMAIL_1"));
				board.setEMAIL_2(rs.getString("EMAIL_2"));
				board.setETC(rs.getString("ETC"));
				board.setPWD(rs.getString("PWD"));
				board.setI_FILE(rs.getString("I_FILE"));
				board.setDAY(rs.getDate("DAY"));
				board.setFILENAME(rs.getString("FILENAME"));

			}
			return board;
		} catch (Exception ex) {
			System.out.println("getDetail �뜝�럥�뱺�뜝�럩�몠 : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return null; // return board?

	}

	public boolean boardModify(BoardBean board, Delete del) throws Exception {
		String sql = "update idea set TITLE=?,";
		sql += "EMAIL_1=?,EMAIL_2=?,CALL_1=?,CALL_2=?,CALL_3=?,I_FILE=?,FILENAME=?,ETC=?," + "CONTENT=?";
		sql += "where NUM=?";

		String aburl = "boardupload/";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, board.getTITLE());
			System.out.println(board.getTITLE());

			pstmt.setString(2, board.getEMAIL_1());
			pstmt.setString(3, board.getEMAIL_2());
			pstmt.setString(4, board.getCALL_1());
			pstmt.setString(5, board.getCALL_2());
			pstmt.setString(6, board.getCALL_3());

			if (del.getDEL() != null) {
				pstmt.setString(7, " "); // ""�씠�젃寃� �꽔�뼱�룄�릺�굹?
				pstmt.setString(8, " ");
				System.out.println("DEL==NULL");
			} else {
				pstmt.setString(7, aburl + board.getI_FILE());
				pstmt.setString(8, board.getI_FILE());
				System.out.println("DEL!=NULL");
			}

			pstmt.setString(9, board.getETC());

			pstmt.setString(10, board.getCONTENT());

			pstmt.setInt(11, board.getNUM());

			pstmt.executeUpdate();
			return true;
		} catch (Exception ex) {
			System.out.println("modify error : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;
	}
	public int getListCount1() {
		int x = 0;

		try {

			String sql = "select count(*) from idea";
			pstmt = con.prepareStatement(sql);

			

			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1); 
			}
		} catch (Exception ex) {
			System.out.println("LISTCOUNT: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return x;
	}

	// BoardListAction
	public List getBoardList1(int page, int limit) {

		try {
			String board_list_sql = "select * from " + "(select rownum rnum,NAME,TITLE,CONTENT,CALL_1,"
					+ "CALL_2,CALL_3,EMAIL_1,EMAIL_2," + "I_FILE,ETC,PWD,DAY,NUM from"+
					"(select * from idea order by NUM)) "

					+ "where rnum>=? and rnum<=?";

			List list = new ArrayList();

			int startrow = (page - 1) * 10 + 1;
			int endrow = startrow + limit - 1;

			pstmt = con.prepareStatement(board_list_sql);

			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean board = new BoardBean();
				
				board.setNAME(rs.getString("NAME"));
				System.out.println(board.getNAME());

				board.setTITLE(rs.getString("TITLE"));
				System.out.println(board.getTITLE());

				board.setCONTENT(rs.getString("CONTENT"));
				System.out.println(board.getCONTENT());

				board.setCALL_1(rs.getString("CALL_1"));
				System.out.println(board.getCALL_1());

				board.setCALL_2(rs.getString("CALL_2"));
				System.out.println(board.getCALL_2());

				board.setCALL_3(rs.getString("CALL_3"));
				System.out.println(board.getCALL_3());

				board.setEMAIL_1(rs.getString("EMAIL_1"));
				System.out.println(board.getEMAIL_1());

				board.setEMAIL_2(rs.getString("EMAIL_2"));
				System.out.println(board.getEMAIL_2());

				// board.setETC(rs.getString("ETC"));
				// System.out.println(board.getETC());

				board.setPWD(rs.getString("PWD"));
				System.out.println(board.getPWD());

				board.setI_FILE(rs.getString("I_FILE"));
				System.out.println(board.getI_FILE());

				board.setDAY(rs.getDate("DAY"));
				System.out.println(board.getDAY());

				board.setNUM(rs.getInt("NUM"));
				System.out.println(board.getNUM());

				String sql = "SELECT NAME FROM ETC WHERE KEY=" + rs.getString("ETC");

				PreparedStatement pstmt1;
				ResultSet rs1;
				pstmt1 = con.prepareStatement(sql);
				rs1 = pstmt1.executeQuery();

				if (rs1.next()) {
					board.setETC(rs1.getString("NAME"));

					

				}
				list.add(board);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getBoardList �븞�릺�꽕�쑀!  : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}
	public BoardBean getDetail1(int NUM) throws Exception {
		BoardBean board = null;
		try {
			pstmt = con.prepareStatement("select * from idea where NUM=?");
			pstmt.setInt(1, NUM);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				board = new BoardBean();

				board.setNUM(rs.getInt("NUM"));
				board.setNAME(rs.getString("NAME"));

				board.setTITLE(rs.getString("TITLE"));

				board.setCONTENT(rs.getString("CONTENT"));
				board.setCALL_1(rs.getString("CALL_1"));
				board.setCALL_2(rs.getString("CALL_2"));
				board.setCALL_3(rs.getString("CALL_3"));
				board.setEMAIL_1(rs.getString("EMAIL_1"));
				board.setEMAIL_2(rs.getString("EMAIL_2"));
				board.setETC(rs.getString("ETC"));
				board.setPWD(rs.getString("PWD"));
				board.setI_FILE(rs.getString("I_FILE"));
				board.setDAY(rs.getDate("DAY"));
				board.setFILENAME(rs.getString("FILENAME"));

			}
			return board;
		} catch (Exception ex) {
			System.out.println("getDetail  : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return null; // return board?

	}
}
