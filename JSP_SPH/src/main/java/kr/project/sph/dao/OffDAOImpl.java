package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.OffVO;

public class OffDAOImpl implements OffDAO{
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<OffVO> selectSearchOffList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<OffVO> offList = null;
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		offList = session.selectList("Off-Mapper.selectSearchOffList", cri,rowBounds );
		
		return offList;
	}

	@Override
	public void deleteOff(OffVO off) throws SQLException {
		session.update("Off-Mapper.insertOff", off);
		
	}

	@Override
	public void deleteOff(int offNum) throws SQLException {
		session.update("Off-Mapper.deleteOff", offNum);
		
	}

}
