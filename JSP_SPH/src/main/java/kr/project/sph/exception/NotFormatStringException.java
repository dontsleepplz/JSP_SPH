package kr.project.sph.exception;

public class NotFormatStringException extends Exception{
	public NotFormatStringException(){
		super("yyyy-MM-dd HH:mm:ss 형식으로 작성해야합니다.");
	}

}
