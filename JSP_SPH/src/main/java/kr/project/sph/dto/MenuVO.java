package kr.project.sph.dto;

public class MenuVO {

	private String mCode;
	private String mName;
	private String mUrl;
	private int menuLevel;
	private String upCode;
	private int isNav;
	private String jText;
	private String mIcon;

	public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmUrl() {
		return mUrl;
	}

	public void setmUrl(String mUrl) {
		this.mUrl = mUrl;
	}

	public int getMenuLevel() {
		return menuLevel;
	}

	public void setMenuLevel(int menuLevel) {
		this.menuLevel = menuLevel;
	}

	public String getUpCode() {
		return upCode;
	}

	public void setUpCode(String upCode) {
		this.upCode = upCode;
	}

	public int getIsNav() {
		return isNav;
	}

	public void setIsNav(int isNav) {
		this.isNav = isNav;
	}

	public String getjText() {
		return jText;
	}

	public void setjText(String jText) {
		this.jText = jText;
	}

	public String getmIcon() {
		return mIcon;
	}

	public void setmIcon(String mIcon) {
		this.mIcon = mIcon;
	}

}
