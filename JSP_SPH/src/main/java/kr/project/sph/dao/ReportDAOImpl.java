package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ReportVO;

public class ReportDAOImpl implements ReportDAO {

	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ReportVO> selectSearchReportList(SqlSession session, SearchCriteria cri) throws SQLException {

		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<ReportVO> reportLIst = null;
		RowBounds rowBounds = new RowBounds(offset, limit);

		reportLIst = session.selectList("Report-Mapper.selectSearchReportList", cri, rowBounds);

		return reportLIst;
	}

	@Override
	public int selectSearchReportListCount(SqlSession session, SearchCriteria cri) throws SQLException {
		int count = 0;
		count = session.selectOne("Report-Mapper.selectSearchReportListCount", cri);
		return count;
	}

	@Override
	public ReportVO selectReportByRno(SqlSession session, int rno) throws SQLException {
		ReportVO report = session.selectOne("Report-Mapper.selectReportByRno", rno);
		return report;
	}

	@Override
	public void insertReport(SqlSession session, ReportVO report) throws SQLException {
		session.insert("Report-Mapper.insertReport", report);
	}

	@Override
	public void updateReport(SqlSession session, ReportVO report) throws SQLException {
		session.update("Report-Mapper.updateReport", report);
	}

	@Override
	public void deleteReport(SqlSession session, int rno) throws SQLException {
		session.delete("Report-Mapper.deleteReport", rno);
	}

	@Override
	public void increaseViewCnt(SqlSession session, int rno) throws SQLException {
		session.update("Report-Mapper.increaseViewCnt", rno);
	}

	@Override
	public int selectReportSeqNext(SqlSession session) throws SQLException {
		int seq_num = session.selectOne("Rpoert-Mapper.selectReportSeqNext");
		return seq_num;
	}

}
