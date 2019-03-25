package com.hfut.exception;

@SuppressWarnings("serial")
public class ExTeacherLoginException extends Exception {
	public ExTeacherLoginException(Exception e) {
		super(e);
	}
	
	public ExTeacherLoginException(String msg) {
		super(msg);
	}
}
