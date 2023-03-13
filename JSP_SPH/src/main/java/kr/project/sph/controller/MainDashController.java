package kr.project.sph.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainDashController {
	
	@GetMapping("/member/mainDash")
	public void mainDash() {}
	
	


}
