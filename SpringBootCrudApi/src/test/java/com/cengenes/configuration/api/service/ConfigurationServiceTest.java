package com.cengenes.configuration.api.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Matchers.any;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;

import com.cengenes.configuration.api.conf.BaseMockitoTest;
import com.cengenes.configuration.api.converter.ConfigurationDtoToEntityConverter;
import com.cengenes.configuration.api.converter.ConfigurationEntityToDtoConverter;
import com.cengenes.configuration.api.dto.ConfigurationDto;
import com.cengenes.configuration.api.entity.Configuration;
import com.cengenes.configuration.api.repository.ConfigurationRepository;
import com.cengenes.configuration.api.service.imp.ConfigurationServiceImp;
import com.cengenes.configuration.api.validator.ConfigurationInfoValidator;

public class ConfigurationServiceTest extends BaseMockitoTest {

   @InjectMocks
   private ConfigurationServiceImp configurationService;

   @Mock
   public ConfigurationRepository configurationRepository;

   @Mock
   private ConfigurationEntityToDtoConverter entityToDtoConverter;

   @Mock
   private ConfigurationDtoToEntityConverter dtoToEntityConverter;

   @Mock
   private ConfigurationInfoValidator configurationInfoValidator;

   public Configuration entity;

   @Before
   public void before() {

      entity = new Configuration();
      entity.setApplicationName("Trendyol");
      entity.setName("Time Out");
      entity.setType("Integer");
      entity.setValue("6161");
      entity.setIsActive(true);
   }

   @Test
   public void should_return_one_configuration() {

      when(configurationRepository.findOne(1L)).thenReturn(entity);
      when(entityToDtoConverter.convert(entity)).thenReturn(createSampleConfigurationLoginformation());

      ConfigurationDto foundedConfiguration = configurationService.findOne(1L);

      assertThat(foundedConfiguration).isNotNull();
      assertThat(foundedConfiguration.getApplicationName()).isEqualTo(entity.getApplicationName());
      assertThat(foundedConfiguration.getName()).isNotNull();
      assertThat(foundedConfiguration.getName()).isEqualTo(entity.getName());
      assertThat(foundedConfiguration.getType()).isEqualTo(entity.getType());
      assertThat(foundedConfiguration.getValue()).isEqualTo(entity.getValue());
      assertThat(foundedConfiguration.getIsActive()).isEqualTo(entity.getIsActive());
   }

   @Test
   public void should_save_configuration() {

      when(configurationRepository.save(entity)).thenReturn(entity);
      when(dtoToEntityConverter.convert(any(ConfigurationDto.class))).thenReturn(entity);

      Configuration foundedConfiguration = configurationService.save(createSampleConfigurationLoginformation());

      assertThat(foundedConfiguration).isNotNull();
      assertThat(foundedConfiguration.getApplicationName()).isEqualTo(entity.getApplicationName());
      assertThat(foundedConfiguration.getName()).isNotNull();
      assertThat(foundedConfiguration.getName()).isEqualTo(entity.getName());
      assertThat(foundedConfiguration.getType()).isEqualTo(entity.getType());
      assertThat(foundedConfiguration.getValue()).isEqualTo(entity.getValue());
      assertThat(foundedConfiguration.getIsActive()).isEqualTo(entity.getIsActive());
   }

   @Test
   public void should_find_active_application_configration() {

      final String APP_NAME = "Trendyol";

      List<Configuration> mockEntityList = new ArrayList<>();
      mockEntityList.add(createSampleConfigurationEntity());

      when(configurationRepository.findByApplicationNameAndIsActive(APP_NAME, Boolean.TRUE)).thenReturn(mockEntityList);
      when(entityToDtoConverter.convert(any(Configuration.class)))
            .thenReturn(createSampleConfigurationLoginformation());

      List<ConfigurationDto> foundedConfigurationList = configurationService.findActiveApplicationsByName(APP_NAME);

      assertThat(foundedConfigurationList).isNotNull();
      assertThat(foundedConfigurationList.size()).isEqualTo(1);
      assertThat(foundedConfigurationList.get(0).getName()).isEqualTo(entity.getName());
      assertThat(foundedConfigurationList.get(0).getType()).isEqualTo(entity.getType());
      assertThat(foundedConfigurationList.get(0).getValue()).isEqualTo(entity.getValue());
      assertThat(foundedConfigurationList.get(0).getIsActive()).isEqualTo(true);
   }

   @Test
   public void should_find_all_configurations() {

      Configuration entity_I = createSampleConfigurationEntity();
      entity_I.setApplicationName("X");

      Configuration entity_II = createSampleConfigurationEntity();
      entity_II.setApplicationName("Y");

      List<Configuration> configurationList = new ArrayList<>();
      configurationList.add(entity_I);
      configurationList.add(entity_II);

      when(configurationRepository.findAll()).thenReturn(configurationList);

      List<ConfigurationDto> returnedList = configurationService.findAll();
      assertThat(returnedList).isNotNull();
      assertThat(returnedList.size()).isEqualTo(2);

   }

   private final ConfigurationDto createSampleConfigurationLoginformation() {

      ConfigurationDto request = new ConfigurationDto();
      request.setApplicationName("Trendyol");
      request.setName("Time Out");
      request.setType("Integer");
      request.setValue("6161");
      request.setIsActive(true);

      return request;
   }

   private final Configuration createSampleConfigurationEntity() {

      Configuration entity = new Configuration();
      entity.setApplicationName("Trendyol");
      entity.setName("Time Out");
      entity.setType("Integer");
      entity.setValue("6161");
      entity.setIsActive(true);

      return entity;
   }
}
