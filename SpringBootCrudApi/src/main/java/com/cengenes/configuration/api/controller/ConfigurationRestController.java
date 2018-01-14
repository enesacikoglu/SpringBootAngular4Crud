package com.cengenes.configuration.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.cengenes.configuration.api.dto.ConfigurationDto;
import com.cengenes.configuration.api.service.ConfigurationService;

@RestController
@RequestMapping("/api")
public class ConfigurationRestController {

	@Autowired
	private ConfigurationService configurationService;

	@GetMapping("/{id}")
	public ResponseEntity<?> getConfigurationById(@PathVariable Long id) {

		return new ResponseEntity<>(configurationService.findOne(id), HttpStatus.OK);
	}

	@PostMapping("/configuration")
	public ResponseEntity<?> saveConfiguration(@RequestBody ConfigurationDto request) {

		return new ResponseEntity<>(configurationService.save(request), HttpStatus.CREATED);
	}

	@GetMapping("/configurations")
	public ResponseEntity<?> findAllConfigurations() {

		return new ResponseEntity<>(configurationService.findAll(), HttpStatus.OK);
	}

	@GetMapping("/configuration/appname/{appname}")
	public ResponseEntity<?> getAllActiveConfigurationsByApplicationName(@PathVariable String appname) {

		return new ResponseEntity<>(configurationService.findActiveApplicationsByName(appname), HttpStatus.OK);
	}

	@PutMapping("/configuration/{id}")
	public ResponseEntity<?> updateConfiguration(@PathVariable Long id, @RequestBody ConfigurationDto request,
			BindingResult result) {

		ConfigurationDto update = configurationService.update(id, request);

		return new ResponseEntity<>(update, HttpStatus.OK);
	}

	@DeleteMapping("/configuration/{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void delete(@PathVariable Long id) {
		configurationService.delete(id);
	}

}
