package com.cengenes.configuration.api.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.cengenes.configuration.api.dto.ConfigurationDto;
import com.cengenes.configuration.api.entity.Configuration;

@Component
public class ConfigurationEntityToDtoConverter implements Converter<Configuration, ConfigurationDto> {

	@Override
	public ConfigurationDto convert(Configuration entity) {

		ConfigurationDto configurationDto = new ConfigurationDto();

		configurationDto.setName(entity.getName());
		configurationDto.setType(entity.getType());
		configurationDto.setValue(entity.getValue());
		configurationDto.setIsActive(entity.getIsActive());
		configurationDto.setApplicationName(entity.getApplicationName());

		return configurationDto;
	}

}
