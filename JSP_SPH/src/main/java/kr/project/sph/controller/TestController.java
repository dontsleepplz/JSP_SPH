package kr.project.sph.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

	@GetMapping("/main")
	public void main() {
		
	}

	@GetMapping("/common/frame")
	public void testFrame() {
		
	}

	@GetMapping("/common/login2")
	public void login2() {

	}

	@GetMapping("/common/mainD")
	public void mainD() {
		
	}

	@GetMapping("/calender/cal")
	public void cal() {
		
	}

	@GetMapping("/withside")
	public void side() {

	}

}
