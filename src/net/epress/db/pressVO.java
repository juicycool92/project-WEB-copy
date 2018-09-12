package net.epress.db;

public class pressVO {
	private int num;
	private String title;
	private String uploaddate;
	private String context;
	private int count;
	public pressVO() {
		num=0;
		title="";
		uploaddate="";
		context="";
		count=0;
	}
	public pressVO(int num, String title, String context) {
		this.num=num;
		this.title=title;
		uploaddate="";
		this.context=context;
		count=0;
	}
	public pressVO(int num) {
		this.num = num;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUploaddate() {
		return uploaddate;
	}
	public void setUploaddate(String uploaddate) {
		this.uploaddate = uploaddate;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}
