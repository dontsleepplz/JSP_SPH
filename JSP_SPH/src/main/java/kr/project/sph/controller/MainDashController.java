package kr.project.sph.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainDashController {
	
	@GetMapping("/member/mainDash")
	public void mainDash() {}
	
	@GetMapping("/notice")
	public String noticeGo() {
		String url = "/notice/list";
		return url;
	}
	
	@GetMapping("/mail")
	public String mailGo() {
		String url = "/mail/mailHome";
		return url;
	}
	
	@GetMapping("/elecSign")
	public String elecSignGo() {
		String url = "/elecSign/elecSignHome";
		return url;
	}
	
}
