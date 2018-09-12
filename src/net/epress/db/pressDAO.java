package net.epress.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class pressDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public pressDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB connection failed line 21 in DAO : " + ex);
			return;
		}
	}

	public boolean insert(pressVO vo) {
		String sql = "insert into epress values(SEQ_EPRESS.NEXTVAL,?,sysdate,0,?)";
		boolean isInserted = false;
		System.out.println("insertDAO values : " + vo.getTitle() + vo.getContext());

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContext());
			rs = pstmt.executeQuery();
			isInserted = true;
		} catch (Exception e) {
			e.printStackTrace();
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
		if (isInserted) {
			return true;
		}
		return false;
	}

	public List<pressVO> ViewAdmin() {
		List<pressVO> list = new ArrayList<pressVO>();
		pressVO vo;
		String sql = "select * from epress order by num desc";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new pressVO();
				vo.setNum(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setUploaddate(rs.getString(3));
				vo.setCount(rs.getInt(4));
				vo.setContext(rs.getString(5));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
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

		return list;
	}

	public pressVO viewDetail(int num, boolean isUserAccess, int count) {

		if (isUserAccess) {
			pressVO vo = null;
			String sql = "update epress set count=? where num=?";

			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, count+1);
				pstmt.setInt(2, num);
				rs = pstmt.executeQuery();
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		pressVO vo = null;
		String sql = "select * from epress where num=?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new pressVO();
				vo.setNum(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setUploaddate(rs.getString(3));
				vo.setCount(rs.getInt(4));
				vo.setContext(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
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

		return vo;

	}

	public boolean edit(pressVO vo) {
		System.out.println(vo.getNum() + vo.getTitle() + vo.getContext());
		boolean isDone = true;
		String sql = "update epress set title=?,context=? where num=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContext());
			pstmt.setInt(3, vo.getNum());
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
			isDone = false;
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
		return isDone;
	}

	public boolean delete(pressVO vo) {
		boolean isDone = true;
		String sql = "delete from epress where num=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());

			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
			isDone = false;
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
		return isDone;
	}

	public List<pressVO> getLists() {

		List<pressVO> list = new ArrayList<pressVO>();
		pressVO vo;
		String sql = "select * from epress order by num desc";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new pressVO();
				vo.setNum(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setUploaddate(rs.getString(3));
				vo.setCount(rs.getInt(4));
				vo.setContext(rs.getString(5));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
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

		return list;
	}

}
