package kr.project.sph.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.project.sph.command.PageMaker;
import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dao.NoticeDAO;
import kr.project.sph.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService {

	private NoticeDAO noticeDAO;
	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	@Override
	public Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException {
		List<NoticeVO> noticeList = noticeDAO.selectSearchNoticeList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(noticeDAO.selectSearchNoticeListCount(cri));
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		dataMap.put("noticeList", noticeList);
		dataMap.put("pageMaker",pageMaker);
		
		return dataMap;
	}

	@Override
	public NoticeVO getNoticeNno(int nno) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNno(nno);
		return notice;
	}

	@Override
	public void registNotice(NoticeVO notice) throws SQLException {
		int nno= noticeDAO.selectNoticeSequenceNextValue();
		notice.setNno(nno);
		noticeDAO.insertNotice(notice);

	}

	@Override
	public void modifyNotice(NoticeVO notice) throws SQLException {
		noticeDAO.updateNotice(notice);

	}

	@Override
	public void removeNotice(int nno) throws SQLException {
		noticeDAO.deleteNotice(nno);

	}

}
