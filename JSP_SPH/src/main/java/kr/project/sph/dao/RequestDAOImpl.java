package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.RequestVO;

public class RequestDAOImpl implements RequestDAO {

	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<RequestVO> selectSearchRequestList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		
		List<RequestVO> requestList = null;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		requestList=session.selectList("Request-Mapper.selectSearchRequestList",cri,rowBounds);
		return requestList;
	}

	@Override
	public RequestVO selectRequestByRequestNum(int requestNum) throws SQLException {
		RequestVO request = session.selectOne("Request-Mapper.selectRequestByRequestNum",requestNum);
		return request;
	}

	@Override
	public int selectSearchRequestListCount(SearchCriteria cri) throws SQLException {
		int count = 0;
		count = session.selectOne("Request-Mapper.selectSearchRequestListCount",cri);
		return count;
	}

	@Override
	public int selectRequestSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("Request-Mapper.selectRequestSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertRequest(RequestVO request) throws SQLException {
		session.update("Request-Mapper.insertRequest",request);
	}

	@Override
	public void updateRequest(RequestVO request) throws SQLException {
		session.update("Request-Mapper.updateRequest",request);
	}

	@Override
	public void deleteRequest(int requestNum) throws SQLException {
		session.update("Request-Mapper.deleteRequest",requestNum);
	}

}
