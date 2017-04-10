package com.edu.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


public class Student {

	private int stuid; //id
	private Classes classes;//班级   ---》 学生        一对多
	private String stuName;//学生姓名
	private String school; //毕业学校
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthDay;//出生日期
	private String phone;//手机号码
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date classTime;//进班时间
	private Integer status;//0 学习中，1结课，2休学
	private String sex;
	private String birthPlace;
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	public Classes getClasses() {
		return classes;
	}
	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getClassTime() {
		return classTime;
	}
	public void setClassTime(Date classTime) {
		this.classTime = classTime;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthPlace() {
		return birthPlace;
	}
	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}
	@Override
	public String toString() {
		return "Student [stuid=" + stuid + ", classes=" + classes + ", stuName=" + stuName + ", school=" + school
				+ ", birthDay=" + birthDay + ", phone=" + phone + ", classTime=" + classTime + ", status=" + status
				+ ", sex=" + sex + ", birthPlace=" + birthPlace + "]";
	}
	
	
}
