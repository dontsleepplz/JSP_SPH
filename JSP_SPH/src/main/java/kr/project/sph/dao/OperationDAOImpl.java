package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.OperationVO;
import kr.project.sph.dto.ScheduleVO;

public class OperationDAOImpl implements OperationDAO {

	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<OperationVO> selectSearchOperationList(SearchCriteria cri) throws SQLException {
		
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<OperationVO> operationList =null;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		operationList = session.selectList("Operation-Mapper.selectSearchOperationList",cri,rowBounds); 
		return operationList;
	}

	@Override
	public int selectSearchOperationListCount(SearchCriteria cri) throws SQLException {
		int count = 0;
		count = session.selectOne("Operation-Mapper.selectSearchOperationListCount",cri);
		return count;
	}

	@Override
	public OperationVO selectOperationByONO(int ono) throws SQLException {
		OperationVO operation = session.selectOne("Operation-Mapper.selectOperationByONO",ono);
		return operation;
	}

	@Override
	public int selectOperationSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("Operation-Mapper.selectOperationSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertOperation(OperationVO operation) throws SQLException {
		session.update("Operation-Mapper.insertOperation",operation);
	}

	@Override
	public void updateOperation(OperationVO operation) throws SQLException {
		session.update("Operation-Mapper.updateOperation",operation);
	}

	@Override
	public void deleteOperation(int ono) throws SQLException {
		session.update("Operation-Mapper.deleteOperation",ono);

	}

}
