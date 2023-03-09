package kr.project.sph.command;

import java.util.Date;

import kr.project.sph.exception.NotNumberException;

public class SearchCriteria {

	private SearchDateCriteria dateCri = new SearchDateCriteria();

	private int page = 1;
	private int perPageNum = 10;
	private String searchType = "";
	private String keyword = "";
	private Date searchStartDate;
	private Date searchEndDate;
	private String stringStartDate;
	private String stringEndDate;

	private int startRowNum = 0;

	public SearchCriteria() {
	}

	public SearchCriteria(int page, int perPageNum, String searchType, String keyword, SearchDateCriteria datecri) {
		parseSearchCriteria(page, perPageNum, searchType, keyword, datecri);

	}

	public SearchCriteria(int page, int perPageNum, String searchType, String keyword) {
		parseSearchCriteria(page, perPageNum, searchType, keyword);
	}

	public SearchCriteria(String page, String perPageNum, String searchType, String keyword, SearchDateCriteria datecri)
			throws NotNumberException {
		try {

			parseSearchCriteria(Integer.parseInt(page), Integer.parseInt(perPageNum), searchType, keyword, datecri);

		} catch (NumberFormatException e) {
			throw new NotNumberException();
		}
	}

	public SearchCriteria(String page, String perPageNum, String searchType, String keyword)
			throws NotNumberException {
		try {

			parseSearchCriteria(Integer.parseInt(page), Integer.parseInt(perPageNum), searchType, keyword);

		} catch (NumberFormatException e) {
			throw new NotNumberException();
		}
	}

	private void parseSearchCriteria(int page, int perPageNum, String searchType, String keyword,
			SearchDateCriteria datecri) {

		this.page = page;
		this.perPageNum = perPageNum;
		this.searchType = searchType;
		this.keyword = keyword;
		setDate(datecri);
		setStartRowNum();
		

	}

	private void parseSearchCriteria(int page, int perPageNum, String searchType, String keyword) {

		this.page = page;
		this.perPageNum = perPageNum;
		this.searchType = searchType;
		this.keyword = keyword;

		setStartRowNum();

	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if (page > 0) {
			this.page = page;
		}
		setStartRowNum();
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		if (perPageNum > 0 && perPageNum < 101) {
			this.perPageNum = perPageNum;
		}
		setStartRowNum();
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public SearchDateCriteria getDateCri() {
		return dateCri;
	}

	public Date getSearchStartDate() {
		return searchStartDate;
	}

	public Date getSearchEndDate() {
		return searchEndDate;
	}

	private void setDate(SearchDateCriteria datecri) {
		this.searchStartDate = datecri.getSearchStartDateToDate();
		this.searchEndDate = datecri.getSearchEndDateToDate();
		this.stringStartDate = datecri.getSearchStartDate();
		this.stringEndDate = datecri.getSearchEndDate();
		this.dateCri = datecri;
	}
	
	
	private void setStartRowNum() {
		this.startRowNum = (this.page - 1) * this.perPageNum;
	}

	public int getStartRowNum() {
		return this.startRowNum;
	}

	public String getStringStartDate() {
		return stringStartDate;
	}

	public String getStringEndDate() {
		return stringEndDate;
	}
	
	

}
