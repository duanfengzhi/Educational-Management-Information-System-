package com.hfut.exception;

@SuppressWarnings("serial")
public class ManagerLoginException extends Exception {
	public ManagerLoginException(Exception e) {
		super(e);
	}
	
	public ManagerLoginException(String msg) {
		super(msg);
	}
}
