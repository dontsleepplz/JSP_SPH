package kr.project.sph.service;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.dao.MenuDAO;
import kr.project.sph.dto.MenuVO;

public class MenuServiceImpl implements MenuService {
	
	private MenuDAO menuDAO;	
	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}

	@Override
	public List<MenuVO> getMainMenuList() throws SQLException {
		List<MenuVO> menuList = menuDAO.selectMainMenu();
		return menuList;
	}

	@Override
	public List<MenuVO> getSubMenuList(String mCode) throws SQLException {
		List<MenuVO> menuList = null;
		menuList = menuDAO.selectSubMenu(mCode);
		return menuList;
	}

	@Override
	public MenuVO getMenuByMcode(String mCode) throws SQLException {
		MenuVO menu = null;
		menu = menuDAO.selectMenuByMcode(mCode);
		return menu;
	}

	@Override
	public MenuVO getMenuByMname(String mName) throws SQLException {
		MenuVO menu = null;
		menu = menuDAO.selectMenuByMname(mName);
		return menu;
	}

}
