package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ChartVO;

public interface ChartDAO {

	List<ChartVO> selectSearchChartList(SearchCriteria cri)throws SQLException;
	
	int selectSearchChartListCount(SearchCriteria cri)throws SQLException;
	
	ChartVO selectChartByCNO(int cno)throws SQLException;
	
	int selectChartSequenceNextValue()throws SQLException;
	
	void insertChart(ChartVO chart)throws SQLException;
	
	void updateChart(ChartVO chart)throws SQLException;
	
	void deleteChart(int cno)throws SQLException;
	
	
}
