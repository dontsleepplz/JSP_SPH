package kr.project.sph.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.project.sph.exception.InvalidPasswordException;
import kr.project.sph.exception.NotFoundIDException;
import kr.project.sph.service.MemberService;

@Controller
public class CommonController {
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	
	@GetMapping("/common/loginForm")
	public String loginForm(@RequestParam(defaultValue="") String error, HttpServletResponse response) {
		String url = "/common/loginForm";
		
		if(error.equals("-1")) {
			response.setStatus(302);
		}
		return url;
	}
	
	
	
	//응급처치 => 시큐리티 설정 후 삭제
	
	@PostMapping("/common/login")
	public String login(String id, String pwd, HttpSession session, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/index.do";
		try {
			memberService.login(id, pwd);
			session.setAttribute("loginUser", memberService.getMemberById(id));
		} catch(NotFoundIDException | InvalidPasswordException e) {
			url="redirect:/common/loginForm.do";
			rttr.addFlashAttribute("message", e.getMessage());
			rttr.addFlashAttribute("id", id);
		}
		
		return url;
	}
	
	@GetMapping("/common/logout")
	public String logout(HttpSession session) {
		String url = "redirect:/";
		session.invalidate();
		return url;
	}
	
	@GetMapping("/common/findId")
	public void findId() {}

	@GetMapping("/common/findPwd")
	public void findPwd() {}
}
