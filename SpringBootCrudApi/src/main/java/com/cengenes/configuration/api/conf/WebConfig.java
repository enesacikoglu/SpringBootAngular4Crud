package com.cengenes.configuration.api.conf;

import java.util.List;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.web.PageableHandlerMethodArgumentResolver;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @author enes.acikoglu
 */
@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {

   @Override
   public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
      PageableHandlerMethodArgumentResolver resolver = new PageableHandlerMethodArgumentResolver();
      resolver.setFallbackPageable(new PageRequest(0, 5));
      argumentResolvers.add(resolver);
      super.addArgumentResolvers(argumentResolvers);
   }

}