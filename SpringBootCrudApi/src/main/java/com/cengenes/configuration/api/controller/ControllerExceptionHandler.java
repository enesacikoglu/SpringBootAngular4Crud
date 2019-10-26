package com.cengenes.configuration.api.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.cengenes.configuration.api.dto.Response;
import com.cengenes.configuration.api.exception.EntityNotFoundException;
import com.cengenes.configuration.api.exception.MissingMandatoryFieldException;
import com.cengenes.configuration.api.types.RequestStatus;

/**
 * @author enes.acikoglu
 */
@RestControllerAdvice
public class ControllerExceptionHandler {

	private MessageSource messageSource;

	public ControllerExceptionHandler(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	@ExceptionHandler(EntityNotFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public Response handleNotFoundException(HttpServletRequest request, Exception exception) {
		return createLocalizedResponse(exception);
	}

	@ExceptionHandler(MissingMandatoryFieldException.class)
	@ResponseStatus(HttpStatus.NOT_ACCEPTABLE)
	public Response handleMissingFieldException(HttpServletRequest request, Exception exception) {
		return createLocalizedResponse(exception);
	}

	/**
	 * Parse exception that is configured with localization ENG/TR languages.
	 * 
	 * @param exception
	 * @return Custom Response Message.
	 */
	private Response createLocalizedResponse(Exception exception) {

		Response response = new Response();

		Locale locale = LocaleContextHolder.getLocale();
		String message = messageSource.getMessage(exception.getMessage(), null, locale);
		String[] split = message.split(";");
		response.setErrorCode(split[0]);
		response.setErrorMessage(split[1]);

		response.setStatus(RequestStatus.FAILURE);
		return response;
	}
}