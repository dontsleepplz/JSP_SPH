package kr.project.sph.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.project.sph.dto.MenuVO;

@Controller
public class TestController {

	@GetMapping("/main")
	public void main() {

	}

	@GetMapping("/common/frame")
	public void testFrame() {

	}
	
	@GetMapping("/work/main")
	public void wmain() {}

	@GetMapping("/common/login2")
	public void login2() {

	}

	@GetMapping("/common/mainD")
	public void mainD() {

	}

	@GetMapping("/operation/regist")
	public void opregist() {}
	
	

	@GetMapping("/calender/calendar")
	public void calendar() {

	}

	@GetMapping("/withside")
	public void side() {

	}

	@GetMapping("/common/stati")
	public void stati() {

	}

	@GetMapping("/admin/member/membermain")
	public void membertest() {
	}

	@GetMapping("/calender/regist")
	public void calregist() {}
	// frame.jsp처럼 작성해주셔야합니다.
	// menu.setMurl("경로");
	// 경로 부분에 경로 입력해주시고 마지막에 .do 붙여주셔야하고
	// 경로수정하셨으면 GetMapping으로 메소드 하나 더 만들으셔서 경로주고 사용하시면 됩니다.

	// 요청(Request) -> Encoding filter -> sitemesh-> dispatcherServlet->
	// adapter->controller
	// -> dispatcherServlet-> decorators-> decorator

	// 확인 순서 : web.xml -> sitemesh.xml -> decorators.xml -> decorator.jsp ->
	// footer.jsp(하단 js) ->
	// indexpage.jsp -> testController.index -> iframe_decorator.jsp

	
	@GetMapping("/common/conguA")
	public void conguA() {

	}
	@GetMapping("/common/conguD")
	public void conguD() {

	}
	@GetMapping("/common/conguP")
	public void conguP() {

	}
	
	
	//frame.jsp처럼 작성해주셔야합니다.
	//menu.setMurl("경로");
	//경로 부분에 경로 입력해주시고 마지막에 .do 붙여주셔야하고
	//경로수정하셨으면 GetMapping으로 메소드 하나 더 만들으셔서 경로주고 사용하시면 됩니다.
	
	//요청(Request) -> Encoding filter -> sitemesh-> dispatcherServlet-> adapter->controller
	//-> dispatcherServlet-> decorators-> decorator
	
	//확인 순서 : web.xml -> sitemesh.xml -> decorators.xml -> decorator.jsp -> footer.jsp(하단 js) ->
	//indexpage.jsp -> testController.index -> iframe_decorator.jsp
	
	
	
	@GetMapping("/index")
	public ModelAndView index(@RequestParam(defaultValue = "M000000") String mCode, Model model) throws Exception {
		String url = "/common/indexPage";
		List<MenuVO> menuList = new ArrayList<MenuVO>();
		MenuVO menu = new MenuVO();

		// URL 스트링에 직접입력
		menu.setMcode("M000000");
		menu.setMurl("/calender/calendar.do");
		menu.setMname("test");

		menuList.add(menu);

		model.addAttribute("menuList", menuList);
		model.addAttribute("menu", menu);

		ModelAndView mnv = new ModelAndView();
		mnv.addObject("model", model);
		mnv.setViewName(url);

		return mnv;
	}

	@GetMapping("/subMenu")
	@ResponseBody
	public ResponseEntity<List<MenuVO>> subMenuJson(String mCode) {
		ResponseEntity<List<MenuVO>> entity = null;
		List<MenuVO> subMenu = null;

		try {
			entity = new ResponseEntity<List<MenuVO>>(subMenu, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<MenuVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
			e.printStackTrace();
		}

		return entity;
	}

}
