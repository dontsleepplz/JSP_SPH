package kr.project.sph.exception;

public class NotNumberException extends Exception {

	public NotNumberException() {
		super("숫자가 아닌 값이 입력되었음.");
	}
}
