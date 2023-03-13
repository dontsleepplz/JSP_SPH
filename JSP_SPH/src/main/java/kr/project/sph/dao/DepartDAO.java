package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.DepartVO;

public interface DepartDAO {
	
	List<DepartVO> selectSearchDepartList(SearchCriteria cri) throws SQLException;
	
	int selectSearchDepartListCount(SearchCriteria cri)throws SQLException;
	
	DepartVO selectDepartByCode(String dCode)throws SQLException;
	
	void insertDepart(DepartVO depart) throws SQLException;
	
	void updateDepart(DepartVO depart) throws SQLException;
	
	void deleteDepart(String dCode) throws SQLException;
	

}
