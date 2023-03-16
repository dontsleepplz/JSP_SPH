package kr.project.sph.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainDashController {
	
	@GetMapping("/member/Home")
	public void mainDash() {}
	
	@GetMapping("/notice")
	public String noticeGo() {
		String url = "/notice/list";
		return url;
	}
	
	
	@GetMapping("/calender/calendar")
	public void calendar() {
		
	}
	
	@GetMapping("/Report/reportHome")
	public void report() {}
	
	@GetMapping("/contactGroup/contactGroupAll")
	public void contact1() {}
	
	@GetMapping("/contactGroup/contactGroupDepart")
	public void contact2() {}
	
	@GetMapping("/contactGroup/contactGroupIndividual")
	public void contact3() {}
	
	@GetMapping("/admin/stati/stati")
	public void stati() {}
}
