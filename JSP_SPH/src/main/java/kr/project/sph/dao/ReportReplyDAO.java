package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ReportReplyVO;

public interface ReportReplyDAO {

	List<ReportReplyVO> selectReportReplyListPage(int rno, SearchCriteria cri) throws SQLException;

	int countReportReply(int rno) throws SQLException;

	int selectReportReplySeqNextValue()throws SQLException;
	
	void insertReportReply(ReportReplyVO reportReply) throws SQLException;

	void updateReportReply(ReportReplyVO reportReply) throws SQLException;

	void deleteReportReply(int rrno) throws SQLException;
}
