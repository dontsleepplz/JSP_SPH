package kr.project.sph.controller;

import org.springframework.stereotype.Controller;

@Controller
public class MenuController {
	/*
	 * 
	 * @Resource(name="menuService") private MenuService menuService;
	 * 
	 * @GetMapping("/index") public ModelAndView
	 * index(@RequestParam(defaultValue="M000000")String mCode, Model model) throws
	 * Exception{ String url = "/common/indexPage"; List<MenuVO> menuList =
	 * menuService.getMainMenuList(); MenuVO menu =
	 * menuService.getMenuByMcode(mCode);
	 * 
	 * 
	 * model.addAttribute("menuList", menuList); model.addAttribute("menu",menu);
	 * 
	 * ModelAndView mnv = new ModelAndView(); mnv.addObject("model", model);
	 * mnv.setViewName(url);
	 * 
	 * return mnv; }
	 * 
	 * @GetMapping("/subMenu")
	 * 
	 * @ResponseBody public ResponseEntity<List<MenuVO>> subMenuJson(String mCode){
	 * ResponseEntity<List<MenuVO>> entity = null; List<MenuVO> subMenu = null;
	 * 
	 * try { subMenu = menuService.getSubMenuList(mCode); entity = new
	 * ResponseEntity<List<MenuVO>>(subMenu, HttpStatus.OK); } catch (Exception e) {
	 * entity = new ResponseEntity<List<MenuVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
	 * e.printStackTrace(); }
	 * 
	 * return entity; }
	 */
	

}
