package kr.project.sph.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.project.sph.dto.MenuVO;
import kr.project.sph.service.MenuService;

@Controller
public class MenuController {

	@Resource(name = "menuService")
	private MenuService menuService;

	@GetMapping("/index")
	public ModelAndView index(@RequestParam(defaultValue = "M000000") String mCode, Model model) throws Exception {
		String url = "/common/indexPage";
		List<MenuVO> menuList = menuService.getMainMenuList();
		MenuVO menu = menuService.getMenuByMcode(mCode);
		int submenu = 0;
		
		if(menu.getMurl().contains("Home")||menu.getMurl().contains("calendar")) {
			model.addAttribute("menuList", menuList);
			model.addAttribute("menu", menu);
		}else {
			model.addAttribute("menuList", menuList);
			model.addAttribute("menu", menu);
			model.addAttribute("submenu", submenu);
		}
		
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
			subMenu = menuService.getSubMenuList(mCode);
			entity = new ResponseEntity<List<MenuVO>>(subMenu, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<MenuVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
			e.printStackTrace();
		}

		return entity;
	}

	/*
	 * @GetMapping("/index") public ModelAndView index(@RequestParam(defaultValue =
	 * "M000000") String mCode, Model model, String murl) throws Exception { String
	 * url = "/common/indexPage"; List<MenuVO> menuList = new ArrayList<MenuVO>();
	 * MenuVO menu = new MenuVO();
	 * 
	 * // URL 스트링에 직접입력 menu.setMcode("M000000"); menu.setMurl(murl);
	 * menu.setMname("test");
	 * 
	 * menuList.add(menu);
	 * 
	 * model.addAttribute("menuList", menuList); model.addAttribute("menu", menu);
	 * 
	 * ModelAndView mnv = new ModelAndView(); mnv.addObject("model", model);
	 * mnv.setViewName(url);
	 * 
	 * return mnv; }
	 * 
	 * @GetMapping("/subMenu")
	 * 
	 * @ResponseBody public ResponseEntity<List<MenuVO>> subMenuJson(String mCode) {
	 * ResponseEntity<List<MenuVO>> entity = null; List<MenuVO> subMenu = null;
	 * 
	 * try { entity = new ResponseEntity<List<MenuVO>>(subMenu, HttpStatus.OK); }
	 * catch (Exception e) { entity = new
	 * ResponseEntity<List<MenuVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
	 * e.printStackTrace(); }
	 * 
	 * return entity; }
	 */
}
