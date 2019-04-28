package com.cengenes.configuration.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cengenes.configuration.api.entity.Configuration;
import org.springframework.data.jpa.repository.Query;

public interface ConfigurationRepository extends JpaRepository<Configuration, Long> {

	List<Configuration> findByApplicationNameAndIsActive(String applicationName, Boolean isActive);

	@Query(value = "DELETE FROM configuration WHERE configuration.id = ?1", nativeQuery = true)
	void delete(Long configuration);
}
