package com.cengenes.configuration.api.service.imp;

import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.cengenes.configuration.api.converter.ConfigurationDtoToEntityConverter;
import com.cengenes.configuration.api.converter.ConfigurationEntityToDtoConverter;
import com.cengenes.configuration.api.dto.ConfigurationDto;
import com.cengenes.configuration.api.entity.Configuration;
import com.cengenes.configuration.api.exception.EntityNotFoundException;
import com.cengenes.configuration.api.repository.ConfigurationRepository;
import com.cengenes.configuration.api.service.ConfigurationService;
import com.cengenes.configuration.api.validator.ConfigurationInfoValidator;

@Service
@Transactional
public class ConfigurationServiceImp implements ConfigurationService {

	@Autowired
	private ConfigurationRepository configurationRepository;

	@Autowired
	private ConfigurationEntityToDtoConverter entityToDtoConverter;

	@Autowired
	private ConfigurationDtoToEntityConverter dtoToEntityConverter;

	@Autowired
	private ConfigurationInfoValidator configurationInfoValidator;

	@Override
	public ConfigurationDto findOne(Long id) {

		Configuration configuration = configurationRepository.findOne(id);

		if (configuration == null)
			throw new EntityNotFoundException("entity.notFound");

		return entityToDtoConverter.convert(configuration);
	}

	@Override
	public Configuration save(ConfigurationDto entity) {
		configurationInfoValidator.validate(entity);
		return configurationRepository.save(dtoToEntityConverter.convert(entity));
	}

	@Override
	public List<ConfigurationDto> findActiveApplicationsByName(String applicationName) {

		List<Configuration> configurations = configurationRepository.findByApplicationNameAndIsActive(applicationName,
				Boolean.TRUE);

		if (configurations.isEmpty())
			throw new EntityNotFoundException("entity.notFound");

		return configurations.parallelStream().map(entityToDtoConverter::convert).collect(Collectors.toList());
	}

	@Override
	public ConfigurationDto update(Long id, ConfigurationDto request) {

		configurationInfoValidator.validate(request);

		Configuration existingEntity = configurationRepository.findOne(id);

		if (existingEntity == null)
			throw new EntityNotFoundException("entity.notFound");

		Configuration newEntity = dtoToEntityConverter.convert(request);

		newEntity.setId(existingEntity.getId());

		return entityToDtoConverter.convert((configurationRepository.save(newEntity)));
	}

	@Override
	public void delete(Long id) {

		Configuration existingEntity = configurationRepository.findOne(id);

		if (existingEntity == null)
			throw new EntityNotFoundException("entity.notFound");

		configurationRepository.delete(id);

	}

	@Override
	public Page<Configuration> findAll(Pageable pageable) {
		return configurationRepository.findAll(pageable);
	}

	@Override
	public List<ConfigurationDto> findAll() {
		return configurationRepository.findAll().parallelStream().map(entityToDtoConverter::convert)
				.collect(Collectors.toList());
	}

}
