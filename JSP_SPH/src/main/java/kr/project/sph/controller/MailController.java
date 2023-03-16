package kr.project.sph.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/mail")
public class MailController {
	

	@GetMapping("/inboxMail")
	public void inbox() {
	}
	
	@GetMapping("/outboxMail")
	public void outbox() {}
	
	@GetMapping("/fullMail")
	public void full() {}

}
