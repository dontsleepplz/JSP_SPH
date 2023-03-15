package kr.project.sph.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
	@GetMapping("/admin/main")
	public void main() {}
	
	@GetMapping("/admin/member/main")
	public void membermain() {}
	
	
	@GetMapping("/admin/security/main")
	public void secumain() {
		
	}
	
	

}
