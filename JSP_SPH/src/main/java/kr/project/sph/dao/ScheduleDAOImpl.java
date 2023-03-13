package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ScheduleVO;
import kr.project.sph.dto.ToDoVO;

public class ScheduleDAOImpl implements ScheduleDAO {

	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ScheduleVO> selectSearchScheduleList(SearchCriteria cri) throws SQLException {
		
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<ScheduleVO> scheduleList =null;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		scheduleList = session.selectList("Schedule-Mapper.selectSearchScheduleList",cri,rowBounds); 
		return scheduleList;
	}

	@Override
	public int selectSearchScheduleListCount(SearchCriteria cri) throws SQLException {
		int count =0;
		count=session.selectOne("Schedule-Mapper.selectSearchScheduleListCount",cri);
		return count;
	}

	@Override
	public ScheduleVO selectScheduleBySNO(int sno) throws SQLException {
		ScheduleVO schedule = session.selectOne("Schedule-Mapper.selectScheduleBySNO",sno);
		return schedule;
	}
	

	@Override
	public int selectScheduleSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("Schedule-Mapper.selectScheduleSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertSchedule(ScheduleVO schedule) throws SQLException {
		session.update("Schedule-Mapper.insertSchedule",schedule);

	}

	@Override
	public void updateSchedule(ScheduleVO schedule) throws SQLException {
		session.update("Schedule-Mapper.updateSchedule",schedule);
	}

	@Override
	public void deleteSchedule(int sno) throws SQLException {
		session.update("Schedule-Mapper.deleteSchedule",sno);

	}

}
