package com.cengenes.configuration.api.exception;

public class EntityNotFoundException extends DynamicConfigurationApiException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1595331078979818402L;

	public EntityNotFoundException(String message) {
		super(message);
	}

	public EntityNotFoundException(String message, Throwable cause) {
		super(message, cause);
	}
}