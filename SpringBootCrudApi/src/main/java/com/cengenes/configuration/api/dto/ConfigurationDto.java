package com.cengenes.configuration.api.dto;

import javax.validation.constraints.NotNull;

public class ConfigurationDto {

	@NotNull
	private String name;

	@NotNull
	private String type;

	@NotNull
	private String value;

	@NotNull
	private Boolean isActive;

	@NotNull
	private String applicationName;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public String getApplicationName() {
		return applicationName;
	}

	public void setApplicationName(String applicationName) {
		this.applicationName = applicationName;
	}

	@Override
	public String toString() {
		return "ConfigurationDto [name=" + name + ", type=" + type + ", value=" + value + ", isActive=" + isActive
				+ ", applicationName=" + applicationName + "]";
	}

}
