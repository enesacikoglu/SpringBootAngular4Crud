# DynamicConfReader

<<<<<<< HEAD

# Angular 4 Frontend

This project was generated to connect  [Angular CLI](https://github.com/angular/angular-cli) version 1.4.6.

## DynamicConfigurationService

RestFul Service uses following Technologies:

* Spring-boot
* Hibernate
* JaCoCo
* H2 DB
* Swagger2
* Thymeleaf

## DynamicConfigurationClient

- This project was generated to connect configuration service via Rest Api.You can import it to your project as .jar

Sample run client :

```java
new ConfigurationReader(final String applicationName, final String connectionURL,final Long refreshTimeIntervalInMs)
```
```java
int timeOut = configurationReader.getValue("TimeOut", Integer.class);
```
- applicationName: Name of the application.
- connectionURL: Configuration service url [http://localhost:8080/].
- refreshTimeIntervalInMs : Refresh time ro check configuration changes.

## Build

Run mvn clean install

## Run 

First run DynamicConfigurationService then run DynamicConfigurationClient using via "java -jar jarname.jar" or  on IDE.

Add/Remove/Edit Configurations on http://localhost:8080/ 

## Running Integration Test

Run mvn clean verify -P integration-test 

## Running Service Unit Tests

Run mvn clean verify -P all-tests

## Documentation

To get more look at http://localhost:8080/swagger-ui.html#/
