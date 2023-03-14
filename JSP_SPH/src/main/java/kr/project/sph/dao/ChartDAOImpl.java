package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ChartVO;

public class ChartDAOImpl implements ChartDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ChartVO> selectSearchChartList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		
		List<ChartVO> chartList=null;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		chartList = session.selectList("Chart-Mapper.selectSearchChartList",cri,rowBounds);
		return chartList;
	}

	@Override
	public int selectSearchChartListCount(SearchCriteria cri) throws SQLException {
		int count = 0;
		count = session.selectOne("Chart-Mapper.selectSearchChartListCount",cri);
		return count;
	}

	@Override
	public ChartVO selectChartByCNO(int cno) throws SQLException {
		ChartVO chart = session.selectOne("Chart-Mapper.selectChartByCNO",cno);
		return chart;
	}

	@Override
	public int selectChartSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("Chart-Mapper.selectChartSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertChart(ChartVO chart) throws SQLException {
		session.update("Chart-Mapper.insertChart",chart);
	}

	@Override
	public void updateChart(ChartVO chart) throws SQLException {
		session.update("Chart-Mapper.updateChart",chart);
	}

	@Override
	public void deleteChart(int cno) throws SQLException {
		session.update("Chart-Mapper.deleteChart",cno);
	}

}
