package com.edu.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class HeadTeacher {
	private int hid;  //ID
	private String hname;	//班主任姓名
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date entrytime;	//入职时间
	private String experience;	//工作经验
	private Integer status;	 //状态  0离职   1在职
	private List<Classes> clist;//班级----》班主任          多对一
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public Date getEntrytime() {
		return entrytime;
	}
	public void setEntrytime(Date entrytime) {
		this.entrytime = entrytime;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public List<Classes> getClist() {
		return clist;
	}
	public void setClist(List<Classes> clist) {
		this.clist = clist;
	}
	@Override
	public String toString() {
		return "HeadTeacher [hid=" + hid + ", hname=" + hname + ", entrytime=" + entrytime + ", experience="
				+ experience + ", status=" + status + ", clist=" + clist + "]";
	}
	
	
}
