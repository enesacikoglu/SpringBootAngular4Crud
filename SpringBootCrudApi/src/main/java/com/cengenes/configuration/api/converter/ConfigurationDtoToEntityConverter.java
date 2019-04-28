package com.cengenes.configuration.api.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.cengenes.configuration.api.dto.ConfigurationDto;
import com.cengenes.configuration.api.entity.Configuration;

@Component
public class ConfigurationDtoToEntityConverter implements Converter<ConfigurationDto, Configuration> {

	@Override
	public Configuration convert(ConfigurationDto dto) {

		Configuration entity = new Configuration();

		entity.setName(dto.getName());
		entity.setType(dto.getType());
		entity.setValue(dto.getValue());
		entity.setIsActive(dto.getIsActive());
		entity.setApplicationName(dto.getApplicationName());

		return entity;
	}

}
