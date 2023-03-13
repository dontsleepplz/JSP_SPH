package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.DepartVO;

public class DepartDAOImpl implements DepartDAO{
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<DepartVO> selectSearchDepartList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<DepartVO> departList = null;
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		departList = session.selectList("Depart-Mapper.selectSearchDepartList",cri,rowBounds);
		return departList;
	}

	@Override
	public int selectSearchDepartListCount(SearchCriteria cri) throws SQLException {
		int count = 0;
		count = session.selectOne("Depart-Mapper.selectSearchDepartListCount",cri);
		return count;
	}

	@Override
	public DepartVO selectDepartByCode(String dCode) throws SQLException {
		DepartVO depart = session.selectOne("Depart-Mapper.selectDepartByCode",dCode);
		return depart;
	}

	@Override
	public void insertDepart(DepartVO depart) throws SQLException {
		session.update("Depart-Mapper.insertDepart",depart);
	}

	@Override
	public void deleteDepart(String dCode) throws SQLException {
		session.update("Depart-Mapper.deleteDepart",dCode);
	}

	@Override
	public void updateDepart(DepartVO depart) throws SQLException {
		session.update("Depart-Mapper.updateDepart",depart);
	}

}
