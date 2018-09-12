package net.snak.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class snakDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	public snakDAO() {
		try{
			Context init = new InitialContext();
	  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	  		con = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB connection failed line 21 in DAO : " + ex);
			return;
		}
	}
	public static boolean attempLogin(String parameter, String parameter2) {
		if(parameter.equals("admin")){
			if(parameter2.equals("1")){
				System.out.println("its true");
				return true;
			}
		}
		System.out.println("its false");
		return false;
	}
	public List adminGoodsList() {
		snakVO vo;
		ArrayList<snakVO> list = new ArrayList<snakVO>();
		String sql = "select category,name,num,isnew from goodsList order by num desc";
		try{
			pstmt = con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				vo = new snakVO();
				vo.setCategory(rs.getInt(1));
				vo.setName(rs.getString(2));
				vo.setNum(rs.getInt(3));
				vo.setIsNew(rs.getString(4));
				list.add(vo);
			}
			System.out.println(list.size());
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public snakVO getDetail(String parameter) {
		String sql = "select * from goodsList where num=?";
		int value = Integer.parseInt(parameter);
		snakVO vo = new snakVO();
		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, value);
			rs = pstmt.executeQuery();
			
			rs.next();
			vo.setCategory(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setNum(rs.getInt(3));
			vo.setImage(rs.getString(4));
			vo.setTh_image(rs.getString(5));
			vo.setTitle(rs.getString(6));
			vo.setContext1(rs.getString(7));
			vo.setContext2(rs.getString(8));
			vo.setIsNew(rs.getString(9));
			
		}catch(Exception e){
			System.out.println("detail dao 에서 문제");
			e.printStackTrace();
		}finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) { }
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) { }
		}
		return vo;
	}
	public boolean getDelete(String parameter) {
		int value = Integer.parseInt(parameter);
		String sql = "delete from goodsList where num=?";
		boolean isDeleted = false;
		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, value);
			rs = pstmt.executeQuery();
			isDeleted=true;
		}catch(Exception e){
			e.printStackTrace();			
		}finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) { }
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) { }
		}
		if(isDeleted){
			return true;
		}else{
			return false;
		}
	}
	public boolean addGoods(snakVO vo) {
		String sql = "insert into goodsList values(?,?,SEQ_MEMBER.NEXTVAL,?,?,?,?,?,?)";
		boolean isDeleted = false;
		System.out.println("test values as order by"+vo.getCategory()+vo.getName()+vo.getTitle()+vo.getContext1()+vo.getContext2());
		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, vo.getCategory());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getImage());
			pstmt.setString(4, vo.getTh_image());
			pstmt.setString(5, vo.getTitle());
			pstmt.setString(6, vo.getContext1());
			pstmt.setString(7, vo.getContext2());
			pstmt.setString(8, vo.getIsNew());
			rs = pstmt.executeQuery();
			isDeleted=true;
		}catch(Exception e){
			e.printStackTrace();			
		}finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) { }
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) { }
		}
		if(isDeleted){
			return true;
		}
		return false;
	}
	public boolean updateGoods(snakVO vo) {
		String sql = "update goodsList set ";
		if(vo.getCategory()<6||vo.getCategory()>0)
			sql+="category="+vo.getCategory();
		if(vo.getName()!=null)
			sql+=", name='"+vo.getName()+"'";
		if(vo.getImage()!=null)
			sql+=", image='"+vo.getImage()+"'";
		if(vo.getTh_image()!=null)
			sql+=", th_image='"+vo.getTh_image()+"'";
		if(vo.getTitle()!=null)
			sql+=", title='"+vo.getTitle()+"'";
		if(vo.getContext1()!=null)
			sql+=", context1='"+vo.getContext1()+"'";
		if(vo.getContext2()!=null)
			sql+=", context2='"+vo.getContext2()+"'";
		if(vo.getIsNew()!=null)
			sql+=", isnew='"+vo.getIsNew()+"'";
		sql+=" where num="+vo.getNum();
		boolean isDeleted = false;
		System.out.println("test values as order by"+vo.getCategory()+vo.getName()+vo.getTitle()+vo.getContext1()+vo.getContext2());
		System.out.println("sql ready as : " +sql);
		try{
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			isDeleted=true;
		}catch(Exception e){
			e.printStackTrace();			
		}finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) { }
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) { }
		}
		if(isDeleted){
			return true;
		}
		return false;
	}
	public List userGoodsList(int value) {
		snakVO vo;
		ArrayList<snakVO> list = new ArrayList<snakVO>();
		String sql = "select th_image,name,num from goodsList where category=? order by num desc";
		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, value);
			rs=pstmt.executeQuery();
			while(rs.next()){
				vo = new snakVO();
				vo.setTh_image(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setNum(rs.getInt(3));
				list.add(vo);
			}
			System.out.println(list.size());
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public snakVO userGetDetail(String parameter) {
		String sql = "select * from goodsList where num=?";
		int value = Integer.parseInt(parameter);
		snakVO vo = new snakVO();
		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, value);
			rs = pstmt.executeQuery();
			
			rs.next();
			vo.setCategory(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setNum(rs.getInt(3));
			vo.setImage(rs.getString(4));
			vo.setTh_image(rs.getString(5));
			vo.setTitle(rs.getString(6));
			vo.setContext1(rs.getString(7));
			vo.setContext2(rs.getString(8));
			
		}catch(Exception e){
			System.out.println("user detail dao 에서 문제");
			e.printStackTrace();
		}finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) { }
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) { }
		}
		return vo;
	}
	public List userGoodsListNew() {
		snakVO vo;
		ArrayList<snakVO> list = new ArrayList<snakVO>();
		String sql = "select th_image,name,num from goodsList where isNew='yes' order by num desc";
		try{
			pstmt = con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				vo = new snakVO();
				vo.setTh_image(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setNum(rs.getInt(3));
				list.add(vo);
			}
			System.out.println(list.size());
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
