package com.edu.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Teacher {
	private int tid;//主键ID
	private String tname;		//讲师姓名
	private Type type;		//外键 关联type类型表
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date entrytime;//	入职时间
	private String experience;//	工作经验
	private Integer status;// 状态   0离职   1未授课 2 授课中 3结课
	private Classes cls;//班级ID 一对一
	
	
	
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public Classes getCls() {
		return cls;
	}
	public void setCls(Classes cls) {
		this.cls = cls;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
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

	@Override
	public String toString() {
		return "Teacher [tid=" + tid + ", tname=" + tname + ", type=" + type + ", entrytime=" + entrytime
				+ ", experience=" + experience + ", status=" + status + "]";
	}

	
}