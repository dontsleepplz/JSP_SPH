package kr.project.sph.command;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import kr.project.sph.exception.NotFormatStringException;

public class SearchDateCriteria {
	
	private SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	private String searchStartDate;
	private String searchEndDate;

//	private String year;
//	private String month;
//	private String day;
//	private String hour;
//	private String minute;
//	private String second;

	public SearchDateCriteria() {
	}

	public SearchDateCriteria(int startDate, int endDate) {
		// 생각중
	}

	public SearchDateCriteria(String startDate, String endDate) throws NotFormatStringException {
		try {
			if (startDate.length() == 19 && endDate.length() == 19) {
				parseSearchDateCriteria(startDate, endDate);
			} else {
				NotFormatStringException e = new NotFormatStringException();
				throw e;
			}
		} catch (NotFormatStringException e) {
			System.out.println("SearchDateCriteria.StringDate error : " + e.getMessage());
			e.printStackTrace();
		}
	}

	public SearchDateCriteria(Date startDate, Date endDate) {

		parseSearchDateCriteria(DateToString(startDate), DateToString(endDate));
		
	}
	

	private String DateToString(Date date) {
		String stringDate = format.format(date);
		return stringDate;
	}
	
	private Date StringToDate(String stringDate) throws ParseException{
		try {
			Date date = format.parse(stringDate);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
			throw e;
		}
	}

	private void parseSearchDateCriteria(String startDate, String endDate) {
		this.searchStartDate = startDate;
		this.searchEndDate = endDate;
	}
	
	
	
	
	public String getSearchStartDate() {
		return searchStartDate;
	}

	public String getSearchEndDate() {
		return searchEndDate;
	}
	
	
	//
	
	public Date getSearchStartDateToDate() {
		Date date = null;
		try {
			date = StringToDate(searchStartDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	
	public Date getSearchEndDateToDate() {
		Date date = null;
		try {
			date = StringToDate(searchEndDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	

}
