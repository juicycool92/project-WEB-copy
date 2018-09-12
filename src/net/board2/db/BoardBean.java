package net.board2.db;

import java.sql.Date;

public class BoardBean {
	private int BOARD_NUM;
	private Date BOARD_DATE;
	private String BOARD_CONTENT;
	private String BOARD_FILE;
	private String BOARD_OPINION;
	private String BOARD_GOAL;
	private String BOARD_SOURCES;

	public int getBOARD_NUM() {
		return BOARD_NUM;
	}

	public void setBOARD_NUM(int BOARD_NUM) {
		this.BOARD_NUM = BOARD_NUM;
	}

	public Date getBOARD_DATE() {
		return BOARD_DATE;
	}

	public void setBOARD_DATE(Date BOARD_DATE) {
		this.BOARD_DATE = BOARD_DATE;
	}

	public String getBOARD_CONTENT() {
		return BOARD_CONTENT;
	}

	public void setBOARD_CONTENT(String BOARD_CONTENT) {
		this.BOARD_CONTENT = BOARD_CONTENT;
	}

	public String getBOARD_FILE() {
		return BOARD_FILE;
	}

	public void setBOARD_FILE(String BOARD_FILE) {
		this.BOARD_FILE = BOARD_FILE;
	}

	public String getBOARD_OPINION() {
		return BOARD_OPINION;
	}

	public void setBOARD_OPINION(String BOARD_OPINION) {
		this.BOARD_OPINION = BOARD_OPINION;
	}

	public String getBOARD_GOAL() {
		return BOARD_GOAL;
	}

	public void setBOARD_GOAL(String BOARD_GOAL) {
		this.BOARD_GOAL = BOARD_GOAL;
	}

	public String getBOARD_SOURCES() {
		return BOARD_SOURCES;
	}

	public void setBOARD_SOURCES(String BOARD_SOURCES) {
		this.BOARD_SOURCES = BOARD_SOURCES;
	}

}