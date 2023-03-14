package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.PatientVO;

public interface PatientDAO {

	List<PatientVO> selectSearchPatientList(SearchCriteria cri)throws SQLException;
	
	int selectSearchPatientListCount(SearchCriteria cri)throws SQLException;
	
	PatientVO selectPatientByPNO(int pno)throws SQLException;
	
	void insertPatient(PatientVO patient)throws SQLException;
	
	void updatePatient(PatientVO patient)throws SQLException;

	void deletePatient(int pno)throws SQLException;
}
