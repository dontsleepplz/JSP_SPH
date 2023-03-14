package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ReservationVO;

public interface ReservationDAO {

	List<ReservationVO> selectSearchReservationList(SearchCriteria cri)throws SQLException;
	
	int selectSearchReservationListCount(SearchCriteria cri)throws SQLException;

	ReservationVO selectReservationByRNO(int rno)throws SQLException;
	
	int selectReservationSequenceNextValue()throws SQLException;
	
	void insertReservation(ReservationVO reservation)throws SQLException;
	
	void updateReservation(ReservationVO reservation)throws SQLException;
	
	void deleteReservation(int rno)throws SQLException;
}
