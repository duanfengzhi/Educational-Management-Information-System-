package com.hfut.controller;
 
import java.io.IOException;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
/**
 * IndexController
 * 
 * 
 */
@Controller
public class IndexController {

	@RequestMapping("/showcontent")
	public String content(Model model)
			throws IOException {
		System.out.println("showcontent-in");
		model.addAttribute("content", "局部刷新返回整个页面");
		System.out.println("showcontent-out");
		return "admin/feedbackCheck/feedbackCheck";
	}
	
	@RequestMapping("/")
	public String index(Model model)
			throws IOException {
		
		return "/index";
	}
	
	
}
