package net.board.db;

import java.sql.Date;

public class BoardBean {

	private String NAME;
	private String EMAIL_1;
	private String EMAIL_2;

	private String CALL_1;
	private String CALL_2;
	private String CALL_3;

	private String TITLE;
	private String ETC;
	private String CONTENT;

	private String I_FILE;
	private String PWD;

	private Date DAY;

	private int NUM;

	private String FILENAME;

	public String getFILENAME() {
		return FILENAME;
	}

	public void setFILENAME(String fILENAME) {
		FILENAME = fILENAME;
	}

	public int getNUM() {
		return NUM;
	}

	public void setNUM(int nUM) {
		NUM = nUM;
	}

	public Date getDAY() {
		return DAY;
	}

	public void setDAY(Date dAY) {
		DAY = dAY;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public String getEMAIL_1() {
		return EMAIL_1;
	}

	public void setEMAIL_1(String eMAIL_1) {
		EMAIL_1 = eMAIL_1;
	}

	public String getEMAIL_2() {
		return EMAIL_2;
	}

	public void setEMAIL_2(String eMAIL_2) {
		EMAIL_2 = eMAIL_2;
	}

	public String getCALL_1() {
		return CALL_1;
	}

	public void setCALL_1(String cALL_1) {
		CALL_1 = cALL_1;
	}

	public String getCALL_2() {
		return CALL_2;
	}

	public void setCALL_2(String cALL_2) {
		CALL_2 = cALL_2;
	}

	public String getCALL_3() {
		return CALL_3;
	}

	public void setCALL_3(String cALL_3) {
		CALL_3 = cALL_3;
	}

	public String getTITLE() {
		return TITLE;
	}

	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}

	public String getETC() {
		return ETC;
	}

	public void setETC(String eTC) {
		ETC = eTC;
	}

	public String getCONTENT() {
		return CONTENT;
	}

	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}

	public String getI_FILE() {
		return I_FILE;
	}

	public void setI_FILE(String i_FILE) {
		I_FILE = i_FILE;
	}

	public String getPWD() {
		return PWD;
	}

	public void setPWD(String pWD) {
		PWD = pWD;
	}
}
