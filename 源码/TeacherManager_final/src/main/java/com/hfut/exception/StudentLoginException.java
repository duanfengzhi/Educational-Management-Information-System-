package com.hfut.exception;

@SuppressWarnings("serial")
public class StudentLoginException extends Exception {
	public StudentLoginException(Exception e) {
		super(e);
	}
	
	public StudentLoginException(String msg) {
		super(msg);
	}
}
