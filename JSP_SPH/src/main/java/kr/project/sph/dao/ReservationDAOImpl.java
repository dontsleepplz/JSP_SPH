package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.OperationVO;
import kr.project.sph.dto.ReservationVO;

public class ReservationDAOImpl implements ReservationDAO {

	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ReservationVO> selectSearchReservationList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		
		List<ReservationVO> reservationList = null;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		reservationList = session.selectList("Reservation-Mapper.selectSearchReservationList",cri,rowBounds); 
		return reservationList;
	}

	@Override
	public int selectSearchReservationListCount(SearchCriteria cri) throws SQLException {
		int count = 0;
		count = session.selectOne("Reservation-Mapper.selectSearchReservationListCount",cri);
		return count;
	}

	@Override
	public ReservationVO selectReservationByRNO(int rno) throws SQLException {
		ReservationVO reservation = session.selectOne("Reservation-Mapper.selectReservationByRNO",rno);
		return reservation;
	}

	@Override
	public int selectReservationSequenceNextValue() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insertReservation(ReservationVO reservation) throws SQLException {
		session.update("Reservation-Mapper.insertReservation",reservation);
	}

	@Override
	public void updateReservation(ReservationVO reservation) throws SQLException {
		session.update("Reservation-Mapper.updateReservation",reservation);
	}

	@Override
	public void deleteReservation(int rno) throws SQLException {
		session.update("Reservation-Mapper.deleteReservation",rno);

	}

}
