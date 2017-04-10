package com.edu.entity;

import java.util.Date;

public class Examinationpaper {

	private int paperid;
	private String name;
	private Type type;
	private Examinationitem examitem;
	private Date createtime;
	public int getPaperid() {
		return paperid;
	}
	public void setPaperid(int paperid) {
		this.paperid = paperid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Examinationitem getExamitem() {
		return examitem;
	}
	public void setExamitem(Examinationitem examitem) {
		this.examitem = examitem;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	
}
