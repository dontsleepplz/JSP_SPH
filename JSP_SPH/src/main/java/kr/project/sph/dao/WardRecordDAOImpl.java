package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.WardRecordVO;

public class WardRecordDAOImpl implements WardRecordDAO {

	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<WardRecordVO> selectSearchWardRecordList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<WardRecordVO> wardRecord = null;
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		wardRecord = session.selectList("WardRecord-Mapper.selectSearchWardRecordList",cri,rowBounds);
		return wardRecord;
	}

	@Override
	public int selectSearchWardRecordListCount(SearchCriteria cri) throws SQLException {
		int count = session.selectOne("WardRecord-Mapper.selectSearchWardRecordListCount",cri);
		return count;
	}

	@Override
	public WardRecordVO selectWardRecordByWardRecordNumber(int wardRecordNumber) throws SQLException {
		WardRecordVO wardRecord = session.selectOne("wardRecord-Mapper.selectWardRecordByWardRecordNumber",wardRecordNumber);
		return wardRecord;
	}

	@Override
	public int selectWardRecordSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("WardRecord-Mapper.selectWardRecordSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertWardRecord(WardRecordVO wardRecord) throws SQLException {
		session.update("WardRecord-Mapper.insertWardRecord",wardRecord);

	}

	@Override
	public void updateWardRecord(WardRecordVO wardRecord) throws SQLException {
		session.update("WardRecord-Mapper.insertWardRecord",wardRecord);

	}

	@Override
	public void deleteWardRecord(int wardRecordNumber) throws SQLException {
		session.update("WardRecord-Mapper.deleteWardRecord",wardRecordNumber);
	}

}
