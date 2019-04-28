package com.cengenes.configuration.api.dto;

import com.cengenes.configuration.api.types.RequestStatus;

/**
 * @author enes.acikoglu
 */
public class Response {

	private RequestStatus status;
	private String errorCode;
	private String errorMessage;

	public RequestStatus getStatus() {
		return status;
	}

	public void setStatus(RequestStatus status) {
		this.status = status;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}
