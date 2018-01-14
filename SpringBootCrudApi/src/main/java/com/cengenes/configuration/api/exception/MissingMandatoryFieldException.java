package com.cengenes.configuration.api.exception;

public class MissingMandatoryFieldException extends DynamicConfigurationApiException {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1901236013226031468L;

	public MissingMandatoryFieldException(String message) {
		super(message);
	}

	public MissingMandatoryFieldException(String message, Throwable cause) {
		super(message, cause);
	}
}