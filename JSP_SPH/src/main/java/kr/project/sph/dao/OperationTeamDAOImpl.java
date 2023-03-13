package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.OperationTeamVO;

public class OperationTeamDAOImpl implements OperationTeamDAO {

	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<OperationTeamVO> selectSearchOperationTeamList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<OperationTeamVO> operationList =null;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		operationList = session.selectList("Operation-Mapper.selectSearchOperationTeamList",cri,rowBounds); 
		return operationList;
	}

	@Override
	public int selectSearchOperationTeamListCount(SearchCriteria cri) throws SQLException {
		int count =0;
		count = session.selectOne("OperationTeam-Mapper.selectSearchOperationTeamListCount",cri);
		return count;
	}

	@Override
	public OperationTeamVO selectOperationTeamByOTNO(int otno) throws SQLException {
		OperationTeamVO operationTeam = session.selectOne("OperationTeam-Mapper.selectOperationTeamByOTNO",otno);
		return operationTeam;
	}

	@Override
	public int selectOperationTeamSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("OperationTeam-Mapper.selectOperationTeamSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertOperationTeam(OperationTeamVO operationTeam) throws SQLException {
		session.update("OperationTeam-Mapper.insertOperationTeam",operationTeam);
	}

	@Override
	public void updateOperationTeam(OperationTeamVO operationTeam) throws SQLException {
		session.update("OperationTeam-Mapper.updateOperationTeam",operationTeam);
	}

	@Override
	public void deleteOperationTeam(int otno) throws SQLException {
		session.update("OperationTeam-Mapper.deleteOperationTeam",otno);
	}

}
