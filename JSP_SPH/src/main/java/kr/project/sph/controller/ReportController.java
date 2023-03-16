package kr.project.sph.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/report")
public class ReportController {
	
	@GetMapping("/reportmain")
	public void test() {
	}
	
	@GetMapping("/reportHome")
	public void test1() {
	}
	
	@GetMapping("/reportregistForm")
	public void test2() {
	}
}
