package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.project.sph.dto.ReportAttachVO;

public class ReportAttachDAOImpl implements ReportAttachDAO {

	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ReportAttachVO> selectReportAttachesByRNO(int rno) throws SQLException {
		List<ReportAttachVO> reportAttachList = session.selectList("ReportAttach-Mapper.selectReportAttachesByRNO",rno);
		return reportAttachList;
	}

	@Override
	public ReportAttachVO selectReportAttachByAANO(int aano) throws SQLException {
		ReportAttachVO reportAttach = session.selectOne("ReportAttach-Mapper.selectReportAttachByAANO",aano);
		return reportAttach;
	}

	@Override
	public void insertReportAttach(ReportAttachVO reportAttach) throws SQLException {
		session.update("ReportAttach-Mapper.insertReportAttach",reportAttach);
	}

	@Override
	public void deleteReportAttach(int aano) throws SQLException {
		session.update("ReportAttach-Mapper.deleteReportAttach",aano);
	}

	@Override
	public void deleteAllAttach(int rno) throws SQLException {
		session.update("ReportAttach-Mapper.deleteAllAttach",rno);
	}

}
