package com.cengenes.configuration.api.controller;

import static org.assertj.core.api.Assertions.assertThat;
import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.MatcherAssert.assertThat;

import java.util.List;

import org.hamcrest.MatcherAssert;
import org.hamcrest.Matchers;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.cengenes.configuration.api.conf.BaseIT;
import com.cengenes.configuration.api.dto.ConfigurationDto;
import com.cengenes.configuration.api.dto.Response;
import com.cengenes.configuration.api.entity.Configuration;
import com.cengenes.configuration.api.repository.ConfigurationRepository;
import com.cengenes.configuration.api.types.RequestStatus;

public class ConfigurationControllerIT extends BaseIT {

	@Autowired
	TestRestTemplate testRestTemplate;

	@Autowired
	ConfigurationRepository confgurationRepository;

	@Test
	public void should_create_configuration() throws Exception {
		// Given
		ConfigurationDto request = this.createSampleConfigurationLoginformation();

		// When
		ResponseEntity<Configuration> responseEntity = testRestTemplate.postForEntity("/api/ang/configuration/",
				request, Configuration.class);

		// Then
		assertThat(responseEntity).isNotNull();
		assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.CREATED);

		Configuration configurationResponse = responseEntity.getBody();
		assertThat(configurationResponse).isNotNull();
		assertThat(configurationResponse.getId()).isNotNull();
	}

	@Test
	public void should_return_all_configurations() {

		confgurationRepository.save(new Configuration());
		confgurationRepository.save(new Configuration());
		confgurationRepository.save(new Configuration());

		ResponseEntity<List> entityList = testRestTemplate.getForEntity("/api/ang/configurations", List.class);

		assertThat(entityList).isNotNull();
		assertThat(entityList.getStatusCode()).isEqualTo(HttpStatus.OK);
		assertThat(entityList.getBody().size()).isGreaterThan(2);
	}

	@Test
	public void should_post_return_406_for_missing_fields() throws Exception {

		// given
		ConfigurationDto request = new ConfigurationDto();

		// when
		ResponseEntity<Response> responseEntity = testRestTemplate.postForEntity("/api/ang/configuration", request,
				Response.class);

		// then
		assertThat(responseEntity.getBody().getStatus(), equalTo(RequestStatus.FAILURE));
		assertThat(responseEntity.getBody().getErrorCode(), equalTo("2"));
		assertThat(responseEntity.getBody().getErrorMessage(), equalTo("Zorunlu alanlar bos gecilemez"));
		assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.NOT_ACCEPTABLE);
		MatcherAssert.assertThat(responseEntity.getStatusCode(), Matchers.equalTo(HttpStatus.NOT_ACCEPTABLE));

	}

	@Test
	public void should_get_return_404_for_invalid_application_name() throws Exception {

		// given
		final String WRONG_APP_NAME = "Invalid App";

		// when
		ResponseEntity<Response> responseEntity = testRestTemplate
				.getForEntity("/api/ang/configuration/appname/" + WRONG_APP_NAME, Response.class);

		// then
		assertThat(responseEntity.getBody().getStatus(), equalTo(RequestStatus.FAILURE));
		assertThat(responseEntity.getBody().getErrorCode(), equalTo("1"));
		assertThat(responseEntity.getBody().getErrorMessage(), equalTo("Belirtilen nesne sistemde bulunmuyor"));
		assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.NOT_FOUND);
		MatcherAssert.assertThat(responseEntity.getStatusCode(), Matchers.equalTo(HttpStatus.NOT_FOUND));

	}

	private final ConfigurationDto createSampleConfigurationLoginformation() {

		ConfigurationDto request = new ConfigurationDto();
		request.setApplicationName("Trendyol");
		request.setName("Time Out");
		request.setType("Integer");
		request.setValue("6161");
		request.setIsActive(false);

		return request;
	}

}
