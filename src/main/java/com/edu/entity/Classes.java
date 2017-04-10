package com.edu.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Classes {
private Integer clsid;//id
private String clsname;//班级名称
private Type type;//类型id
private Teacher teacher;//讲师ID 一对一
private HeadTeacher headTeacher;//班主任id  一对一
@DateTimeFormat(pattern="yyyy-MM-dd")
private Date strartdate;//开班时间
private Integer status;//0表示未开始，1表示学习中，2表示已接课
private String studytime;


public Teacher getTeacher() {
	return teacher;
}
public void setTeacher(Teacher teacher) {
	this.teacher = teacher;
}
public HeadTeacher getHeadTeacher() {
	return headTeacher;
}
public void setHeadTeacher(HeadTeacher headTeacher) {
	this.headTeacher = headTeacher;
}
public Date getStrartdate() {
	return strartdate;
}
public void setStrartdate(Date strartdate) {
	this.strartdate = strartdate;
}
public Integer getClsid() {
	return clsid;
}
public void setClsid(Integer clsid) {
	this.clsid = clsid;
}
public String getClsname() {
	return clsname;
}
public void setClsname(String clsname) {
	this.clsname = clsname;
}



public Integer getStatus() {
	return status;
}
public void setStatus(Integer status) {
	this.status = status;
}
public String getStudytime() {
	return studytime;
}
public void setStudytime(String studytime) {
	this.studytime = studytime;
}

public Type getType() {
	return type;
}
public void setType(Type type) {
	this.type = type;
}



}
