package com.edu.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Examination {
	
	private int eid;
	private String ename;
	private String clsname;
	private Classes classes;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm")
	private Date starttime;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm")
	private Date endtime;
	private int paperid;
	private int clsid;
	private Examinationpaper examinationpaper;
	
	public Examinationpaper getExaminationpaper() {
		return examinationpaper;
	}
	public void setExaminationpaper(Examinationpaper examinationpaper) {
		this.examinationpaper = examinationpaper;
	}
	public int getClsid() {
		return clsid;
	}
	public void setClsid(int clsid) {
		this.clsid = clsid;
	}
	private Examinationpaper exampaper;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	public int getPaperid() {
		return paperid;
	}
	public void setPaperid(int paperid) {
		this.paperid = paperid;
	}

	
	public String getClsname() {
		return clsname;
	}
	public void setClsname(String clsname) {
		this.clsname = clsname;
	}
	public Examinationpaper getExampaper() {
		return exampaper;
	}
	public void setExampaper(Examinationpaper exampaper) {
		this.exampaper = exampaper;
	}
	public Classes getClasses() {
		return classes;
	}
	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	
}
