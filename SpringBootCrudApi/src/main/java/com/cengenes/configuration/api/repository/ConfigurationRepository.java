package com.cengenes.configuration.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cengenes.configuration.api.entity.Configuration;

public interface ConfigurationRepository extends JpaRepository<Configuration, Long> {

	List<Configuration> findByApplicationNameAndIsActive(String applicationName, Boolean isActive);

}
