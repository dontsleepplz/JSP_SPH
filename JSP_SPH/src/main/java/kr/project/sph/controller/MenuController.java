package kr.project.sph.controller;

<<<<<<< HEAD
=======
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
>>>>>>> refs/heads/main
import org.springframework.stereotype.Controller;

@Controller
public class MenuController {

	@Resource(name = "menuService")
	private MenuService menuService;

	@GetMapping("/index")
	public ModelAndView index(@RequestParam(defaultValue = "M000000") String mCode, Model model) throws Exception {
		String url = "/common/indexPage";
		List<MenuVO> menuList = menuService.getMainMenuList();
		MenuVO menu = menuService.getMenuByMcode(mCode);

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
