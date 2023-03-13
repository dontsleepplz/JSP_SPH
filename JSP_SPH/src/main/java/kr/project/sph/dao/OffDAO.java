package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.OffVO;

public interface OffDAO {
	
	List<OffVO> selectSearchOffList(SearchCriteria cri) throws SQLException;
	
	void deleteOff(OffVO off) throws SQLException;
	void deleteOff(int offNum) throws SQLException;

}
