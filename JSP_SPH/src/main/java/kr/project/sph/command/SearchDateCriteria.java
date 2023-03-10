package kr.project.sph.command;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import kr.project.sph.exception.NotFormatStringException;

public class SearchDateCriteria {
	
	private SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private SimpleDateFormat ymdFormat = new SimpleDateFormat("yyyymmdd");
	private String hyphenStartDate;
	private String hyphenEndDate;
	private String ymdStartDate;
	private String ymdEndDate;
	private Date searchEnd;
	private Date searchStart;
	
	
	//Calendar클래스 이용해서 특정날짜 지정 가능

	public SearchDateCriteria() {}

	public SearchDateCriteria(String startDate, String endDate) throws NotFormatStringException, ParseException {
		try {
			if (startDate.length() == 19 && endDate.length() == 19) {
				parseHypenDateCriteria(startDate, endDate);
			}else if(startDate.length() == 8 && endDate.length() == 8 ){
				parseYMDDateCriteria(startDate, endDate);
			}else {
				NotFormatStringException e = new NotFormatStringException();
				throw e;
			}
		} catch (NotFormatStringException e) {
			System.out.println("SearchDateCriteria.StringDate error : " + e.getMessage());
			e.printStackTrace();
		}
	}

	public SearchDateCriteria(Date startDate, Date endDate) throws ParseException {
		parseHypenDateCriteria(DateToHypenString(startDate), DateToHypenString(endDate));
		parseYMDDateCriteria(DateToYMDString(startDate), DateToYMDString(endDate));
	}
	
	
	private void parseHypenDateCriteria(String startDate, String endDate) throws ParseException {
		this.hyphenStartDate = startDate;
		this.hyphenEndDate = endDate;
		this.searchEnd = HypenStringToDate(startDate);
		this.searchStart = HypenStringToDate(endDate);
	}
	
	private void parseYMDDateCriteria(String stringStartDate, String stringEndDate ) throws ParseException {
		this.ymdStartDate = stringStartDate;
		this.ymdEndDate = stringEndDate;
		this.searchEnd = YMDStringToDate(stringStartDate);
		this.searchStart = YMDStringToDate(stringEndDate);
	}
	
	
	
	
	private String DateToHypenString(Date date) {
		String stringDate = format.format(date);
		return stringDate;
	}
	
	private String DateToYMDString(Date date) {
		String stringDate = ymdFormat.format(date);
		return stringDate;
	}
	
	
	
	
	private Date HypenStringToDate(String stringDate) throws ParseException{
		try {
			Date date = format.parse(stringDate);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	private Date YMDStringToDate(String stringDate) throws ParseException{
		try {
			Date date = ymdFormat.parse(stringDate);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
			throw e;
		}
	}

	public String getHyphenStartDate() {
		return hyphenStartDate;
	}

	public String getHyphenEndDate() {
		return hyphenEndDate;
	}

	public String getYmdStartDate() {
		return ymdStartDate;
	}

	public String getYmdEndDate() {
		return ymdEndDate;
	}

	public Date getSearchEnd() {
		return searchEnd;
	}

	public Date getSearchStart() {
		return searchStart;
	}

	
	
	
	
	
	
	
	
	
	

}
