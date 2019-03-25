package com.hfut.exception;

@SuppressWarnings("serial")
public class TeacherLoginException extends Exception {
	public TeacherLoginException(Exception e) {
		super(e);
	}
	
	public TeacherLoginException(String msg) {
		super(msg);
	}
}
