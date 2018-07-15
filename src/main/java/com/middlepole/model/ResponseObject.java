package com.middlepole.model;

import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude
public class ResponseObject {
	
	private String resultCode;
	private String description;
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
