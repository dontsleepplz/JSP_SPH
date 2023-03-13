package kr.project.sph.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminMemberController {
	
	@GetMapping("/admin/main")
	public void main() {}
	
	@GetMapping("/admin/member/main")
	public void membermain() {}
	
	@GetMapping("/member/mainD")
	public void maindash() {}
}
