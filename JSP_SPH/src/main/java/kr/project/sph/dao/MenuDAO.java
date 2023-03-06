package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.dto.MenuVO;

public interface MenuDAO {
	
	List<MenuVO> selectMainMenu() throws SQLException;

	MenuVO selectMenuByMcode(String mCode) throws SQLException;

	MenuVO selectMenuByMname(String mName) throws SQLException;

	List<MenuVO> selectSubMenu(String mCode) throws SQLException;

}
