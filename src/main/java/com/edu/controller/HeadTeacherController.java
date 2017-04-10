package com.edu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.entity.HeadTeacher;
import com.edu.entity.Teacher;
import com.edu.service.HeadTeacherService;
import com.edu.util.PageBean;
import com.edu.util.PagerUtil;

@Controller
public class HeadTeacherController {

	@Autowired
	private HeadTeacherService headTeacherService;
	/**
	 * 展示所有headteacher
	 * @return
	 */
	@RequestMapping("listHeadTeachers")
	public ModelAndView listHeadTeachers(HttpServletRequest request){
		//0 获取请求流中的数据封装到对象中
		PageBean<HeadTeacher> pb = new PageBean<HeadTeacher>();
		//第一步：设置pageNumber
		pb.setPageNumber(PagerUtil.getPageNumber(request));
		//第二步：设置pageSize
		 
		pb.setPageSize(PagerUtil.PAGESIZE);
		//第三步：设置url
		pb.setUrl(PagerUtil.getUrl(request, ""));
		//第四步：设置list(list是指定页码显示内容的集合)
		int StartRow = (pb.getPageNumber()-1)*(pb.getPageSize());
		pb.setList(headTeacherService.listHeadTeachers(StartRow,pb.getPageSize()));
		//第五步：设置totalRecords
		pb.setTotalRecords(headTeacherService.countHeadTeacher());
		//第六步：将pb存放到request中
		//为何此处没有计算总页数？因为在封装的PageBean中已经计算出总页数了
		//第六步：转发到下一个页面
		return new ModelAndView("/jsps/headteacher/headteacher.jsp").addObject("pb", pb);
	}
	
	/**
	 * 增加班主任信息
	 * @param headTeacher
	 * @return
	 */
	@RequestMapping("addHeadTeacher")
	public String addHeadTeacher(HeadTeacher headTeacher){
		headTeacherService.addHeadTeacher(headTeacher);
		return "/listHeadTeachers.do";
	}
	/**
	 * 模糊查询
	 */
	@RequestMapping("searchHeadteacher")
	public ModelAndView searchHeadteacher(HeadTeacher headTeacher,HttpServletRequest request){
		if (headTeacher.getHname()!=null && !headTeacher.getHname().equals("")) {
			headTeacher.setHname("%"+headTeacher.getHname()+"%");
		}
		//0 获取请求流中的数据封装到对象中
				PageBean<HeadTeacher> pb = new PageBean<HeadTeacher>();
				//第一步：设置pageNumber
				pb.setPageNumber(PagerUtil.getPageNumber(request));
				//第二步：设置pageSize
				 
				pb.setPageSize(PagerUtil.PAGESIZE);
				//第三步：设置url
				pb.setUrl(PagerUtil.getUrl(request, ""));
				//第四步：设置list(list是指定页码显示内容的集合)
				int StartRow = (pb.getPageNumber()-1)*(pb.getPageSize());
				pb.setList(headTeacherService.searchHeadteacher(headTeacher,StartRow,pb.getPageSize()));
				//第五步：设置totalRecords
				pb.setTotalRecords(headTeacherService.countFuzzyHeadTeacher(headTeacher));
				//第六步：将pb存放到request中
				//为何此处没有计算总页数？因为在封装的PageBean中已经计算出总页数了
				//第六步：转发到下一个页面
				return new ModelAndView("/jsps/headteacher/headteacher.jsp").addObject("pb", pb);
	}
	/**
	 * 根据hid查询要修改的班主任信息
	 */
	
	@RequestMapping("findHeadTeacherByHid")
	public ModelAndView findHeadTeacherByHid(int hid){
		HeadTeacher headTeacher = headTeacherService.findHeadTeacherByHid(hid);
		return new ModelAndView("/jsps/headteacher/updateheadteacher.jsp").addObject("headTeacher", headTeacher);
	}
	/**
	 * 更改班主任数据updateHeadTeacher
	 */
	 @RequestMapping("updateHeadTeacherByHid")
		public String updateHeadTeacherByHid(HeadTeacher headTeacher){
			headTeacherService.updateHeadTeacherByHid(headTeacher);
			return "redirect:/listHeadTeachers.do";
		}
		
	 /**
	  * 修改为离职状态
	  * @param hid
	  * @return
	  */
		@RequestMapping("updateHeadTeacherStatusByHid")
		public String updateHeadTeacherStatusByHid(int hid){
			headTeacherService.updateHeadTeacherStatusByHid(hid);
			return "redirect:/listHeadTeachers.do";
		}
	 
}
