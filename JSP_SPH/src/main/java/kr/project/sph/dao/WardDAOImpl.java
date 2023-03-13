package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.WardVO;

public class WardDAOImpl implements WardDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<WardVO> selectSearchWardList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		
		List<WardVO> wardList = null;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		wardList=session.selectList("Ward-Mapper.selectSearchWardList",cri,rowBounds);
		return wardList;
	}

	@Override
	public int selectSearchWardListCount(SearchCriteria cri) throws SQLException {
		int count = 0;
		count = session.selectOne("Ward-Mapper.selectSearchWardListCount",cri);
		return count;
	}

	@Override
	public WardVO selectWardByWNO(int wno) throws SQLException {
		WardVO ward = session.selectOne("Ward-Mapper.selectWardByWNO",wno);
		return ward;
	}

	@Override
	public int selectWardSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("Ward-Mapper.selectWardSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertWard(WardVO ward) throws SQLException {
		session.update("ward-Mapper.insertWard",ward);
	}

	@Override
	public void updateWard(WardVO ward) throws SQLException {
		session.update("ward-Mapper.updateWard",ward);
	}

	@Override
	public void deleteWard(int wno) throws SQLException {
		session.update("Ward-Mapper.deleteWard",wno);
	}

}
