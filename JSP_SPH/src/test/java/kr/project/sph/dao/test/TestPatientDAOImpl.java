package kr.project.sph.dao.test;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dao.PatientDAO;
import kr.project.sph.dto.PatientVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:kr/project/sph/context/root-context.xml")
@Transactional
public class TestPatientDAOImpl {

	@Autowired
	private SqlSession session;

	@Resource(name = "patientDAO")
	PatientDAO patientDAO;

	@Test
	public void getPatientList() throws Exception {
		SearchCriteria cri = new SearchCriteria();

		List<PatientVO> patientList = patientDAO.selectSearchPatientList(cri);
		Assert.assertEquals(2, patientList.size());
	}

	@Test
	public void selectPatientBYPNO() throws Exception {
		int pno = 1;
		System.out.println(patientDAO.selectPatientByPNO(pno));

		System.out.println("test");

	}

	@Test
	public void testSelectPatientListCount() throws Exception {
		SearchCriteria cri = new SearchCriteria();
		int count = patientDAO.selectSearchPatientListCount(cri);
		
		Assert.assertNotNull(count);
	}
	

	@Test
	public void insertPatient()throws Exception{
		PatientVO patient = new PatientVO();
		
		patient.setAddress("12345");
		patient.setName("사은영");
		patient.setPhone("0102588855");
		patient.setPno(1111);
		patient.setSsn("123");
		
		patientDAO.insertPatient(patient);
		PatientVO patient2 = patientDAO.selectPatientByPNO(1111);
		
		Assert.assertEquals(patient.getPno(), patient2.getPno());
	}

	@Test
	public void updatePatient()throws Exception{
		int pno=1234;
		
		PatientVO patient = new PatientVO();
		
		patient.setAddress("test");
		patient.setName("test");
		patient.setPhone("12341234");
		patient.setSsn("123456");
		
		patientDAO.updatePatient(patient);
		
		PatientVO patient2 = patientDAO.selectPatientByPNO(1234);
		
		Assert.assertEquals(patient.getPno(), patient2.getPno());
	}


	@Test
	public void deletePatient()throws Exception{
		PatientVO patient = patientDAO.selectPatientByPNO(12345);
		
		Assert.assertNotNull(patient);
		patientDAO.deletePatient(patient.getPno());
		PatientVO deletePatient = patientDAO.selectPatientByPNO(patient.getPno());
		Assert.assertNull(deletePatient);
		
		
	}
}
