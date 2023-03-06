package kr.project.sph.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.project.sph.dto.TestMenuVO;

@Controller
public class TestController {
	
	@GetMapping("/main")
	public void main() {
	}
	@GetMapping("/common/frame")
	public void testFrame() {}
	
	@GetMapping("/common/login2")
	public void login2() {
		
	}
	@GetMapping("/common/test")
	public void test1() {}
	@GetMapping("/calender/cal")
	public void cal() {}
	
	@GetMapping("/withside")
	public void side() {
		
	}
	
	@GetMapping("/index")
	public ModelAndView index(@RequestParam(defaultValue="M000000")String mCode, Model model) throws Exception{
		String url = "/common/indexPage";
		TestMenuVO menu = new TestMenuVO();
		
		String mcode="";
		String murl="";
		String mname="";
		
		menu.setMcode(mcode);
		menu.setMurl(murl);
		menu.setMname(mname);
		
		model.addAttribute("menu",menu);
		ModelAndView mnv = new ModelAndView();
		mnv.addObject("model", model);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	
	
	
	@GetMapping("/")
	public String test() {
		String url = "";
		
		return url;
	}
	
	
	

}
