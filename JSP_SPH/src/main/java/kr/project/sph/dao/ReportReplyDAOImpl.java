package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ReportReplyVO;

public class ReportReplyDAOImpl implements ReportReplyDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ReportReplyVO> selectReportReplyListPage(int rno, SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<ReportReplyVO> reportReplyList=null;
		
		RowBounds rowBounds=new RowBounds(offset,limit);
		
		reportReplyList=session.selectList("Reply-Mapper.selectReplyList",rno,rowBounds);
		
		return reportReplyList;
	}

	@Override
	public int countReportReply(int rno) throws SQLException {
		int count = 0;
		count = session.selectOne("ReportReply-Mapper.countReportReply",rno);
		return count;
	}
	@Override
	public int selectReportReplySeqNextValue() throws SQLException {
		int seq_num = session.selectOne("ReportReply-Mapper.selectReportReplySeqNextValue");
		return seq_num;
	}


	@Override
	public void insertReportReply(ReportReplyVO reportReply) throws SQLException {
		session.update("ReportReply-Mapper.insertReportReply",reportReply);
	}

	@Override
	public void updateReportReply(ReportReplyVO reportReply) throws SQLException {
		session.update("ReportReply-Mapper.updateReportReply",reportReply);
	}

	@Override
	public void deleteReportReply(int rrno) throws SQLException {
		session.update("ReportReply-Mapper.deleteReportReply",rrno);
		
	}

}
