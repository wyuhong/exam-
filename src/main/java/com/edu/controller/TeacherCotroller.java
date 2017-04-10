package com.edu.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.entity.Classes;
import com.edu.entity.Teacher;
import com.edu.entity.Type;
import com.edu.service.TeacherService;
import com.edu.util.PageBean;
import com.edu.util.PagerUtil;

@Controller
public class TeacherCotroller {
	@Autowired
	private TeacherService teacherService;
	
	/**
	 * 查询所有讲师信息
	 */
	
	@RequestMapping("listTeachers")
	public ModelAndView listTeachers(HttpServletRequest request){
		//0 获取请求流中的数据封装到对象中
				PageBean<Teacher> pb = new PageBean<Teacher>();
				//第一步：设置pageNumber
				pb.setPageNumber(PagerUtil.getPageNumber(request));
				//第二步：设置pageSize
				 
				pb.setPageSize(PagerUtil.PAGESIZE);
				//第三步：设置url
				pb.setUrl(PagerUtil.getUrl(request, ""));
				//第四步：设置list(list是指定页码显示内容的集合)
				int StartRow = (pb.getPageNumber()-1)*(pb.getPageSize());
				pb.setList(teacherService.listTeachers(StartRow,pb.getPageSize()));
				//第五步：设置totalRecords
				pb.setTotalRecords(teacherService.countTeacher());
				//第六步：将pb存放到request中
				//为何此处没有计算总页数？因为在封装的PageBean中已经计算出总页数了
				//第六步：转发到下一个页面
		return new ModelAndView("/jsps/teacher/teacher.jsp").addObject("pb", pb);
	}
	
	/**
	 * 模糊查詢
	 * @param teacher
	 * @return
	 */
	@RequestMapping("searching")
	public ModelAndView searching(Teacher teacher,HttpServletRequest request){
		if(teacher.getTname() != null && !teacher.getTname().equals("")){
			teacher.setTname("%"+teacher.getTname()+"%");
		}
		//0 获取请求流中的数据封装到对象中
		PageBean<Teacher> pb = new PageBean<Teacher>();
		//第一步：设置pageNumber
		pb.setPageNumber(PagerUtil.getPageNumber(request));
		//第二步：设置pageSize
		 
		pb.setPageSize(PagerUtil.PAGESIZE);
		//第三步：设置url
		pb.setUrl(PagerUtil.getUrl(request, ""));
		//第四步：设置list(list是指定页码显示内容的集合)
		int StartRow = (pb.getPageNumber()-1)*(pb.getPageSize());
		pb.setList(teacherService.searching(teacher,StartRow,pb.getPageSize()));
		//第五步：设置totalRecords
		pb.setTotalRecords(teacherService.countFuzzyTeacher(teacher));
		//第六步：将pb存放到request中
		//为何此处没有计算总页数？因为在封装的PageBean中已经计算出总页数了
		//第六步：转发到下一个页面
		return new ModelAndView("/jsps/teacher/teacher.jsp").addObject("pb", pb);
	}

/**
 * 添加讲师信息
 * @param teacher
 * @return
 */
	@RequestMapping("toAddTeacher")
	public ModelAndView toAddTeacher(){
		List<Type> tList = teacherService.listTypes();
		List<Classes> cList = teacherService.listClasses();
		return new ModelAndView("/jsps/teacher/addteacher.jsp").addObject("tList", tList).addObject("cList", cList);
	} 
	@RequestMapping("addTeacher")
	public String addTeacher(Teacher teacher){
		teacherService.addTeacher(teacher);
		return "redirect:/listTeachers.do";
	}
	
	/**
	 * 根据ID查找讲师 ，修改途中
	 * @param tid
	 * @return
	 */
	@RequestMapping("findTeacherByTid")
	public ModelAndView findTeacherByTid(int tid){
		Teacher teacher = teacherService.findTeacherByTid(tid);
		List<Type> tList = teacherService.listTypes();
		List<Classes> cList = teacherService.listClasses();
		return new ModelAndView("/jsps/teacher/updateteacher.jsp").addObject("teacher", teacher).addObject("tList", tList).addObject("cList", cList);
	}
	/**
	 * 修改讲师信息
	 * @param teacher
	 * @return
	 */
	@RequestMapping("updateTeacher")
	public String updateTeacher(Teacher teacher){
		teacherService.updateTeacher(teacher);
		return "redirect:/listTeachers.do";
	}
	/**
	 * 修改为结课状态
	 * @param tid
	 * @return
	 */
	@RequestMapping("updateStatus1ByTid")
	public String updateStatus1ByTid(int tid){
		teacherService.updateStatus1ByTid(tid);
		return "redirect:/listTeachers.do";
	}
	/**
	 * 修改为离职状态
	 * @param tid
	 * @return
	 */
	@RequestMapping("updateStatus2ByTid")
	public String updateStatus2ByTid(int tid){
		teacherService.updateStatus2ByTid(tid);
		return "redirect:/listTeachers.do";
	}
}
