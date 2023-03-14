package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.PatientVO;

public class PatientDAOImpl implements PatientDAO {

	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<PatientVO> selectSearchPatientList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		
		List<PatientVO> patientList = null;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		patientList = session.selectList("Patient-Mapper.selectSearchPatientList",cri,rowBounds);
		return patientList;
	}

	@Override
	public int selectSearchPatientListCount(SearchCriteria cri) throws SQLException {
		int count = 0;
		count=session.selectOne("Patient-Mapper.selectSearchPatientListCount",cri);
		return count;
	}

	@Override
	public PatientVO selectPatientByPNO(int pno) throws SQLException {
		PatientVO patient = session.selectOne("Patient-Mapper.selectPatientByPNO",pno);
		return patient;
	}

	@Override
	public void insertPatient(PatientVO patient) throws SQLException {
		session.update("Patient-Mapper.insertPatient",patient);
	}

	@Override
	public void updatePatient(PatientVO patient) throws SQLException {
		session.update("Patient-Mapper.updatePatient",patient);
	}

	@Override
	public void deletePatient(int pno) throws SQLException {
		session.update("Patient-Mapper.deletePatient",pno);
	}

}
