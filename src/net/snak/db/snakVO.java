package net.snak.db;

public class snakVO {
	int category;
	String name;
	int num;
	String image;
	String th_image;
	String title;
	String context1;
	String context2;
	String isNew;
	
	public String getIsNew() {
		return isNew;
	}

	public void setIsNew(String isNew) {
		this.isNew = isNew;
	}

	public snakVO() {
		category=0;	name="";	num=0;
		image="";	th_image="";	title="";
		context1="";	context2=""; isNew="no";
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTh_image() {
		return th_image;
	}

	public void setTh_image(String th_image) {
		this.th_image = th_image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext1() {
		return context1;
	}

	public void setContext1(String context1) {
		this.context1 = context1;
	}

	public String getContext2() {
		return context2;
	}

	public void setContext2(String context2) {
		this.context2 = context2;
	}
	
	
	
}
