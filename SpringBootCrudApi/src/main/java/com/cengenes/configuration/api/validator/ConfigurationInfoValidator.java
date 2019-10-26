package com.cengenes.configuration.api.validator;

import org.springframework.stereotype.Component;

import com.cengenes.configuration.api.dto.ConfigurationDto;
import com.cengenes.configuration.api.exception.MissingMandatoryFieldException;

@Component
public class ConfigurationInfoValidator {

	public void validate(ConfigurationDto configurationDto) {

		if (configurationDto == null || configurationDto.getName() == null
				|| configurationDto.getApplicationName() == null || configurationDto.getType() == null
				|| configurationDto.getValue() == null || configurationDto.getIsActive() == null)

			throw new MissingMandatoryFieldException("missing.field");

	}

}
