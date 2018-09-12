package net.board2.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.board2.db.BoardBean;

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
			System.out.println("DB �뿰寃� �떎�뙣 : " + ex);
			return;
		}
	}

	// 湲� 紐⑸줉 蹂닿린.
	public List getBoardList(int page, int limit) {
		String board_list_sql = "select * from " + "(select rownum rnum,BOARD_NUM,BOARD_DATE,"
				+ "BOARD_CONTENT,BOARD_FILE,BOARD_OPINION,BOARD_GOAL," + "BOARD_SOURCES from "
				+ "(select * from boardir order by BOARD_NUM desc)) " + "where rnum>=? and rnum<=?";

		List list = new ArrayList();

		int startrow = (page - 1) * 10 + 1; // �씫湲� �떆�옉�븷 row 踰덊샇.
		int endrow = startrow + limit - 1; // �씫�쓣 留덉�留� row 踰덊샇.
		try {
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean board = new BoardBean();
				board.setBOARD_NUM(rs.getInt("BOARD_NUM"));
				board.setBOARD_DATE(rs.getDate("BOARD_DATE"));
				board.setBOARD_CONTENT(rs.getString("BOARD_CONTENT"));
				board.setBOARD_FILE(rs.getString("BOARD_FILE"));
				board.setBOARD_OPINION(rs.getString("BOARD_OPINION"));
				board.setBOARD_GOAL(rs.getString("BOARD_GOAL"));
				board.setBOARD_SOURCES(rs.getString("BOARD_SOURCES"));

				list.add(board);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getBoardList �뿉�윭 : " + ex);
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

	// 湲� �궡�슜 蹂닿린.
	public BoardBean getDetail(int num) throws Exception {
		BoardBean board = null;
		try {
			pstmt = con.prepareStatement("select * from boardir where BOARD_NUM = ?");
			System.out.println("num :"+num);
			pstmt.setInt(1, num);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				board = new BoardBean();
				board.setBOARD_NUM(rs.getInt("BOARD_NUM"));
				board.setBOARD_DATE(rs.getDate("BOARD_DATE"));
				board.setBOARD_CONTENT(rs.getString("BOARD_CONTENT"));
				board.setBOARD_FILE(rs.getString("BOARD_FILE"));
				board.setBOARD_OPINION(rs.getString("BOARD_OPINION"));
				board.setBOARD_GOAL(rs.getString("BOARD_GOAL"));
				board.setBOARD_SOURCES(rs.getString("BOARD_SOURCES"));
			}
			return board;
		} catch (Exception ex) {
			System.out.println("getDetail �뿉�윭 : " + ex);
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

	// 湲� �벑濡�.
	public boolean boardInsert(BoardBean board) {
		int num = 0;
		String sql = "";

		int result = 0;

		try {
			pstmt = con.prepareStatement("select max(board_num) from boardir");
			rs = pstmt.executeQuery();

			if (rs.next())
				num = rs.getInt(1) + 1;
			else
				num = 1;

			sql = "insert into boardir (BOARD_NUM,BOARD_DATE,BOARD_CONTENT, BOARD_FILE, BOARD_OPINION,"
					+ "BOARD_GOAL,BOARD_SOURCES) values(?,sysdate,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, board.getBOARD_CONTENT());
			pstmt.setString(3, board.getBOARD_FILE());
			pstmt.setString(4, board.getBOARD_OPINION());
			pstmt.setString(5, board.getBOARD_GOAL());
			pstmt.setString(6, board.getBOARD_SOURCES());

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;

			return true;
		} catch (Exception ex) {
			System.out.println("boardInsert �뿉�윭 : " + ex);
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

	// 湲� �닔�젙.
	public boolean boardModify(BoardBean modifyboard) throws Exception {
		String sql = "update boardir set BOARD_CONTENT=?,BOARD_FILE=?, BOARD_GOAL=? where BOARD_NUM=?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, modifyboard.getBOARD_CONTENT());
			pstmt.setString(2, modifyboard.getBOARD_FILE());
			pstmt.setString(3, modifyboard.getBOARD_GOAL());
			pstmt.setInt(4, modifyboard.getBOARD_NUM());
			pstmt.executeUpdate();
			return true;
		} catch (Exception ex) {
			System.out.println("boardModify �뿉�윭 : " + ex);
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

	// 湲� �궘�젣.
	public boolean boardDelete(int num) {
		String board_delete_sql = "delete from boardir where BOARD_num=?";

		int result = 0;

		try {
			pstmt = con.prepareStatement(board_delete_sql);
			pstmt.setInt(1, num);
			result = pstmt.executeUpdate();
			if (result == 0)
				return false;

			return true;
		} catch (Exception ex) {
			System.out.println("boardDelete �뿉�윭 : " + ex);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (Exception ex) {
			}
		}

		return false;
	}

	// 湲��쓽 媛쒖닔 援ы븯湲�.
	public int getListCount() {
		int x = 0;

		try {
			pstmt = con.prepareStatement("select count(*) from board");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("getListCount �뿉�윭: " + ex);
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
}
