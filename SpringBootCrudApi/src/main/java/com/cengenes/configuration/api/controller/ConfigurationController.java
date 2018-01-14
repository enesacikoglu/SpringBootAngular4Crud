package com.cengenes.configuration.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cengenes.configuration.api.conf.PageWrapper;
import com.cengenes.configuration.api.entity.Configuration;
import com.cengenes.configuration.api.repository.ConfigurationRepository;
import com.cengenes.configuration.api.service.ConfigurationService;

@Controller
public class ConfigurationController {

	@Autowired
	private ConfigurationRepository repository;

	@Autowired
	private ConfigurationService configurationService;

	@RequestMapping(path = { "/" }, method = RequestMethod.GET)
	public String index() {
		return "redirect:/configurations";
	}

	@RequestMapping(value = "/configurations", method = RequestMethod.GET)
	public String index(Model model, Pageable pageable) {

		Page<Configuration> configurationPage = configurationService.findAll(pageable);
		PageWrapper<Configuration> page = new PageWrapper<Configuration>(configurationPage, "/configurations");
		model.addAttribute("configurations", page.getContent());
		model.addAttribute("page", page);

		return "configurations";
	}

	@RequestMapping(value = "add")
	public String addConfiguration(Model model) {
		model.addAttribute("configuration", new Configuration());
		return "addConfiguration";
	}

	@RequestMapping(value = "/edit/{id}")
	public String editConfiguration(@PathVariable("id") Long configurationId, Model model) {
		model.addAttribute("configuration", repository.findOne(configurationId));
		return "editConfiguration";
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(Configuration configuration) {
		repository.save(configuration);
		return "redirect:/configurations";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String deleteStudent(@PathVariable("id") Long configurationId, Model model) {
		configurationService.delete(configurationId);
		return "redirect:/configurations";
	}

	@RequestMapping(value = "getconfigurations", method = RequestMethod.GET)
	public @ResponseBody List<Configuration> getConfigurations() {
		return repository.findAll();
	}
}
