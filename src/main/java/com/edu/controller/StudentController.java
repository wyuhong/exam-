package com.edu.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.entity.Classes;
import com.edu.entity.Student;
import com.edu.entity.Teacher;
import com.edu.entity.User;
import com.edu.service.StudentService;
import com.edu.service.TeacherService;

/**
 * @author 14
 * 该controller是为了处理学生登陆后的请求
 *
 */
@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private TeacherService teacherService;
	/**
	 * 管理员界面 学生查询
	 */
	@RequestMapping("listStudents")
	public ModelAndView listStudents(){
		List<Student> slist = studentService.listStudents();
		List<Classes> clist = teacherService.listClasses();
	return new ModelAndView("/jsps/student/stumanage.jsp").addObject("slist", slist).addObject("clist", clist);
	}
	/**
	 * 模糊查詢
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("searchFuzzyStudents")
	public ModelAndView searchFuzzyStudents(Student student) throws UnsupportedEncodingException{
		if(student.getStuName() != null && !student.getStuName().equals("")){
			String stuName = new String(student.getStuName().getBytes("iso8859-1"),"utf-8");	
			student.setStuName("%"+stuName+"%");
		}
		if(student.getSchool() != null && !student.getSchool().equals("")){
			String school = new String(student.getSchool().getBytes("iso8859-1"),"utf-8");
			student.setSchool("%"+school+"%");
		}
		List<Student> slist = studentService.searchFuzzyStudents(student);
	return new ModelAndView("/jsps/student/stumanage.jsp").addObject("slist", slist);
	}
	
	@RequestMapping("toAddStudents")
	public ModelAndView toAddStudents(){
		List<Classes> clist = teacherService.listClasses();
	return new ModelAndView("/jsps/student/add_student.jsp").addObject("clist", clist);
	} 
	@RequestMapping("AddStudents")
	public String AddStudents(Student student) throws UnsupportedEncodingException{
		if(student.getStuName() != null && !student.getStuName().equals("")){
			String stuName = new String(student.getStuName().getBytes("iso8859-1"),"utf-8");	
			student.setStuName(stuName);
		}
		if(student.getSchool() != null && !student.getSchool().equals("")){
			String school = new String(student.getSchool().getBytes("iso8859-1"),"utf-8");
			student.setSchool(school);
		}
		if(student.getBirthPlace()!= null && !student.getBirthPlace().equals("")){
			String birthPlace = new String(student.getBirthPlace().getBytes("iso8859-1"),"utf-8");
			student.setBirthPlace(birthPlace);
		}
		if(student.getSex()!= null && !student.getSex().equals("")){
			String sex = new String(student.getSex().getBytes("iso8859-1"),"utf-8");
			student.setSex(sex);
		}
		studentService.AddStudents(student);
	return "redirect:/listStudents.do";
	}
}
