package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.dto.ReportAttachVO;

public interface ReportAttachDAO {

	List<ReportAttachVO> selectReportAttachesByRNO(int rno) throws SQLException;

	ReportAttachVO selectReportAttachByAANO(int aano) throws SQLException;

	void insertReportAttach(ReportAttachVO reportAttach) throws SQLException;

	void deleteReportAttach(int aano) throws SQLException;

	void deleteAllAttach(int rno)throws SQLException;


}
