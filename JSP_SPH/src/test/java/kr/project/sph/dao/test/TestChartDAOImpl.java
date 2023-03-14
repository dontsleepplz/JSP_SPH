package kr.project.sph.dao.test;

import java.util.Date;
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
import kr.project.sph.dao.ChartDAO;
import kr.project.sph.dto.ChartVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:kr/project/sph/context/root-context.xml")
@Transactional
public class TestChartDAOImpl {

	Date date = new Date();

	@Autowired
	private SqlSession session;

	@Resource(name = "chartDAO")
	ChartDAO chartDAO;

	@Test
	public void getchartList() throws Exception {
		SearchCriteria cri = new SearchCriteria();

		List<ChartVO> chartList = chartDAO.selectSearchChartList(cri);
		Assert.assertEquals(1, chartList.size());
	}

	@Test
	public void selectchartBYPNO() throws Exception {
		int cno = 1;

		System.out.println(chartDAO.selectChartByCNO(cno));

		System.out.println("test");

	}

	@Test
	public void testSelectchartListCount() throws Exception {
		SearchCriteria cri = new SearchCriteria();
		int count = chartDAO.selectSearchChartListCount(cri);

		Assert.assertNotNull(count);
	}

	@Test
	public void insertchart() throws Exception {
		ChartVO chart = new ChartVO();

		chart.setCno(12);
		chart.setCommonCode("1");
		chart.setCause("감기");
		chart.setWriter(1234);
		chart.setPno(1234);
		chart.setContent("test");
		chart.setDepartCode("1234");
		chart.setRegDate(date);

		chartDAO.insertChart(chart);
		ChartVO chart2 = chartDAO.selectChartByCNO(12);

		Assert.assertEquals(chart.getCno(), chart2.getCno());
	}

	@Test
	public void updatechart() throws Exception {
		int cno = 1;

		ChartVO chart = new ChartVO();

		chart.setCommonCode("1");
		chart.setCause("감기");
		chart.setWriter(1234);
		chart.setPno(1234);
		chart.setContent("test");
		chart.setDepartCode("1234");
		chart.setRegDate(date);

		
		
		chartDAO.updateChart(chart);

		ChartVO chart2 = chartDAO.selectChartByCNO(1);

		Assert.assertEquals(chart.getCno(), chart2.getCno());
	}

	@Test
	public void deletechart() throws Exception {
		
		ChartVO chart = chartDAO.selectChartByCNO(1);

		Assert.assertNotNull(chart);
		
		chartDAO.deleteChart(chart.getCno());
		ChartVO deletechart = chartDAO.selectChartByCNO(chart.getCno());
		Assert.assertNull(deletechart);

	}

}
