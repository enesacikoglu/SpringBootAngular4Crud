package com.cengenes.configuration.api.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.cengenes.configuration.api.dto.ConfigurationDto;
import com.cengenes.configuration.api.entity.Configuration;

public interface ConfigurationService {

	Page<Configuration> findAll(Pageable pageable);

	ConfigurationDto findOne(Long id);

	List<ConfigurationDto> findActiveApplicationsByName(String applicationName);

	Configuration save(ConfigurationDto entity);

	ConfigurationDto update(Long id, ConfigurationDto request);

	void delete(Long id);

	List<ConfigurationDto> findAll();

}
