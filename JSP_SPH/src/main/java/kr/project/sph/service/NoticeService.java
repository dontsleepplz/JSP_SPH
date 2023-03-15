package kr.project.sph.service;

import java.sql.SQLException;
import java.util.Map;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.NoticeVO;

public interface NoticeService {
	
	Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException;
	
	NoticeVO getNoticeNno(int nno) throws SQLException;
	
	void registNotice(NoticeVO notice) throws SQLException;
	
	void modifyNotice(NoticeVO notice) throws SQLException;
	
	void removeNotice(int nno) throws SQLException;

}
