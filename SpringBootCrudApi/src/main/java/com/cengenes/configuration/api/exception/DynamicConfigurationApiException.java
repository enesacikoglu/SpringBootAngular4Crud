package com.cengenes.configuration.api.exception;

/**
 * @author enes.acikoglu
 */
public abstract class DynamicConfigurationApiException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1256671219899520653L;

	public DynamicConfigurationApiException(String message) {
		super(message);
	}

	public DynamicConfigurationApiException(String message, Throwable cause) {
		super(message, cause);
	}
}
