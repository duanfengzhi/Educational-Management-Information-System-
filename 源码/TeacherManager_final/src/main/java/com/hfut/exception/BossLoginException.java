package com.hfut.exception;

@SuppressWarnings("serial")
public class BossLoginException extends Exception {
	public BossLoginException(Exception e) {
		super(e);
	}
	
	public BossLoginException(String msg) {
		super(msg);
	}
}
