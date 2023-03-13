package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ReportVO;


public interface ReportDAO {
	
	List<ReportVO> selectSearchReportList(SqlSession session,SearchCriteria cri) throws SQLException;

	int selectSearchReportListCount(SqlSession session,SearchCriteria cri) throws SQLException;

	ReportVO selectReportByRno(SqlSession session,int rno) throws SQLException;

	void insertReport(SqlSession session,ReportVO report) throws SQLException;

	void updateReport(SqlSession session,ReportVO report) throws SQLException;

	void deleteReport(SqlSession session,int rno) throws SQLException;

	// viewcnt 증가
	void increaseViewCnt(SqlSession session,int rno) throws SQLException;

	// report_seq.nextval 가져오기
	int selectReportSeqNext(SqlSession session) throws SQLException;
}

